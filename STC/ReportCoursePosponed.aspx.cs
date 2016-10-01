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
    SqlConnection vid = new Database().Create_Connection();
   
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
    protected void Button1_Click(object sender, EventArgs e)
    {
          }
    protected void printButton_Click(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        
    }

    protected void DropDownList1_PreRender(object sender, EventArgs e)
    {
        String search = DropDownList1.SelectedValue;
        department.Text = DropDownList1.SelectedItem.ToString();
        String str = "SELECT OPLAN_NO,PTITLE AS COURSENAME,convert(varchar,STARTDATE, 103) AS STARTDATE,convert(varchar,ENDDATE, 103) AS ENDDATE,convert(varchar,NEW_STARTDATE, 103) AS \"NEW START DATE\",convert(varchar,NEW_ENDDATE, 103) AS \"NEW END DATE\",VENUE AS \"OLD VENUE\",NEW_VENUE AS \"NEW VENUE\" FROM [db_nitttr].[dbo].[POSTPONE_COURSE_REG] WHERE (DEPTT like '%' + @search + '%') order by deptt";
        SqlCommand xp = new SqlCommand(str, vid);
        xp.Parameters.Add("@search", SqlDbType.VarChar).Value = DropDownList1.SelectedValue;

        xp.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = xp;
        DataSet ds = new DataSet();
        da.Fill(ds, "Name");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        vid.Close();
        Label4.Visible = true;
        Label5.Visible = true;
    }
}