using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class contact_us : System.Web.UI.Page
{
    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show_address();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand xcmd = new SqlCommand("proc_tblquery", con);
        xcmd.CommandType = CommandType.StoredProcedure;
        xcmd.Parameters.AddWithValue("@var", 1);
        xcmd.Parameters.AddWithValue("@name", txtname.Value);
        xcmd.Parameters.AddWithValue("@email", txtemail.Value);
        xcmd.Parameters.AddWithValue("@phone", txtphone.Value);
        xcmd.Parameters.AddWithValue("@address", txtaddress.Value);
        xcmd.Parameters.AddWithValue("@query", txtareaquery.Value);
        int i = xcmd.ExecuteNonQuery();
        if (i > 0)
        {
            //lblquery.Text = "Query Submitted, We will back you soon!!!!";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Query Submitted, We will back you soon!!!!');location.href='contact-us.aspx'", true);

        }
        else
        {
            lblquery.Text = "Something Wrong!!!!";

        }

        txtname.Value = null;
        txtemail.Value = null;
        txtphone.Value = null;
        txtareaquery.Value = null;
    }

    public void show_address()
    {
        SqlDataAdapter da = new SqlDataAdapter("select address,phone_no,whatsapp_no,email from tblAddress where id=1", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            lbladdress.Text = dt.Rows[0]["address"].ToString();
            lblemail.Text = dt.Rows[0]["email"].ToString();
            lblphnoe.Text = dt.Rows[0]["phone_no"].ToString();
            lblwhatsappno.Text = dt.Rows[0]["whatsapp_no"].ToString();

        }

    }
}