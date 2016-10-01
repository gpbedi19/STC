using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

public partial class Hindi_Participation_Registration2 : System.Web.UI.Page
{
    String OPLAN_NOQS;
    String COURSE_NAMEQS;
    String HINDI_COURSE_NAMEQS;
    String DEPTTQS;
    String HINDI_DEPTTQS;
    String VENUEQS;
    String HINDI_VENUEQS;
    String DURATIONQS;
    String HINDI_DURATIONQS;
    String DATEFROMQS;
    String DATETOQS;
    protected void Page_Load(object sender, EventArgs e)
    {
        OPLAN_NOQS = Session["OPLAN_NO"].ToString();
        COURSE_NAMEQS = Session["COURSE_NAME"].ToString();
        HINDI_COURSE_NAMEQS = Session["HINDI_COURSE_NAME"].ToString();
        DEPTTQS = Session["DEPTT"].ToString();
        HINDI_DEPTTQS = Session["HINDI_DEPTT"].ToString();
        VENUEQS = Session["VENUE"].ToString();
        HINDI_VENUEQS = Session["HINDI_VENUE"].ToString();
        DURATIONQS = Session["DURATION"].ToString();
        HINDI_DURATIONQS = Session["HINDI_DURATION"].ToString();
        DATEFROMQS = Session["DATEFROM"].ToString();
        DATETOQS = Session["DATETO"].ToString();
        if (Session["name"] == null || Session["role"] == null)
        {
            Response.Redirect("Logout.aspx");
        }
        else if (Session["role"].ToString() == "hod")
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
            SqlCommand command1 = connection.CreateCommand();
            String target_group = null;
            String institute_type = null;
           
    
            String EnglishInstitute = txtInstitute.Text.TrimEnd()+", "+PlaceEng.Text.TrimEnd()+", "+State.SelectedValue.ToString();
            String HindiInstitute = txtHindiInstitute.Text.TrimEnd()+", "+PlaceHin.Text.TrimEnd()+", "+HindiState.SelectedValue.ToString();
            foreach (ListItem item in rdbTargetGp.Items)
            {
                if (item.Selected)
                {
                    target_group = item.Value;
                }
            }

            foreach (ListItem item in rdbGovtPvt.Items)
            {
                if (item.Selected)
                {
                    institute_type = item.Value;
                }
            }
           // command1.CommandText = "UPDATE COURSE_REG SET COORDINATOR_NAME='" + coordinatorname.Text + "'WHERE OPLAN_NO='" + DropDownList2.SelectedValue.ToString() + "'";
            //command1.ExecuteNonQuery();
            command.CommandText = "INSERT INTO PARTICIPANT(OPLAN_NO, COURSE_NAME, HINDI_COURSE_NAME, DEPTT, HINDI_DEPTT, NAME, HINDI_NAME, DESIGNATION, INSTITUTE, HINDI_INSTITUTE, ADDRESS , MOBILE, E_MAIL, STATE, INSTITUTE_TYPE,START_DATE,END_DATE,TARGET_GROUP,VENUE,HINDI_VENUE, DURATION, HINDI_DURATION) VALUES(@1,@2,@3,@4,@5,@6,@7,@8,@10,@11,@12,@13,@14,@15,@17,@18,@19,@20,@21,@22,@23,@24)";
            command.Parameters.AddWithValue("@1", OPLAN_NOQS);
            command.Parameters.AddWithValue("@2", COURSE_NAMEQS);
            command.Parameters.AddWithValue("@3", HINDI_COURSE_NAMEQS);
            command.Parameters.AddWithValue("@4", DEPTTQS);
            command.Parameters.AddWithValue("@5", HINDI_DEPTTQS);
            command.Parameters.AddWithValue("@6", txtname.Text);
            command.Parameters.AddWithValue("@7", txthindiname.Text);
            command.Parameters.AddWithValue("@8", txtDesignation.Text);
           // command.Parameters.AddWithValue("@9", ddlStateAddress.SelectedValue.ToString());
            command.Parameters.AddWithValue("@10", EnglishInstitute);
            command.Parameters.AddWithValue("@11", HindiInstitute);
            command.Parameters.AddWithValue("@12", txtAddress.Text);
            command.Parameters.AddWithValue("@13", txtMobNo.Text);
            command.Parameters.AddWithValue("@14", txtEmailId.Text);
           command.Parameters.AddWithValue("@15", ddlStateAddress.SelectedValue.ToString());
          //  command.Parameters.AddWithValue("@16", HindiState.SelectedValue.ToString());
            command.Parameters.AddWithValue("@17", institute_type);
            command.Parameters.AddWithValue("@18", DATEFROMQS);
            command.Parameters.AddWithValue("@19", DATETOQS);
            command.Parameters.AddWithValue("@20", target_group);
            command.Parameters.AddWithValue("@21", VENUEQS);
            command.Parameters.AddWithValue("@22", HINDI_VENUEQS);
            command.Parameters.AddWithValue("@23", DURATIONQS);
            command.Parameters.AddWithValue("@24", HINDI_DURATIONQS);
            int insert = command.ExecuteNonQuery();
            if (insert > 0)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Participant Registered')</script>");
                txtname.Text = "";
                txthindiname.Text = "";
                txtInstitute.Text = "";
                txtHindiInstitute.Text = "";
                txtDesignation.Text = "";
        //        txtHindiDesignation.Text = "";
                txtAddress.Text = "";
                txtMobNo.Text = "";
                txtEmailId.Text = "";
                rdbTargetGp.SelectedIndex = 0;
                rdbGovtPvt.SelectedIndex = 0;
                ddlStateAddress.SelectedIndex = 0;
                State.SelectedIndex = 0;
                PlaceEng.Text = "";
                PlaceHin.Text = "";
                HindiState.SelectedIndex = 0;
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
        Response.Redirect("Hindi_Participation_Registration_Form.aspx");
    }

    protected void DropDownList2_PreRender(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new Database().Create_Connection();
            SqlCommand command = connection.CreateCommand();
            String OPLAN_NO = OPLAN_NOQS;

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
                COURSENAME = COURSE_NAMEQS ;
                HINDICOURSENAME = HINDI_VENUEQS;
                VENUE = VENUEQS;
                HINDIVENUE = HINDI_VENUEQS;
                DURATION = DURATIONQS;
                HINDIVENUE = HINDI_DURATIONQS;
               // datefrom.Text = STARTDATE.Substring(0, 10);
               //  dateto.Text = ENDDATE.Substring(0, 10);
                STARTDATE = DATEFROMQS;
               ENDDATE = DATETOQS;    
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

    protected void State_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void State_PreRender(object sender, EventArgs e)
    {
        HindiState.SelectedIndex = State.SelectedIndex;
    }
    protected void State_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
   
    protected void department_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}