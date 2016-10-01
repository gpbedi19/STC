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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null || Session["role"] == null || Session["role"].ToString() == "student")
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
        Label14.Visible = false;
        GridView1.Visible = false;
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }





    protected void DropDownList2_PreRender(object sender, EventArgs e)
    {

        DateTime MyDateTime = new DateTime();



        SqlConnection connection = new Database().Create_Connection();
        SqlCommand command = connection.CreateCommand();
        String OPLAN_NO = DropDownList2.SelectedValue.ToString();

        command.CommandText = "SELECT PTITLE, VENUE, START_DATE, END_DATE, DEPTT,HINDI_DEPTT,HINDI_PTITLE,HINDI_VENUE,COORDINATOR_NAME from COURSE_REG where OPLAN_NO = '" + OPLAN_NO + "'";

        SqlDataReader sdr = command.ExecuteReader();

        String COURSENAME = null, COURSENAMEHINDI=null, DEPTT = null,DEPTTHINDI=null, VENUE = null,VENUEHINDI=null, STARTDATE = null, ENDDATE = null,COORDINATOR_NAME=null;
        while (sdr.Read())
        {

            COURSENAME = sdr[0].ToString();
            VENUE = sdr[1].ToString();
            STARTDATE = sdr[2].ToString();
            ENDDATE = sdr[3].ToString();
            DEPTT = sdr[4].ToString();
            DEPTTHINDI = sdr[5].ToString();
            COURSENAMEHINDI = sdr[6].ToString();
            VENUEHINDI = sdr[7].ToString();
            COORDINATOR_NAME = sdr[8].ToString();
            department.Text = DEPTT;
            departmenthindi.Text = DEPTTHINDI;
            coursenamehindi.Text = COURSENAMEHINDI;
            venuehindi.Text = VENUEHINDI;
            coursename.Text = COURSENAME;
            oplan_no.Text = DropDownList2.SelectedValue.ToString();
            venue.Text = VENUE;
            datefrom.Text = STARTDATE.Substring(0, 10);
            dateto.Text = ENDDATE.Substring(0, 10);
           
        }
        Label14.Text = COORDINATOR_NAME;

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
        Label12.Visible = true;
        Label13.Visible = true;

        Label14.Visible = true;
        GridView1.Visible = true;
    }

    protected void DropDownList2_DataBound(object sender, EventArgs e)
    {

        DropDownList2.Items.Insert(0, new ListItem("- Select -", ""));
    }
}
