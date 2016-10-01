using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

public partial class Participant_Registration_Form : System.Web.UI.Page
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
       
        try
        {
            SqlConnection connection = new Database().Create_Connection();
            SqlCommand command = connection.CreateCommand();
            SqlCommand command1 = connection.CreateCommand();
            String target_group = null;
            String institute_type = null;
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
            String institute = null;
            if(Place.Text=="")
            {
            institute = txtInstitute.Text.TrimEnd() +", "+State.SelectedValue.ToString();
            }
            else
            {
                institute = txtInstitute.Text.TrimEnd() + ", "+Place.Text.TrimEnd()+", "+State.SelectedValue.ToString();
            }
            //  institute.ToUpper();
            String res_state = StateAddress.SelectedValue.ToString();
            command1.CommandText = "UPDATE COURSE_REG SET COORDINATOR_NAME='" + coordinatorname.Text + "'WHERE OPLAN_NO='" + DropDownList2.SelectedValue.ToString() + "'";
            command1.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO PARTICIPANT(OPLAN_NO,COURSE_NAME,DEPTT,NAME,DESIGNATION,INSTITUTE,ADDRESS ,MOBILE,E_MAIL,STATE,INSTITUTE_TYPE,START_DATE,END_DATE,TARGET_GROUP) VALUES(@1,@2,@3,@4,@5,@6,@7,@8,@9,@10,@11,@12,@13,@14)";
            command.CommandText = "INSERT INTO PARTICIPANT(OPLAN_NO,COURSE_NAME,DEPTT,NAME,DESIGNATION,INSTITUTE,ADDRESS ,MOBILE,E_MAIL,STATE,INSTITUTE_TYPE,START_DATE,END_DATE,TARGET_GROUP,VENUE,DURATION,RES_STATE) VALUES(@1,@2,@3,@4,@5,@6,@7,@8,@9,@10,@11,@12,@13,@14,@15,@16,@17)";
            command.Parameters.AddWithValue("@1", DropDownList2.SelectedValue.ToString());
            command.Parameters.AddWithValue("@2", coursename.Text);
            command.Parameters.AddWithValue("@3", department.SelectedValue.ToString());
            command.Parameters.AddWithValue("@4", txtname.Text);
            command.Parameters.AddWithValue("@5", txtDesignation.Text);
            command.Parameters.AddWithValue("@6", institute);
            command.Parameters.AddWithValue("@7", txtAddress.Text);
            command.Parameters.AddWithValue("@8", txtMobNo.Text);
            command.Parameters.AddWithValue("@9", txtEmailId.Text);
            command.Parameters.AddWithValue("@10",State.SelectedValue.ToString());
            command.Parameters.AddWithValue("@11", institute_type);
            command.Parameters.AddWithValue("@12", (DateTime.ParseExact(datefrom.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture)).ToString("yyyy-MM-dd"));
            command.Parameters.AddWithValue("@13", (DateTime.ParseExact(dateto.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture)).ToString("yyyy-MM-dd"));
            command.Parameters.AddWithValue("@14", target_group);
            command.Parameters.AddWithValue("@15", venue.Text);
            command.Parameters.AddWithValue("@16", txtDuration.Text);
            command.Parameters.AddWithValue("@17", res_state);
            int insert = command.ExecuteNonQuery();
            if(insert>0)
            {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Participant Registered')</script>");
            txtname.Text = "";
            txtInstitute.Text = "";
            txtDesignation.Text = "";
            txtAddress.Text = "";
            txtMobNo.Text = "";
            txtEmailId.Text = "";
            rdbTargetGp.SelectedIndex = 0;
            rdbGovtPvt.SelectedIndex = 0;
            State.SelectedIndex = 0;
            StateAddress.SelectedIndex = 0;
            Place.Text = "";
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
            String OPLAN_NO =DropDownList2.SelectedValue.ToString();
           
            command.CommandText = "SELECT PTITLE, VENUE, START_DATE, END_DATE, DURATION FROM COURSE_REG where OPLAN_NO = '"+OPLAN_NO+"'";
            
            SqlDataReader sdr = command.ExecuteReader();

            String COURSENAME = null, VENUE = null, STARTDATE = null, ENDDATE = null, DURATION = null;
            while (sdr.Read())
            {
                COURSENAME = sdr[0].ToString();
                VENUE = sdr[1].ToString();
                STARTDATE = sdr[2].ToString();
                ENDDATE = sdr[3].ToString();
                DURATION = sdr[4].ToString();
                coursename.Text = COURSENAME;
                venue.Text = VENUE;
                txtDuration.Text = DURATION;
               // datefrom.Text = STARTDATE.Substring(0, 10);
               // dateto.Text = ENDDATE.Substring(0, 10);
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
    }
