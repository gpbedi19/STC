using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.IO;
using System.Globalization;

public partial class Hindi_Individual_Certificate : System.Web.UI.Page
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
        String ID = Request.QueryString["id"];
        try
        {


            SqlConnection connection = new Database().Create_Connection();
            SqlCommand command = connection.CreateCommand();
            //command.CommandText = "SELECT NAME, INSTITUTE, COURSE_NAME, DEPTT, START_DATE,END_DATE, CERTIFICATE_NO from PARTICIPANT ORDER BY NAME";
            // command.CommandText = "SELECT NAME, INSTITUTE, COURSE_NAME, DEPTT, START_DATE,END_DATE, CERTIFICATE_NO from PARTICIPANT WHERE ATTENDANCE='Y' AND OPLAN_NO = '"+OPLANNO+"' ORDER BY NAME";
            command.CommandText = "SELECT HINDI_NAME, HINDI_INSTITUTE, HINDI_COURSE_NAME, HINDI_DEPTT, START_DATE,END_DATE, CERTIFICATE_NO, HINDI_VENUE, HINDI_DURATION from PARTICIPANT WHERE ATTENDANCE = '1' AND ID = '" + ID + "'";
            SqlDataReader sdr = command.ExecuteReader();
            while (sdr.Read())
            {
                String name = sdr[0].ToString();
                String institute = sdr[1].ToString();
                String coursename = sdr[2].ToString();
                String dept = sdr[3].ToString();
                String datefrom = sdr[4].ToString();
                datefrom = datefrom.Substring(0, 10); //(DateTime.ParseExact(datefrom.Substring(0, 10), "yyyy-MM-dd", CultureInfo.InvariantCulture)).ToString("dd-MM-yyyy");
                String dateto = sdr[5].ToString();
                dateto = dateto.Substring(0, 10);// (DateTime.ParseExact(dateto.Substring(0, 10), "yyyy-MM-dd", CultureInfo.InvariantCulture)).ToString("dd-MM-yyyy");
                String certino = sdr[6].ToString();
                String venue = sdr[7].ToString();
                String hindiduration = sdr[8].ToString();

                StringBuilder html = new StringBuilder();
                html.Append("<p><p align='right'>" + "प्रमाण पत्र संख्या: " + certino + "</p><br>");
                html.Append("<br>");
                html.Append("<br>");
                html.Append("<br>");
                html.Append("<br><br><br><br><br><br><br><br>");
                html.Append("<p style='line-height:250%'><span class='all'>प्रमाणित किया जाता है कि</span><br>");
                html.Append("<b><span class='name'>" + name + "</span></b><br>");
                html.Append("<b><span class='institute'>" + institute + "</span></b><br>");
                html.Append("<span class='all'>ने संस्थान के</span><br>");
                html.Append("<span class='department'>" + dept + " विभाग" + "</span><br>");
                html.Append("<span class='all'>द्वारा</span><br>");
                html.Append("<b><span class='coursename'>" + coursename + "</span></b><br>");
                html.Append("<span class='all'>विषय पर</span><br>");
                html.Append("<span class='all'>दिनांक  </span>");
                html.Append("<span class='date'>" + datefrom + "</span>");
                html.Append("<span class='all'>&nbsp;&nbsp;से&nbsp;&nbsp;&nbsp;</span>");
                html.Append("<span class='date'>" + dateto + "</span>");
                html.Append("<span class='all'>  तक ( "+ hindiduration+" )</span><br>");
                html.Append("<b><span class='venue'>" + venue + "</span></b><br>");
                html.Append("<span class='all'>में</span><br>");
                html.Append("<span class='all'>आयोजित एआईसीटीई द्वारा मान्यता प्राप्त अल्पकालीन<br>");
                html.Append("प्रशिक्षण कार्यक्रम में भाग लिया है।</span><br>");


                html.Append("</p><br>");
                html.Append("<br>");
                html.Append("<br>");
                html.Append("<br><br>");
                html.Append("<b style='mso-bidi-font-weight:normal'><i style='mso-bidi-font-style:normal'><span class='foot'>");
                html.Append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; समन्वयक");
                html.Append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;विभागाध्यक्ष&nbsp;&nbsp;&nbsp;&nbsp;");
                html.Append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; निदेशक&nbsp;&nbsp; </span></i></b>");

                PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            }

            connection.Close();

            connection.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
        if (!IsPostBack)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Print", "javascript:window.print();", true);
        }
    }
}