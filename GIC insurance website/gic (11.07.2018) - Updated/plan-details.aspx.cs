using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class plan_details : System.Web.UI.Page
{
    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["plan-name"] != null)
            {
                // lblquerystring.Text = Request.QueryString["service_name"].ToString();
                show_insurance_details(Request.QueryString["plan-name"].ToString());               
            }
        }
    }

    public void show_insurance_details(string planName)
    {

        SqlDataAdapter da = new SqlDataAdapter("select banner_heading1,banner_heading2,banner_image,plan_name,plan_content,plan_image from tblplan_details where plan_name= '" + planName + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            lblplanhng1.Text = dt.Rows[0]["banner_heading1"].ToString();
            lblplanhng2.Text = dt.Rows[0]["banner_heading2"].ToString();
            imgplanbanner.ImageUrl = dt.Rows[0]["banner_image"].ToString();
            lblplanname.Text = Request.QueryString["plan-name"].ToString();
            imgservice.ImageUrl = dt.Rows[0]["plan_image"].ToString();
            lblplancontent.Text = dt.Rows[0]["plan_content"].ToString();
        }

    }
}