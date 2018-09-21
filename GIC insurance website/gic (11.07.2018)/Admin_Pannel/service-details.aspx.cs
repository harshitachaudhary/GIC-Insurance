using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.IO;

public partial class nyksi_panel_Upload_Main_Product : System.Web.UI.Page
{
    string strr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    AllCodes all = new AllCodes();
    DataTable dt = new DataTable();
    string strfile1 = "";
    string strfile2 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["gic"] != null)
            {
                //service_name();
            }
            else { Response.Redirect("../login/Default.aspx"); }


        }
    }

    //public void Show_Feature(string topic)
    //{
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("select * from tblservice_details where service_name=@service_name", con);
    //    cmd.CommandType = CommandType.Text;
    //    cmd.Parameters.AddWithValue("@topic", topic);
    //    SqlDataReader drr = cmd.ExecuteReader();
    //    if (drr.Read())
    //    {
    //        Txticon.Text = drr["icon"].ToString();
    //        txtheading.Text = drr["heading"].ToString();
    //        Editor1.Content = drr["content"].ToString();
    //    }
    //    con.Close();
    //}
    //public void service_name()
    //{
    //    con.Open();
    //    SqlDataAdapter da = new SqlDataAdapter("select id,heading1 from tblhome_services", con);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);
    //    ddlservice.DataSource = dt;
    //    ddlservice.DataTextField = "heading1";
    //    ddlservice.DataValueField = "id";
    //    ddlservice.DataBind();
    //    ddlservice.Items.Insert(0, "----Pls. Choose Service Here----");

    //}
    protected void btnsubmit_Click1(object sender, EventArgs e)
    {
        try
        {
            ClassDate s = new ClassDate();
            string datee = s.date();
            //==== Get file name without its extension.
            string fileNameWithoutExtension1 = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
            string fileExtension1 = Path.GetExtension(FileUpload1.FileName);
            fileNameWithoutExtension1 = datee + fileNameWithoutExtension1;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension1 + fileExtension1));
            strfile1 = "~/productimg/" + fileNameWithoutExtension1 + fileExtension1;


            ClassDate ss = new ClassDate();
            string dateee = ss.date();
            //==== Get file name without its extension.
            string fileNameWithoutExtension2 = Path.GetFileNameWithoutExtension(FileUpload2.FileName);
            string fileExtension2 = Path.GetExtension(FileUpload2.FileName);
            fileNameWithoutExtension2 = dateee + fileNameWithoutExtension2;
            FileUpload2.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension2 + fileExtension2));
            strfile2 = "~/productimg/" + fileNameWithoutExtension2 + fileExtension2;

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tblservice_details(service_banner,banner_heading1,banner_heading2,service_name,service_content,service_image)values(@service_banner,@banner_heading1,@banner_heading2,@service_name,@service_content,@service_image)", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@service_banner", strfile1);
            cmd.Parameters.AddWithValue("@banner_heading1", txtbannerheading1.Text);
            cmd.Parameters.AddWithValue("@banner_heading2", txtbannerheading2.Text);
            cmd.Parameters.AddWithValue("@service_name", txtservice.Text);
            cmd.Parameters.AddWithValue("@service_content", Editor1.Content);
            cmd.Parameters.AddWithValue("@service_image", strfile2);
            //cmd.Parameters.AddWithValue("@var", "ins");
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Service Details Submited Successfully');location.href='service-details.aspx'", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Some Error Occurred!!!');", true);
            }

            txtbannerheading1.Text = "";
            txtbannerheading2.Text = "";
            txtservice.Text = "";
            //ddlservice.SelectedItem.Text= "";
            Editor1.Content = "";

        }

        catch { }
        finally { con.Close(); }

    }

    //protected void ddltopic_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    if (ddlservice.SelectedIndex > 0)
    //    {
    //        Show_Feature(ddlservice.SelectedItem.ToString());
    //    }
    //    else
    //    {
    //        ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Choose Topic First');", true);
    //    }
    //}
}


