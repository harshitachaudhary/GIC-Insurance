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

        SqlCommand cmd = new SqlCommand("proc_tblgictax", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@var", "selid");
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            txteditvehicleno.Text = dt.Rows[0]["vehicle_no"].ToString();
            txteditchassisno.Text = dt.Rows[0]["chassis_no"].ToString();
            txteditname.Text = dt.Rows[0]["name"].ToString();
            txteditexpirydate.Value = dt.Rows[0]["Expiry_date"].ToString();
            txteditrs.Text = dt.Rows[0]["rupees"].ToString();
            txteditmobileno.Text = dt.Rows[0]["mobile_no"].ToString();
            
            
                                           
        }

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_tblgictax", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@vehicle_no", txteditvehicleno.Text);
            cmd.Parameters.AddWithValue("@chassis_no", txteditchassisno.Text);
            cmd.Parameters.AddWithValue("@name", txteditname.Text);
            cmd.Parameters.AddWithValue("@expiry_date", txteditexpirydate.Value);
            cmd.Parameters.AddWithValue("@rupees", txteditrs.Text);
            cmd.Parameters.AddWithValue("@mobile_no", txteditmobileno.Text);                 
            cmd.Parameters.AddWithValue("@id", Request.QueryString["id_x"].ToString());
            cmd.Parameters.AddWithValue("@var", "upda");
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

