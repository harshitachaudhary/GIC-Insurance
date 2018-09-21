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
        if(!IsPostBack)
        {
            if (Session["gic"] != null)
            {
                Show_Feature("1");
                
            }
            else { Response.Redirect("../login/Default.aspx"); }
            
          
        }
    }
    public void Show_Feature(string id)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tblaboutheading where id=@id", con);
        cmd.CommandType=CommandType.Text;
        cmd.Parameters.AddWithValue("@id", id);
        SqlDataReader drr=cmd.ExecuteReader();
        if(drr.Read())
        {
            txtheading1.Text = drr["heading"].ToString();
            Editor1.Content = drr["heading_content"].ToString();
        }
        con.Close();
    }
   
    protected void Button1x_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update tblaboutheading set heading=@heading,heading_content=@heading_content where id=@id", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", "1");
            cmd.Parameters.AddWithValue("@heading", txtheading1.Text);
            cmd.Parameters.AddWithValue("@heading_content", Editor1.Content);
            int i = cmd.ExecuteNonQuery();
            if(i > 0)
            {
                
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('About Heading Successfully Updated');", true);
            }
        }
        catch { }
        finally { con.Close(); }
    }

} 