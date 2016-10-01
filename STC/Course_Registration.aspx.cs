using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Collections.Generic;
using System.Globalization;

public partial class Course_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null || Session["role"] == null)
        {
            Response.Redirect("Logout.aspx");
        }
        else if (Session["role"].ToString() == "student" || Session["role"].ToString() == "hod")
        {
            Response.Redirect("Default.aspx");
        }
        txtFrom.Attributes.Add("readonly", "readonly");
        txtTo.Attributes.Add("readonly", "readonly");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new Database().Create_Connection();
            SqlCommand command = connection.CreateCommand();
    
            command.CommandText = "INSERT INTO COURSE_REG(OPLAN_NO, PTITLE, START_DATE, END_DATE, VENUE, DEPTT, DURATION, TYPE ) VALUES(@1,@2,@3,@4,@5,@6,@7,@8)";
            command.Parameters.AddWithValue("@1", txtOplan.Text);
            command.Parameters.AddWithValue("@2", txtCourse.Text);
            command.Parameters.AddWithValue("@3", (DateTime.ParseExact(txtFrom.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture)).ToString("yyyy-MM-dd"));
            command.Parameters.AddWithValue("@4", (DateTime.ParseExact(txtTo.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture)).ToString("yyyy-MM-dd"));
            command.Parameters.AddWithValue("@5", txtVenue.Text);
            command.Parameters.AddWithValue("@6", ddlDep.SelectedValue.ToString());
            command.Parameters.AddWithValue("@7", txtDuration.Text);
            command.Parameters.AddWithValue("@8", "SINGLE");
            int insert = command.ExecuteNonQuery();
            if (insert > 0)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Course Registered')</script>");
                txtOplan.Text = "";
                txtCourse.Text = "";
                ddlDep.SelectedIndex = 0;
                txtFrom.Text = "";
                txtTo.Text = "";
                txtVenue.Text = "";
                txtDuration.Text = "";
            }
            connection.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Course_Registration.aspx");
    }
}