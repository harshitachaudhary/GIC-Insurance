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
                Show_Feature("1");
                

            }
            else { Response.Redirect("../login/Default.aspx"); }


        }
    }
    public void Show_Feature(string id)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("proc_tblAddress", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id", 1);
        cmd.Parameters.AddWithValue("@var", 2);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            txtaddress.Text = dt.Rows[0]["address"].ToString();
            txtphone.Text = dt.Rows[0]["phone_no"].ToString();
            txtemail.Text = dt.Rows[0]["email"].ToString();
            txtwhatsapp.Text = dt.Rows[0]["whatsapp_no"].ToString();           
        }
        con.Close();
    }

    protected void Button1x_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_tblAddress", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", 1);
            cmd.Parameters.AddWithValue("@address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@phone_no", txtphone.Text);
            cmd.Parameters.AddWithValue("@whatsapp_no", txtwhatsapp.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@var", 1);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {

                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Successfully Updated');", true);
            }
        }
        catch { }
        finally { con.Close(); }
    }

   

        //public void Show_Feature(string id)
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select icon,heading,content from tblfeatures where topic=@topic", con);
        //    cmd.CommandType = CommandType.Text;
        //    cmd.Parameters.AddWithValue("@id", 1);
        //    SqlDataReader drr = cmd.ExecuteReader();
        //    if (drr.Read())
        //    {
        //        TxtMobile.Text = drr["Phone"].ToString();
        //        txtemail.Text = drr["Email"].ToString();
        //        Editor1.Content = drr["Address"].ToString();
        //    }
        //    con.Close();
    
}