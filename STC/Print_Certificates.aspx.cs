using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Print_Certificates : System.Web.UI.Page
{
    String OPLANNO = null;
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
        OPLANNO = Request.QueryString["oplanno"];
        try
        {


            SqlConnection connection = new Database().Create_Connection();
            SqlCommand command = connection.CreateCommand();
            command.CommandText = "SELECT COURSE_NAME, DEPTT, START_DATE,END_DATE, VENUE from PARTICIPANT WHERE OPLAN_NO = '" + OPLANNO + "' ORDER BY NAME";
            SqlDataReader sdr = command.ExecuteReader();
            while (sdr.Read())
            {
                String COURSE = sdr[0].ToString();
                String DEPT = sdr[1].ToString();
             //   String datefrom = sdr[4].ToString();
              //  datefrom = datefrom.Substring(0, 10); //(DateTime.ParseExact(datefrom.Substring(0, 10), "yyyy-MM-dd", CultureInfo.InvariantCulture)).ToString("dd-MM-yyyy");
               // String dateto = sdr[5].ToString();
                //dateto = dateto.Substring(0, 10);// (DateTime.ParseExact(dateto.Substring(0, 10), "yyyy-MM-dd", CultureInfo.InvariantCulture)).ToString("dd-MM-yyyy");
                String VENUE = sdr[4].ToString();
                dept.Text = DEPT;
                oplanno.Text = OPLANNO;
                coursename.Text = COURSE;
                venue.Text = VENUE;

            }
            
            connection.Close();

            connection.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Print_All_Certificates.aspx?oplanno="+OPLANNO);
    }
}