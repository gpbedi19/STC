using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

public partial class Hindi_Participation_Registration : System.Web.UI.Page
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
            String target_group = null;
            String institute_type = null;

            command.CommandText = "UPDATE HINDI_PARTICIPANT SET HINDI_NAME = @1, HINDI_INSTITUTE = @2, HINDI_STATE = @3 WHERE NAME = @4";
            command.Parameters.AddWithValue("@1", txtHindiName);
            command.Parameters.AddWithValue("@2", txtHindiInstitute);
            command.Parameters.AddWithValue("@3", HindiState.SelectedValue.ToString());
            command.Parameters.AddWithValue("@4", txtname.Text);

           
            int insert = command.ExecuteNonQuery();
            if (insert > 0)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Participant Registered')</script>");
                txtname.Text = "";
                txtHindiInstitute.Text = "";
                txtDesignation.Text = "";
                State.SelectedIndex = 0;
            }
            connection.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }

    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Participant_Registration_Form.aspx");
    }

    protected void DropDownList2_PreRender(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new Database().Create_Connection();
            SqlCommand command = connection.CreateCommand();
            String OPLAN_NO = DropDownList2.SelectedValue.ToString();

            command.CommandText = "SELECT HINDI_PTITLE, HINDI_VENUE, START_DATE, END_DATE from HINDI_COURSE_REG where OPLAN_NO = '" + OPLAN_NO + "'";

            SqlDataReader sdr = command.ExecuteReader();

            String COURSENAME = null, VENUE = null, STARTDATE = null, ENDDATE = null;
            while (sdr.Read())
            {
                COURSENAME = sdr[0].ToString();
                VENUE = sdr[1].ToString();
                STARTDATE = sdr[2].ToString();
                ENDDATE = sdr[3].ToString();
                coursename.Text = COURSENAME;
                venue.Text = VENUE;
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
    protected void DropDownList3_PreRender(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new Database().Create_Connection();
            SqlCommand command = connection.CreateCommand();
            String NAME = DropDownList3.SelectedValue.ToString();

            command.CommandText = "SELECT DESIGNATION, INSTITUTE, STATE from HINDI_COURSE_REG where NAME = '" + NAME + "'";

            SqlDataReader sdr = command.ExecuteReader();

            String DESIGNATION, INSTITUTE, STATE = null;
            while (sdr.Read())
            {
                DESIGNATION = sdr[0].ToString();
                INSTITUTE = sdr[1].ToString();
                STATE = sdr[2].ToString();
            }

     

            connection.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
    }
}