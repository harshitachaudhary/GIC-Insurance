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

            }
            else { Response.Redirect("../login/Default.aspx"); }


        }
    }
    protected void btnsubmit_Click1(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_tbllic", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@premium_type", ddlpremiumtype.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@Policy_no", txtpolicyno.Text);
            cmd.Parameters.AddWithValue("@Premium", txtpremium.Text);
            cmd.Parameters.AddWithValue("@_Plan", txtplan.Text);
            cmd.Parameters.AddWithValue("@Term", txtterm.Text);
            cmd.Parameters.AddWithValue("@PPT", txtppt.Text);
            cmd.Parameters.AddWithValue("@Mobile_no", txtmobileno.Text);
            cmd.Parameters.AddWithValue("@Maturity", txtmaturity.Text);
            cmd.Parameters.AddWithValue("@S_B_Payment", txtsbpayment.Text);           
            cmd.Parameters.AddWithValue("@var", "ins");
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Successfully Submited');location.href='insert-lic-details.aspx'", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Some Error Occurred!!!');", true);
            }
        }
        catch { }
        finally { con.Close(); }
        
    }
}

