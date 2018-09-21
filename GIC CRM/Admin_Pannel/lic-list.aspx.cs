using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class nyksi_panel_banner : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    string strfile1 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["gic"] != null)
            {


                grdGic.DataSource = bind_grid();
                grdGic.DataBind();
                
            }
            else { Response.Redirect("../login/Default.aspx"); }
        }
    }
    public DataTable bind_grid()
    {
        SqlCommand cmd = new SqlCommand("proc_tbllic", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@var", "sel");
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);       
        return dt;
    }


    protected void lbdelete_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtn = sender as LinkButton;
        GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        string id = grdGic.DataKeys[gvrow.RowIndex].Value.ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("proc_tbllic", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@var", "del");
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Successfully Deleted');location.href='lic-list.aspx'", true);
        }
        con.Close();
    }
    protected void BtnSearchbyname_Click(object sender, EventArgs e)
    {
        string s = "select * from tbllic where name like '%" + txtsearchbyname.Text + "%'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        grdGic.DataSource = dt;
        grdGic.DataBind();
    }
    protected void Btnsearchbypolicyno_Click(object sender, EventArgs e)
    {

        string s = "select * from tbllic where Policy_no like '%" + txtsearchbypolicyno.Text + "%'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        grdGic.DataSource = dt;
        grdGic.DataBind();
    }
}