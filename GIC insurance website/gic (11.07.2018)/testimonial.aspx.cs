using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class testimonial : System.Web.UI.Page
{
    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //show_about();

            RpttestiLEFT.DataSource = bind_testiLEFT();
            RpttestiLEFT.DataBind();

            RpttestiRight.DataSource = bind_testiRIGHT();
            RpttestiRight.DataBind();
        }
    }

    public DataTable bind_testiLEFT()
    {
        SqlCommand cmd = new SqlCommand("SELECT  TOP 40 PERCENT * FROM tbltesti ORDER BY id DESC", con);
        cmd.CommandType = CommandType.Text;
        // cmd.Parameters.AddWithValue("@var", 2);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public DataTable bind_testiRIGHT()
    {
        SqlCommand cmd = new SqlCommand("SELECT  TOP 50 PERCENT * FROM tbltesti ORDER BY id ASC", con);
        cmd.CommandType = CommandType.Text;
        // cmd.Parameters.AddWithValue("@var", 2);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }



}