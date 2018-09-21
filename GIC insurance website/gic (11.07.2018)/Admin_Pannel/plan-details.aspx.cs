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
    string strfile3 = "";
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

    public void service_name()
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select id,service_name from tblservice_details", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ddlservice.DataSource = dt;
            ddlservice.DataTextField = "service_name";
            ddlservice.DataValueField = "id";
            ddlservice.DataBind();
            ddlservice.Items.Insert(0, "----Pls. Choose Service Here----");
        }
    }

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

            ClassDate sss = new ClassDate();
            string dateeee = sss.date();
            //==== Get file name without its extension.
            string fileNameWithoutExtension3 = Path.GetFileNameWithoutExtension(FileUpload3.FileName);
            string fileExtension3 = Path.GetExtension(FileUpload3.FileName);
            fileNameWithoutExtension3 = dateeee + fileNameWithoutExtension3;
            FileUpload3.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension3 + fileExtension3));
            strfile3 = "~/productimg/" + fileNameWithoutExtension3 + fileExtension3;

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tblplan_details(service_name,banner_image,banner_heading1,banner_heading2,plan_name,plan_content,plan_image,short_content,short_image)values(@service_name,@banner_image,@banner_heading1,@banner_heading2,@plan_name,@plan_content,@plan_image,@short_content,@short_image)", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@banner_image", strfile1);
            cmd.Parameters.AddWithValue("@banner_heading1", txtbannerheading1.Text);
            cmd.Parameters.AddWithValue("@banner_heading2", txtbannerheading2.Text);
            cmd.Parameters.AddWithValue("@plan_name", txtplanname.Text);
            cmd.Parameters.AddWithValue("@service_name", ddlservice.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@plan_content", Editor1.Content);
            cmd.Parameters.AddWithValue("@short_content", Editorshortcontent.Content);
            cmd.Parameters.AddWithValue("@plan_image", strfile2);
            cmd.Parameters.AddWithValue("@short_image", strfile3);
            //cmd.Parameters.AddWithValue("@var", "ins");
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Plan Details Submited Successfully');location.href='plan-details.aspx'", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Some Error Occurred!!!');", true);

            }


            txtbannerheading1.Text = "";
            txtbannerheading2.Text = "";
            txtplanname.Text = "";
            // ddlservice.SelectedItem.Text = "";
            Editor1.Content = "";
            Editorshortcontent.Content = "";

        }

        catch { }
        finally { con.Close(); }

    }
}


