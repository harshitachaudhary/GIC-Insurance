using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class about_us : System.Web.UI.Page
{
    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show_aboutheading();
            show_promise();
            show_aboutus();
            Rpttesti.DataSource = bind_testi();
            Rpttesti.DataBind();

            Rptclientlogos.DataSource = bind_clientlogos();
            Rptclientlogos.DataBind();
        }
    }

    public DataTable bind_testi()
    {
        SqlCommand cmd = new SqlCommand("select * from tbltesti", con);
        cmd.CommandType = CommandType.Text;
        // cmd.Parameters.AddWithValue("@var", 2);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public DataTable bind_clientlogos()
    {
        SqlCommand cmd = new SqlCommand("select * from tblclientlogos", con);
        cmd.CommandType = CommandType.Text;
        // cmd.Parameters.AddWithValue("@var", 2);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void show_aboutheading()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tblaboutheading where id=1", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            lblabtheading1.Text = dt.Rows[0]["heading"].ToString();
            lblabtheading2.Text = dt.Rows[0]["heading_content"].ToString();
        }

    }

    public void show_aboutus()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tblaboutus where id=1", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            lblaboutheading.Text = dt.Rows[0]["heading"].ToString();
            lblabtpara1.Text = dt.Rows[0]["para_1"].ToString();
            lblabtpara2.Text = dt.Rows[0]["para_2"].ToString();
        }

    }

    public void show_promise()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tblourpromise where id=1", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            lblpromisehng.Text = dt.Rows[0]["heading"].ToString();
            lblpromisepara1.Text = dt.Rows[0]["para_1"].ToString();
            lblpromisepara2.Text = dt.Rows[0]["para_2"].ToString();
            lbldesig.Text = dt.Rows[0]["name"].ToString();
            lblname.Text = dt.Rows[0]["desig"].ToString();
            lblcomname.Text = dt.Rows[0]["company_name"].ToString();
        }

    }

   
 
}