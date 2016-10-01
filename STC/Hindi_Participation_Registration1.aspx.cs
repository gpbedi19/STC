using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

public partial class Hindi_Participation_Registration1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null || Session["role"] == null)
        {
            Response.Redirect("Logout.aspx");
        }
        else if (Session["role"].ToString() == "hod")
        {
            Response.Redirect("Default.aspx");
        }
        startdate.Attributes.Add("readonly", "readonly");
        enddate.Attributes.Add("readonly", "readonly");
       
    }
    protected void btnCancel0_Click(object sender, EventArgs e)
    {
        /*if(State.SelectedValue.ToString().Equals("Select State"))
        {

        }
         */
        try
        {
            SqlConnection connection = new Database().Create_Connection();
            SqlCommand command = connection.CreateCommand();
            command.CommandText = "UPDATE COURSE_REG SET COORDINATOR_NAME='" + coordinatorname.Text + "'WHERE OPLAN_NO='" + DropDownList2.SelectedValue.ToString() + "'";
            command.ExecuteNonQuery();
            
            
            Session["OPLAN_NO"] = DropDownList2.SelectedValue.ToString();
            Session["COURSE_NAME"] = coursename.Text;
            Session["HINDI_COURSE_NAME"] = hindicoursename;
            Session["DEPTT"] = department.SelectedValue.ToString();
            Session["HINDI_DEPTT"] = hindidepartment.SelectedValue.ToString();
            Session["VENUE"] =  hindivenue.Text;
            
            Session["HINDI_VENUE"] = hindivenue.Text;
            Session["DURATION"]= duration.Text;
            Session["HINDI_DURATION"] = hindiduration.Text;

            Session["DATEFROM"] = (DateTime.ParseExact(datefrom.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture)).ToString("yyyy-MM-dd");
            Session["DATETO"] = (DateTime.ParseExact(dateto.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture)).ToString("yyyy-MM-dd");
            Response.Redirect("Hindi_Participation_Registration2.aspx");
            connection.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }

    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Hindi_Participation_Registration_Form.aspx");
    }

    protected void DropDownList2_PreRender(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new Database().Create_Connection();
            SqlCommand command = connection.CreateCommand();
            String OPLAN_NO = DropDownList2.SelectedValue.ToString();

            command.CommandText = "SELECT PTITLE, HINDI_PTITLE, VENUE, HINDI_VENUE, START_DATE, END_DATE, DURATION, HINDI_DURATION from COURSE_REG where OPLAN_NO = '" + OPLAN_NO + "'";

            SqlDataReader sdr = command.ExecuteReader();

            String COURSENAME = null, HINDICOURSENAME = null, VENUE = null, HINDIVENUE = null, STARTDATE = null, ENDDATE = null, DURATION, HINDIDURATION = null;
            while (sdr.Read())
            {
                COURSENAME = sdr[0].ToString();
                HINDICOURSENAME = sdr[1].ToString();
                VENUE = sdr[2].ToString();
                HINDIVENUE = sdr[3].ToString();
                STARTDATE = sdr[4].ToString();
                ENDDATE = sdr[5].ToString();
                DURATION = sdr[6].ToString();
                HINDIDURATION = sdr[7].ToString();
                coursename.Text = COURSENAME;
                hindicoursename.Text = HINDICOURSENAME;
                venue.Text = VENUE;
                hindivenue.Text = HINDIVENUE;
                duration.Text = DURATION;
                hindiduration.Text = HINDIDURATION;
               // datefrom.Text = STARTDATE.Substring(0, 10);
               //  dateto.Text = ENDDATE.Substring(0, 10);
                datefrom.Text = (DateTime.ParseExact(STARTDATE.Substring(0, 10), "dd/MM/yyyy", CultureInfo.InvariantCulture)).ToString("dd-MM-yyyy");
                dateto.Text = (DateTime.ParseExact(ENDDATE.Substring(0, 10), "dd/MM/yyyy", CultureInfo.InvariantCulture)).ToString("dd-MM-yyyy");    
            }

            //datefrom = STARTDATE;
            //dateto = ENDDATE;   
            connection.Close();

            connection.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
    }

 
   
    protected void department_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}