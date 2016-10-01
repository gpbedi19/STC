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
        startdate.Attributes.Add("readonly", "readonly");
        enddate.Attributes.Add("readonly", "readonly");
    }
   
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
       
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        

        String startDate = startdate.Text;
        DateTime MyDateTime = new DateTime();
        MyDateTime = DateTime.ParseExact(startDate, "dd/MM/yyyy", null);
        String startDate1 = MyDateTime.ToString("MM-dd-yyyy");

        String endDate=enddate.Text;
        MyDateTime = DateTime.ParseExact(endDate, "dd/MM/yyyy", null);
        String endDate1 = MyDateTime.ToString("MM-dd-yyyy");

        string newStartDate = newstartdate.Text;
        MyDateTime = DateTime.ParseExact(newStartDate, "dd/MM/yyyy", null);
        String newStartDate1 = MyDateTime.ToString("MM-dd-yyyy");

        string newEndDate = newenddate.Text;
        MyDateTime = DateTime.ParseExact(newEndDate, "dd/MM/yyyy", null);
        String newEndDate1 = MyDateTime.ToString("MM-dd-yyyy");

        string oplanNo = DropDownList2.SelectedValue;
       String newVenue = TextBox1.Text;
        SqlConnection conn = new Database().Create_Connection();
        string sql = "IF (NOT EXISTS(SELECT * FROM POSTPONE_COURSE_REG WHERE OPLAN_NO='" + oplanNo + "')) BEGIN INSERT INTO POSTPONE_COURSE_REG(REG_ID, OPLAN_NO, PTITLE, STARTDATE, ENDDATE, VENUE, DEPTT, NEW_STARTDATE, NEW_ENDDATE,NEW_VENUE) SELECT REG_ID, OPLAN_NO, PTITLE, START_DATE, END_DATE,  VENUE, DEPTT, '" + newStartDate1 + "', '" + newEndDate1 + "','" + newVenue + "' FROM COURSE_REG WHERE (OPLAN_NO = '" + oplanNo + "') END ELSE BEGIN UPDATE POSTPONE_COURSE_REG SET NEW_STARTDATE='" + newStartDate1 + "', NEW_ENDDATE='" + newEndDate1 + "', NEW_VENUE='" + newVenue + "' END; UPDATE COURSE_REG SET START_DATE='" + newStartDate1 + "', END_DATE = '" + newEndDate1 + "' WHERE OPLAN_NO='" + oplanNo + "';UPDATE COURSE_REG SET START_DATE='" + newStartDate1 + "', END_DATE = '" + newEndDate1 + "' WHERE OPLAN_NO='" + oplanNo + "';";
        
        try
        {
            
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
        }

        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Insert Error:";
            msg += ex.Message;
        }
        finally
        {
            conn.Close();
        }
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Course Postponed Successfully')", true);
        
    }

   
}