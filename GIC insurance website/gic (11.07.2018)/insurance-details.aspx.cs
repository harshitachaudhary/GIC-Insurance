using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class insurance_details : System.Web.UI.Page
{
    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["service-name"] != null)
            {
               // lblquerystring.Text = Request.QueryString["service_name"].ToString();
                show_insurance_details(Request.QueryString["service-name"].ToString());
                Rptplan.DataSource = bind_plan(Request.QueryString["service-name"].ToString());
                Rptplan.DataBind();
            }
        }

    }

    public void show_insurance_details(string serviceName)
    {
        
        SqlDataAdapter da = new SqlDataAdapter("select banner_heading1,banner_heading2,service_banner,service_name,service_image,service_content from tblservice_details where service_name= '" + serviceName + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            lblservicehng1.Text = dt.Rows[0]["banner_heading1"].ToString();
            lblservicehng2.Text = dt.Rows[0]["banner_heading2"].ToString();
            imgbanner.ImageUrl = dt.Rows[0]["service_banner"].ToString();
            lblservicename.Text = Request.QueryString["service-name"].ToString();
            imgservice.ImageUrl = dt.Rows[0]["service_image"].ToString();
            lblservicecontent.Text = dt.Rows[0]["service_content"].ToString();            
        }

    }

    public DataTable bind_plan(string serviceName)
    {
        SqlCommand cmd = new SqlCommand("select DISTINCT * from tblplan_details where service_name='" + serviceName + "'", con);
        cmd.CommandType = CommandType.Text;
        // cmd.Parameters.AddWithValue("@var", 2);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}