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

        SqlCommand cmd = new SqlCommand("proc_tbllic", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@var", "selid");
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ddleditpremiumtype.SelectedValue = dt.Rows[0]["premium_type"].ToString();
            txteditname.Text = dt.Rows[0]["name"].ToString();
            txteditpolicyno.Text = dt.Rows[0]["Policy_no"].ToString();            
            txteditpremium.Text = dt.Rows[0]["Premium"].ToString();
            txteditplan.Text = dt.Rows[0]["_Plan"].ToString();
            txteditterm.Text = dt.Rows[0]["Term"].ToString();
            txteditppt.Text = dt.Rows[0]["PPT"].ToString();
            txteditmobileno.Text = dt.Rows[0]["Mobile_no"].ToString();
            txteditmaturity.Text = dt.Rows[0]["Maturity"].ToString();
            txteditsbpayment.Text = dt.Rows[0]["S_B_Payment"].ToString();          
        }

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_tbllic", con);
            cmd.CommandType = CommandType.StoredProcedure;          
            cmd.Parameters.AddWithValue("@name", txteditname.Text);
            cmd.Parameters.AddWithValue("@Policy_no", txteditpolicyno.Text);
            cmd.Parameters.AddWithValue("@Premium", txteditpremium.Text);
            cmd.Parameters.AddWithValue("@_Plan", txteditplan.Text);
            cmd.Parameters.AddWithValue("@Term", txteditterm.Text);
            cmd.Parameters.AddWithValue("@PPT", txteditppt.Text);
            cmd.Parameters.AddWithValue("@Maturity", txteditmaturity.Text);
            cmd.Parameters.AddWithValue("@S_B_Payment", txteditsbpayment.Text);
            cmd.Parameters.AddWithValue("@Mobile_no", txteditmobileno.Text);
            cmd.Parameters.AddWithValue("@premium_type", ddleditpremiumtype.SelectedItem.Value.ToString());
            cmd.Parameters.AddWithValue("@var", "upda");
            cmd.Parameters.AddWithValue("@id", Request.QueryString["id_x"].ToString());
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Successfully Updated');", true);
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

