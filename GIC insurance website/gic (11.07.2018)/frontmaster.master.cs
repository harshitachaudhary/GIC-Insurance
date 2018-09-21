using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class frontmaster : System.Web.UI.MasterPage
{
    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show_ftr_about_us();
            show_address();
            Rptlogoheader.DataSource = bind_logo();
            Rptlogoheader.DataBind();
            Rptlogofooter.DataSource = bind_logo();
            Rptlogofooter.DataBind();
            Rptservices.DataSource = bind_menuservices();
            Rptservices.DataBind();
            rptserviceftr.DataSource = bind_menuservices();
            rptserviceftr.DataBind();
            
        }

    }

    public void show_ftr_about_us()
    {
        SqlDataAdapter da = new SqlDataAdapter("select content from tblftrabout where id=1", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            lblftrabt.Text = dt.Rows[0]["content"].ToString();

        }

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
            lblemail2.Text = dt.Rows[0]["email"].ToString();
            lblphone.Text = dt.Rows[0]["phone_no"].ToString();
            lblwhatsappno.Text = dt.Rows[0]["whatsapp_no"].ToString();

        }

    }

    public DataTable bind_logo()
    {
        SqlCommand cmd = new SqlCommand("select content from tblallpages where typee='logo'", con);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public DataTable bind_menuservices()
    {
        SqlCommand cmd = new SqlCommand("select distinct service_name from tblservice_details", con);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}
