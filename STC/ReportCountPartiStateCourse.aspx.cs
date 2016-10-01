using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
public partial class AttendedParticipate : System.Web.UI.Page
{
    int totalsp=0;
int totalap = 0;
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
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
        Label10.Visible = false;
        Label11.Visible = false;
        GridView1.Visible = false;
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
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }




    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            totalsp += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Column1"));
            totalap += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Column2"));
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[1].Text = "Total";
            e.Row.Cells[1].Font.Bold = true;
            e.Row.Cells[2].Text = totalsp.ToString();
            e.Row.Cells[2].Font.Bold = true;
            e.Row.Cells[3].Text = totalap.ToString();
            e.Row.Cells[3].Font.Bold = true;
        }
    }
    protected void DropDownList2_PreRender(object sender, EventArgs e)
    {

        DateTime MyDateTime = new DateTime();



        SqlConnection connection = new Database().Create_Connection();
        SqlCommand command = connection.CreateCommand();
        String OPLAN_NO = DropDownList2.SelectedValue.ToString();

        command.CommandText = "SELECT PTITLE, VENUE, START_DATE, END_DATE, DEPTT,COORDINATOR_NAME  from COURSE_REG where OPLAN_NO = '" + OPLAN_NO + "'";
       
        SqlDataReader sdr = command.ExecuteReader();

        String COURSENAME = null, DEPTT = null, VENUE = null, STARTDATE = null, ENDDATE = null,COORDINATOR_NAME=null;
        while (sdr.Read())
        {

            COURSENAME = sdr[0].ToString();
            VENUE = sdr[1].ToString();
            STARTDATE = sdr[2].ToString();
            ENDDATE = sdr[3].ToString();
            DEPTT = sdr[4].ToString();
            COORDINATOR_NAME = sdr[5].ToString();
            department.Text = DEPTT;
            coursename.Text = COURSENAME;
            oplan_no.Text = DropDownList2.SelectedValue.ToString();
            venue.Text = VENUE;
            datefrom.Text = STARTDATE.Substring(0, 10);
            dateto.Text = ENDDATE.Substring(0, 10);
        }
        Label11.Text = COORDINATOR_NAME;
        //datefrom = STARTDATE;
        //dateto = ENDDATE;   
        connection.Close();

        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        Label7.Visible = true;
        Label8.Visible = true;
        Label9.Visible = true;
        Label10.Visible = true;
        Label11.Visible = true;
        GridView1.Visible = true;
    }
    
    
    protected void DropDownList2_DataBound(object sender, EventArgs e)
    {
        DropDownList2.Items.Insert(0, new ListItem("- Select -", ""));
    }
}
