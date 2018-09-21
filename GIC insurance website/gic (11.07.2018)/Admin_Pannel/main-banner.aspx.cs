using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class nyksi_panel_banner : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    string strfile1 = "";
    string strfile2 = "";
    string strfile3 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["gic"] != null)
            {



                if (Request.QueryString["id_x"] != null)
                {

                }
            }
            else { Response.Redirect("../login/Default.aspx"); }
        }
    }


    protected void ntnAddCategory_Click(object sender, EventArgs e)
    {
        try
        {
            string fileupload1 = Path.GetFileName(FileUpload1.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/image/" + fileupload1));
            strfile1 = "~/image/" + fileupload1;

            string fileupload2 = Path.GetFileName(FileUpload2.FileName);
            FileUpload2.PostedFile.SaveAs(Server.MapPath("~/image/" + fileupload2));
            strfile2 = "~/image/" + fileupload2;

            string fileupload3 = Path.GetFileName(FileUpload3.FileName);
            FileUpload3.PostedFile.SaveAs(Server.MapPath("~/image/" + fileupload3));
            strfile3 = "~/image/" + fileupload3;

            con.Open();
            SqlCommand cmd = new SqlCommand("update tblbanner set banner_1=@banner_1,banner_2=@banner_2,banner_3=@banner_3 where id=@id", con);
            cmd.CommandType = CommandType.Text;
            //cmd.Parameters.AddWithValue("@heading1", txtheading1.Text);
            //cmd.Parameters.AddWithValue("@heading2", txtheading2.Text);
            cmd.Parameters.AddWithValue("@banner_1", strfile1);
            cmd.Parameters.AddWithValue("@banner_2", strfile2);
            cmd.Parameters.AddWithValue("@banner_3", strfile3);
            cmd.Parameters.AddWithValue("@id", 1);
            //cmd.Parameters.AddWithValue("@var", 4);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Main Banner Updated Successfully ');location.href='main-banner.aspx'", true);
            }
        }
        catch { }
        finally { con.Close(); }
    }

    public DataTable bind_grid()
    {
        SqlCommand cmd = new SqlCommand("select * from tblbanner", con);
        cmd.CommandType = CommandType.Text;
        // cmd.Parameters.AddWithValue("@var", 2);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

}