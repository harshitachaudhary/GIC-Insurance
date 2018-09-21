using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.IO;

public partial class nyksi_panel_Upload_Main_Product : System.Web.UI.Page
{
    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    DataTable dt = new DataTable();
    string strfile1 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["gic"] != null)
            {
                Show_about_content("1");

            }
            else { Response.Redirect("../login/Default.aspx"); }


        }
    }
    public void Show_about_content(string id)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tblourpromise where id=@id", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@id", 1);
        SqlDataReader drr = cmd.ExecuteReader();
        if (drr.Read())
        {
            txtheading1.Text = drr["heading"].ToString();
            txtname.Text = drr["name"].ToString();
            txtdesig.Text = drr["desig"].ToString();
            txtcomname.Text = drr["company_name"].ToString();
            Editorpara2.Content = drr["para_2"].ToString();
            Editorpara1.Content = drr["para_1"].ToString();
        }
        con.Close();
    }

    protected void Button1x_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update tblourpromise set heading=@heading,para_1=@para_1,para_2=@para_2,name=@name,desig=@desig,company_name=@company_name where id=@id", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", "1");
            cmd.Parameters.AddWithValue("@heading", txtheading1.Text);
            cmd.Parameters.AddWithValue("@para_1", Editorpara1.Content);
            cmd.Parameters.AddWithValue("@para_2", Editorpara2.Content);
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@desig", txtdesig.Text);
            cmd.Parameters.AddWithValue("@company_name", txtcomname.Text);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {

                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Content Updated Successfully');", true);
            }
        }
        catch { }
        finally { con.Close(); }
    }

}