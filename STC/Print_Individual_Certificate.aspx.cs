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

public partial class Print_Individual_Certificate : System.Web.UI.Page
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
            command.CommandText = "SELECT NAME, INSTITUTE, COURSE_NAME, DEPTT, START_DATE,END_DATE, CERTIFICATE_NO, VENUE, DURATION from PARTICIPANT WHERE ID = '" + ID + "' AND ATTENDANCE = '1'";
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
                String duration = sdr[8].ToString();

                StringBuilder html = new StringBuilder();

                html.Append("<p align='right'>" + "Certificate No: " + certino + "</p><br>");
                //       html.Append("<p style='page-break-after:always'><p align='right'>" +"Certificate No: "+ certino +"/16"+"</p><br>");
                html.Append("<br>");
                html.Append("<br>");
                html.Append("<br>");
                html.Append("<br><br><br><br><br><br><br><br>");
                html.Append("<p style='line-height:250%'><span class='all'>This is to certify that</span><br>");
                html.Append("<b><span class='name'>" + name + "</span></b><br>");
                html.Append("<span class='institute'>" + institute + "</span><br>");
                html.Append("<span class='all'>Participated in the AICTE Recognized Short Term Course</span><br>");
                html.Append("<span class='all'>on</span><br>");
                html.Append("<b><span class='coursename'>" + coursename + "</span></b><br>");
                html.Append("<span class='all'>conducted by</span><br>");
                html.Append("<span class='department'>" + dept + "</span><br>");
                html.Append("<span class='all'><br>from</span><br>");
                html.Append("<span class='date'>" + datefrom + "</span>");
                html.Append("<span class='all'>&nbsp;&nbsp;to&nbsp;&nbsp;</span>");
                html.Append("<span class='date'>" + dateto + "&nbsp;(" + duration + ")" + "</span><br>");
                html.Append("<span class='all'>at</span><br>");
                html.Append("<b><span class='venue'>" + venue + "</span></b>");
                html.Append("</p><br>");
                html.Append("<br>");
                html.Append("<br>");
                html.Append("<br><br><br><br>");
                html.Append("<b style='mso-bidi-font-weight:normal'><i style='mso-bidi-font-style:normal'><span class='foot'>");
                html.Append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Coordinator");
                html.Append("<span style='mso-tab-count:3'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>");
                html.Append("<span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Director<span style='mso-tab-count:1'>&nbsp;&nbsp; </span></span></i></b>");
               
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