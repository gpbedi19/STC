using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AttendedParticipate : System.Web.UI.Page
{  
    int totalplanned = 0;
    int totalconducted = 0;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null || Session["role"] == null)
        {
            Response.Redirect("Logout.aspx");
        }
        else if (Session["role"].ToString() == "student")
        {
            Response.Redirect("Default.aspx");
        }
        startdate.Attributes.Add("readonly", "readonly");
        enddate.Attributes.Add("readonly", "readonly");
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    

    protected void Button3_Click(object sender, EventArgs e)
    {
        String search = DropDownList1.SelectedValue;
        SqlConnection connection = new Database().Create_Connection();
        String str = "SELECT DEPTT,COUNT(STATUS) AS \"TOTAL COURSES PLANNED\", COUNT(CASE WHEN STATUS='CONDUCTED' THEN 1 END) AS \"TOTAL COURSES CONDUCTED\" FROM [db_nitttr].[dbo].[COURSE_REG] WHERE (START_DATE BETWEEN @START_DATE AND @START_DATE2) GROUP BY DEPTT HAVING (DEPTT like '%' + @search + '%')";
        SqlCommand xp = new SqlCommand(str, connection);
        xp.Parameters.Add("@search", SqlDbType.VarChar).Value = DropDownList1.SelectedValue;
        xp.Parameters.Add("@START_DATE", SqlDbType.Date).Value = startdate.Text;
        xp.Parameters.Add("@START_DATE2", SqlDbType.Date).Value = enddate.Text;
       // connection.Open();
        xp.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = xp;
        DataSet ds = new DataSet();
        da.Fill(ds, "Name");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        connection.Close();
        Label4.Text = DropDownList1.SelectedItem.ToString();
        Label6.Text=startdate.Text;
        Label8.Text = enddate.Text;
        Label2.Visible = true;
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        Label7.Visible = true; 
        Label8.Visible = true;

        if (DropDownList1.SelectedItem.ToString() == "All Departments")
        {

            Label2.Text = "No. Of Courses Planned  &amp; Conducted Date Wise by NITTTR";
            Label3.Visible = false;
            Label4.Visible = false;

        }
        else
        {
            Label2.Text = "No. Of Courses Planned  &amp; Conducted Deptt Wise & Date Wise";

        }
    }


    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
                totalplanned += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "TOTAL COURSES PLANNED"));
            totalconducted += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "TOTAL COURSES CONDUCTED"));
            
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[1].Text = "Total";
            e.Row.Cells[1].Font.Bold = true;
            e.Row.Cells[2].Text = totalplanned.ToString();
            e.Row.Cells[2].Font.Bold = true;
            e.Row.Cells[3].Text = totalconducted.ToString();
            e.Row.Cells[3].Font.Bold = true;
        }
    }

    
}
