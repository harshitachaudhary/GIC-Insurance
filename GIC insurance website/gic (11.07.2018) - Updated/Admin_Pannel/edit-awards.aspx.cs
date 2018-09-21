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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["gic"] != null)
            {


                if (Request.QueryString["id_x"] != null)
                {
                    show_ALL(Request.QueryString["id_x"].ToString());
                }
            }
            else { Response.Redirect("../login/Default.aspx"); }
        }
    }
    public void show_ALL(string id)
    {

        SqlCommand cmd = new SqlCommand("select *from tblawards where id=@id", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@id", id);
        // cmd.Parameters.AddWithValue("@var",5);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            txteditawardname.Text = dt.Rows[0]["award_name"].ToString();
            txteditawarddesc.Text = dt.Rows[0]["award_desc"].ToString();
            Image1.ImageUrl = dt.Rows[0]["award_image"].ToString();
        }

    }

    protected void ntnAddCategory_Click(object sender, EventArgs e)
    {
        try
        {
            ClassDate s = new ClassDate();
            string datee = s.date();

            if (FileUpload1.HasFile)
            {
                //==== Get file name without its extension.
                string fileNameWithoutExtension1 = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
                string fileExtension1 = Path.GetExtension(FileUpload1.FileName);
                fileNameWithoutExtension1 = datee + fileNameWithoutExtension1;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension1 + fileExtension1));
                strfile1 = "~/productimg/" + fileNameWithoutExtension1 + fileExtension1;
            }
            else { strfile1 = Image1.ImageUrl; }

            con.Open();
            SqlCommand cmd = new SqlCommand("update tblawards set award_name=@award_name,award_desc=@award_desc,award_image=@award_image where id=@id", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@award_name", txteditawardname.Text);
            cmd.Parameters.AddWithValue("@award_desc", txteditawarddesc.Text);
            cmd.Parameters.AddWithValue("@award_image", strfile1);
            cmd.Parameters.AddWithValue("@id", Request.QueryString["id_x"].ToString());
            //cmd.Parameters.AddWithValue("@var", 4);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Award Updated Successfully ');location.href='edit-awards.aspx?id_x=" + Request.QueryString["id_x"].ToString() + "'", true);
            }
        }
        catch { }
        finally { con.Close(); }
    }



}