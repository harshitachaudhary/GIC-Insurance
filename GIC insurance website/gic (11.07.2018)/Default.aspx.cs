using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            //Menu M = (Menu)this.Master.FindControl("NavigationMenu");
            //foreach (MenuItem item in M.Items)
            //{
            //    if (item.Text == "Default")//Replace Home with the page name
            //    {
            //        item.Selected = true;
            //    }
            //}




           

            show_about();

            Rptservices.DataSource = bind_Services();
            Rptservices.DataBind();

            Rptteam.DataSource = bind_team();
            Rptteam.DataBind();

            //Rptgallery.DataSource = bind_gallery();
            //Rptgallery.DataBind();

            Rpttesti.DataSource = bind_testi();
            Rpttesti.DataBind();

            Rptclientlogos.DataSource = bind_clientlogos();
            Rptclientlogos.DataBind();

            //Rptcounter.DataSource = bind_count();
            //Rptcounter.DataBind();

            //Rptmainproducts.DataSource = bind_Product();
            //Rptmainproducts.DataBind();


        }
    }

    public DataTable bind_team()
    {
        SqlCommand cmd = new SqlCommand("select * from tblteam", con);
        cmd.CommandType = CommandType.Text;
        // cmd.Parameters.AddWithValue("@var", 2);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public DataTable bind_Services()
    {
        SqlCommand cmd = new SqlCommand("select service_name,service_image from tblservice_details", con);
        cmd.CommandType = CommandType.Text;
        // cmd.Parameters.AddWithValue("@var", 2);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
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

  

    public void show_about()
    {
        SqlDataAdapter da = new SqlDataAdapter("select heading1,heading2,content from tblallpages where typee='homeabout'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            lblabtheading1.Text = dt.Rows[0]["heading1"].ToString();
            lblabtheading2.Text = dt.Rows[0]["heading2"].ToString();
            lblhomeabt.Text = dt.Rows[0]["content"].ToString();
        }

    }
}