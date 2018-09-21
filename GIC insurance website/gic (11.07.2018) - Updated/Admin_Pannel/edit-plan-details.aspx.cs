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
                bindservicename();
            }
            else { Response.Redirect("../login/Default.aspx"); }


        }
    }

    protected void ddlplanname_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tblplan_details where plan_name='" + ddlplanname.SelectedItem.Text + "'", con);
        cmd.CommandType = CommandType.Text;
        //cmd.Parameters.AddWithValue("@plan_name", planname);
        SqlDataReader drr = cmd.ExecuteReader();
        if (drr.Read())
        {
            Editor1.Content = drr["plan_content"].ToString();
            txtbannerheading1.Text = drr["banner_heading1"].ToString();
            txtbannerheading2.Text = drr["banner_heading2"].ToString();
            imgplan.ImageUrl = drr["plan_image"].ToString();
            imgplanbanner.ImageUrl = drr["banner_image"].ToString();
            imageshortimg.ImageUrl = drr["short_image"].ToString();
            Editor2.Content = drr["short_content"].ToString();
            
        }
        con.Close();

    }

    protected void btnsubmit_Click1(object sender, EventArgs e)
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
            else { strfile1 = imgplanbanner.ImageUrl; }


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
            else { strfile2 = imgplan.ImageUrl; }

            if (FileUpload3.HasFile)
            {
                ClassDate sss = new ClassDate();
                string dateeee = sss.date();
                //==== Get file name without its extension.
                string fileNameWithoutExtension3 = Path.GetFileNameWithoutExtension(FileUpload3.FileName);
                string fileExtension3 = Path.GetExtension(FileUpload3.FileName);
                fileNameWithoutExtension3 = dateeee + fileNameWithoutExtension3;
                FileUpload3.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension3 + fileExtension3));
                strfile3 = "~/productimg/" + fileNameWithoutExtension3 + fileExtension3;
            }
            else { strfile3 = imageshortimg.ImageUrl; }

            con.Open();
            SqlCommand cmd = new SqlCommand("update tblplan_details set banner_heading1=@banner_heading1,banner_heading2=@banner_heading2,service_name=@service_name,plan_name=@plan_name,plan_content=@plan_content,plan_image=@plan_image,short_content=@short_content,short_image=@short_image,banner_image=@banner_image where plan_name=@plan_name", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@banner_image", strfile1);
            cmd.Parameters.AddWithValue("@banner_heading1", txtbannerheading1.Text);
            cmd.Parameters.AddWithValue("@banner_heading2", txtbannerheading2.Text);
            cmd.Parameters.AddWithValue("@plan_name", ddlplanname.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@service_name", ddlservice.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@plan_content", Editor1.Content);
            cmd.Parameters.AddWithValue("@short_content", Editor2.Content);
            cmd.Parameters.AddWithValue("@plan_image", strfile2);
            cmd.Parameters.AddWithValue("@short_image", strfile3);
            //cmd.Parameters.AddWithValue("@var", "ins");
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Plan Details Updated Successfully');location.href='edit-plan-details.aspx'", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Some Error Occurred!!!');", true);
            }

            txtbannerheading1.Text = "";
            txtbannerheading2.Text = "";
            //ddlservice.SelectedItem.Text= "";
            Editor1.Content = "";
            Editor2.Content = "";

        }

        catch { }
        finally { con.Close(); }

    }

    private void bindservicename()
    {
        try
        {
            string q = "select distinct service_name from tblplan_details ";
            SqlDataAdapter sda = new SqlDataAdapter(q, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (con.State != ConnectionState.Open)
                con.Open();
            if (dt.Rows.Count > 0)
            {
                ddlservice.DataSource = dt;
                ddlservice.DataTextField = "service_name";
                //ddlservice.DataValueField = "id";

                ddlservice.DataBind();
                ddlservice.Items.Insert(0, new ListItem("--- Select Service Name ---"));
                ddlservice.SelectedIndex = 0;
                ddlplanname.Items.Insert(0, new ListItem("--- Select Plan Name ---"));
                ddlplanname.SelectedIndex = 0;
            }
        }
        catch
        { con.Close(); }
        finally { }

    }
    protected void ddlservice_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlplanname.SelectedIndex = 0;

        string q = "select id,plan_name from tblplan_details where service_name='" + ddlservice.SelectedValue.ToString() + "' ";
        SqlDataAdapter sda = new SqlDataAdapter(q, con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (con.State != ConnectionState.Open)
            con.Open();
        if (dt.Rows.Count > 0)
        {
            ddlplanname.DataSource = dt;
            ddlplanname.DataValueField = "id";
            ddlplanname.DataTextField = "plan_name";
            ddlplanname.DataBind();
            ddlplanname.Items.Insert(0, "--- Select Plan Name ---");
            ddlplanname.SelectedIndex = 0;
        }
        else
        {
            ddlplanname.Items.Clear();
            ddlplanname.Items.Insert(0, "--- Select Plan Name ---");
            ddlplanname.SelectedIndex = 0;

        }

        con.Close();
    }
}


