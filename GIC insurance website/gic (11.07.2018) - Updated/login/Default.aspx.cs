using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class job_login_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                string col = Request.QueryString["coll"].ToString();
                if (col == "colle")
                {
                    //Session.Remove("colluserid");
                    Session.Abandon();
                    Session.RemoveAll();
                    Session.Clear();
                    Session["gic"] = null; Session["gic"] = ""; Session["gic"] = string.Empty;
                    //  Response.Redirect(Request.Url.AbsoluteUri);
                }
                else { }
            }
            catch (NullReferenceException)
            {
                Session.Abandon();
                Session["gic"] = null; Session["gic"] = ""; Session["gic"] = string.Empty;
            }
            finally
            {
                Session.Abandon();
                Session["gic"] = null; Session["gic"] = ""; Session["gic"] = string.Empty;
            }
            Session.Abandon();
            Session["gic"] = null; Session["gic"] = ""; Session["gic"] = string.Empty;
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand xxcmd = new SqlCommand("proc_login", con);
            xxcmd.CommandType = CommandType.StoredProcedure;
            xxcmd.Parameters.AddWithValue("@userid", username.Value.Trim());
            xxcmd.Parameters.AddWithValue("@pass", password.Value.Trim());
            xxcmd.Parameters.AddWithValue("@var", 1);
            SqlDataReader drr = xxcmd.ExecuteReader();
            if (drr.Read())
            {
                Session["gic"] = username.Value.Trim();
                Response.Redirect("../Admin_Pannel/default.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Incorrect Id or Password');", true);
            }
        }
        catch (NullReferenceException) { }
        finally { con.Close(); }
    }
}