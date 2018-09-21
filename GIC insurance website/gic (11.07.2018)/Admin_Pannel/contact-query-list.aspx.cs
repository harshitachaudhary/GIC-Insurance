using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.IO;

public partial class Admin_Pannel_contact_query : System.Web.UI.Page
{
    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["gic"] != null)
            {

                BindQuery();

            }
            else { Response.Redirect("../login/Default.aspx"); }


        }
    }


    public void BindQuery()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tblquery order by id desc", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        //return dt;

        grdquery.DataSource = dt;
        grdquery.DataBind();
    }

    protected void lb_delete_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtn = sender as LinkButton;
        //getting particular row linkbutton
        GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        //getting userid of particular row
        string id = grdquery.DataKeys[gvrow.RowIndex].Value.ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("proc_tblquery", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@var", 3);
        cmd.Parameters.AddWithValue("@id", id);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        if (result == 1)
        {
            BindQuery();
            //Displaying alert message after successfully deletion of user
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('Query Deleted Successfully')", true);
        }
    }

}