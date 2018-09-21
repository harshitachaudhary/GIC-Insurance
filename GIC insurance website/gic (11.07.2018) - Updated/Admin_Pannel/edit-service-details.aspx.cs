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
                service_name();
            }
            else { Response.Redirect("../login/Default.aspx"); }


        }
    }

    public void Show_service(string service_name)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tblservice_details where service_name=@service_name", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@service_name", service_name);
        SqlDataReader drr = cmd.ExecuteReader();
        if (drr.Read())
        {
            txtbannerheading1.Text = drr["banner_heading1"].ToString();
            txtbannerheading2.Text = drr["banner_heading2"].ToString();
            Editor1.Content = drr["service_content"].ToString();
            imgservice.ImageUrl = drr["service_image"].ToString();
            imgbanner.ImageUrl = drr["service_banner"].ToString();
        }
        con.Close();
    }
    public void service_name()
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select id,service_name from tblservice_details", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddlservice.DataSource = dt;
        ddlservice.DataTextField = "service_name";
        ddlservice.DataValueField = "id";
        ddlservice.DataBind();
        ddlservice.Items.Insert(0, "----Pls. Choose Service Here----");

    }
   
     
    protected void ddlservice_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlservice.SelectedIndex > 0)
        {
            Show_service(ddlservice.SelectedItem.ToString());
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Choose Service First');", true);
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {

      try
        {
            if (FileUpload1.HasFile)
            {
                ClassDate s = new ClassDate();
                string datee = s.date();
                //==== Get file name without its extension.
                string fileNameWithoutExtension1 = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
                string fileExtension1 = Path.GetExtension(FileUpload1.FileName);
                fileNameWithoutExtension1 = datee + fileNameWithoutExtension1;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension1 + fileExtension1));
                strfile1 = "~/productimg/" + fileNameWithoutExtension1 + fileExtension1;
            }
            else { strfile1 = imgbanner.ImageUrl; }

            if (FileUpload2.HasFile)
            {
                ClassDate ss = new ClassDate();
                string dateee = ss.date();
                //==== Get file name without its extension.
                string fileNameWithoutExtension2 = Path.GetFileNameWithoutExtension(FileUpload2.FileName);
                string fileExtension2 = Path.GetExtension(FileUpload2.FileName);
                fileNameWithoutExtension2 = dateee + fileNameWithoutExtension2;
                FileUpload2.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension2 + fileExtension2));
                strfile2 = "~/productimg/" + fileNameWithoutExtension2 + fileExtension2;
            }
            else { strfile2 = imgservice.ImageUrl; }

            con.Open();
            SqlCommand cmd = new SqlCommand("update tblservice_details set service_banner=@service_banner,banner_heading1=@banner_heading1,banner_heading2=@banner_heading2,service_content=@service_content,service_image=@service_image where service_name=@service_name", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@service_name", ddlservice.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@service_banner", strfile1);
            cmd.Parameters.AddWithValue("@banner_heading1", txtbannerheading1.Text);
            cmd.Parameters.AddWithValue("@banner_heading2", txtbannerheading2.Text);           
            cmd.Parameters.AddWithValue("@service_content", Editor1.Content);
            cmd.Parameters.AddWithValue("@service_image", strfile2);
            //cmd.Parameters.AddWithValue("@var", "ins");
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Successfully Updated');", true);
            }            
        }

        catch { }
        finally { con.Close(); }

    }
}


