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
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Session["gic"] != null)
            {
                show_ALL("1");
              
            }
            else { Response.Redirect("../login/Default.aspx"); }
            
          
        }
    }

    private void show_ALL(int p)
    {
        throw new NotImplementedException();
    }
  
    protected void Button1x_Click(object sender, EventArgs e)
    {
        try
        {         
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_tblftrabout", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", 1);          
            cmd.Parameters.AddWithValue("@content",Editor1.Content);
            cmd.Parameters.AddWithValue("@var", 1);
            int i = cmd.ExecuteNonQuery();
            if(i > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Successfully Updated');", true);
            }
        }
        catch { }
        finally { con.Close(); }
    }

    public void show_ALL(string id)
    {

        SqlCommand cmd = new SqlCommand("proc_tblftrabout", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@var", 2);
        cmd.Parameters.AddWithValue("@id", 1);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {

            Editor1.Content = dt.Rows[0]["content"].ToString();

        }

    }

    //public void image()
    //{
    //    ClassDate s = new ClassDate();
    //    string datee = s.date();

    //    if (FileUpload1.HasFile)
    //    {
    //        //==== Get file name without its extension.
    //        string fileNameWithoutExtension1 = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
    //        string fileExtension1 = Path.GetExtension(FileUpload1.FileName);
    //        fileNameWithoutExtension1 = datee + fileNameWithoutExtension1;
    //        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/productimg/" + fileNameWithoutExtension1 + fileExtension1));
    //        strfile1 = "~/productimg/" + fileNameWithoutExtension1 + fileExtension1;
    //    }
    //    else
    //    { strfile1 = Image1.ImageUrl; }


    //    SqlCommand cmd = new SqlCommand("proc_tblallpages", con);
    //    cmd.CommandType = CommandType.StoredProcedure;
    //    cmd.Parameters.AddWithValue("@typee", "AboutUsImage");
    //    cmd.Parameters.AddWithValue("@content", strfile1);
    //    cmd.ExecuteNonQuery();
    //    Image1.ImageUrl = all.showpagecontent("AboutUsImage");
       
    //}
   
} 