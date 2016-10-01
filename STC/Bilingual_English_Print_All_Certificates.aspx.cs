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
public partial class Print_All_Certificates : System.Web.UI.Page
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
        String OPLANNO = Request.QueryString["oplanno"];
        try{

            
            SqlConnection connection =  new Database().Create_Connection();
            SqlCommand command = connection.CreateCommand();
            //command.CommandText = "SELECT NAME, INSTITUTE, COURSE_NAME, DEPTT, START_DATE,END_DATE, CERTIFICATE_NO from PARTICIPANT ORDER BY NAME";
           // command.CommandText = "SELECT NAME, INSTITUTE, COURSE_NAME, DEPTT, START_DATE,END_DATE, CERTIFICATE_NO from PARTICIPANT WHERE ATTENDANCE='Y' AND OPLAN_NO = '"+OPLANNO+"' ORDER BY NAME";
            command.CommandText = "SELECT NAME, INSTITUTE, COURSE_NAME, DEPTT, START_DATE,END_DATE, CERTIFICATE_NO, VENUE, DURATION from PARTICIPANT WHERE ATTENDANCE = '1' AND OPLAN_NO = '" + OPLANNO + "' ORDER BY NAME";
            SqlDataReader sdr= command.ExecuteReader();
            while(sdr.Read())
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
                duration.ToUpper();
                StringBuilder html = new StringBuilder();
                html.Append("<p style='page-break-after:always'><p align='right'>" +"Certificate No: "+certino+"</p><br>");
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
                html.Append("<span class='department'>" + dept +" Department"+ "</span><br>");
                html.Append("<span class='all'><br>from</span><br>");
                html.Append("<span class='date'>" + datefrom + "</span>");
                html.Append("<span class='all'>&nbsp;&nbsp;to&nbsp;&nbsp;</span>");
                html.Append("<span class='date'>" + dateto + "&nbsp;(" + duration + ")" + "</span><br>");
                html.Append("<span class='all'>at</span><br>");
                html.Append("<b><span class='venue'>"+venue+"</span></b>");
                html.Append("</p><br>");
                html.Append("<br>");
                html.Append("<br>");
                html.Append("<br><br><br><br>");
                html.Append("<b style='mso-bidi-font-weight:normal'><i style='mso-bidi-font-style:normal'><span class='foot'>");
                html.Append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Coordinator&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Head of Department&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Director</span></i></b>");
               
             /*   html.Append("<p style='line-height:275%'><span style='font-size:20pt; mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Monotype Corsiva&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'>This is to certify that</span><br>");
                html.Append("<b><span style='font-size: 21pt; mso-bidi-font-size: 10.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: black'>" + name + "</span></b><br>");
                html.Append("<span style='font-size: 19pt; mso-bidi-font-size: 10.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: black'>" + institute + "</span><br>");
                html.Append("<span style='font-size:17pt; line-height:107%;font-family:&quot;Monotype Corsiva&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'>Participated in the AICTE Recognized Short Term Course</span><br>");
                html.Append("<span style='font-size:17.0pt;line-height:107%;font-family:&quot;Monotype Corsiva&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'>on</span><br>");
                html.Append("<b><span style='font-size: 19.0pt; mso-bidi-font-size: 10.0pt; font-family: &quot;Arial Black&quot;,&quot;serif&quot;; color: black'>" + coursename + "</span></b><br>");
                html.Append("<span style='font-size:17.0pt;line-height:107%;font-family:&quot;Monotype Corsiva&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'>conducted by</span><br>");
                html.Append("<span style='font-size: 18pt; mso-bidi-font-size: 10.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: black'>" + dept + "</span><br>");
                html.Append("<span style='font-size:17.0pt;line-height:107%;font-family:&quot;Monotype Corsiva&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'>from</span><br>");
                html.Append("<span style='font-size: 20pt; mso-bidi-font-size: 10.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: black'>" + datefrom + "</span><br>");
                html.Append("<span style='font-size:17.0pt;line-height:107%;font-family:&quot;Monotype Corsiva&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'>to</span><br>");
                html.Append("<span style='font-size: 20pt; mso-bidi-font-size: 10.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: black'>" + dateto + "</span><br>");
                html.Append("<span style='font-size:17.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Monotype Corsiva&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'>at</span><br>");
                html.Append("<b><span style='font-size:20.0pt;line-height:107%;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'>NITTTR , Chandigarh</span></b>");
                html.Append("</p><br>");
                html.Append("<br>");
                html.Append("<br>");
                html.Append("<br>");
                html.Append("<br>");
                html.Append("<br><br>");
                html.Append("<b style='mso-bidi-font-weight:normal'><i style='mso-bidi-font-style:normal'><span style='font-size:18.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'>");
                html.Append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Coordinator");
                html.Append("<span style='mso-tab-count:3'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>");
                html.Append("<span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Director<span style='mso-tab-count:1'>&nbsp;&nbsp; </span></span></i></b>");
                html.Append("<br><br><br><br>");*/
                Placeholder1.Controls.Add(new Literal { Text = html.ToString() });
	   
                /*
                DataTable oTable = new DataTable("Certificate");
                oTable.Columns.Add(new DataColumn("Title", typeof(System.String)));

                oTable.Rows.Add("<p align='right'>" + certino + "</p><br>");
                oTable.Rows.Add("<br>");
                oTable.Rows.Add("<br>");
                oTable.Rows.Add("<br>");
                oTable.Rows.Add("<br>");
                oTable.Rows.Add("<p style='line-height:200%'><span style='font-size:20pt; mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Monotype Corsiva&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'>This is to certify that</span>");
                oTable.Rows.Add("<b><span style='font-size: 21pt; mso-bidi-font-size: 10.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: black'>" + name+"</span></b>");
                oTable.Rows.Add("<span style='font-size: 19pt; mso-bidi-font-size: 10.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: black'>"+institute+"</span>");
                oTable.Rows.Add("<span style='font-size:17pt; line-height:107%;font-family:&quot;Monotype Corsiva&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'>Participated in the AICTE Recognized Short Term Course</span>");
                oTable.Rows.Add("<span style='font-size:17.0pt;line-height:107%;font-family:&quot;Monotype Corsiva&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'>on</span>");
                oTable.Rows.Add("<b><span style='font-size: 20.0pt; mso-bidi-font-size: 10.0pt; font-family: &quot;Arial Black&quot;,&quot;serif&quot;; color: black'>"+coursename+"</span></b>");
                oTable.Rows.Add("<span style='font-size:17.0pt;line-height:107%;font-family:&quot;Monotype Corsiva&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'>conducted by</span>");
                oTable.Rows.Add("<span style='font-size: 18pt; mso-bidi-font-size: 10.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: black'>"+dept+"</span>");
               
                oTable.Rows.Add("<span style='font-size:17.0pt;line-height:107%;font-family:&quot;Monotype Corsiva&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'>from</span>");
                
                oTable.Rows.Add("<span style='font-size: 20pt; mso-bidi-font-size: 10.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: black'>"+datefrom+"</span>");
                oTable.Rows.Add("<span style='font-size:17.0pt;line-height:107%;font-family:&quot;Monotype Corsiva&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'>to</span>");
                
                oTable.Rows.Add("<span style='font-size: 20pt; mso-bidi-font-size: 10.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: black'>" + dateto+"</span>");
                
                oTable.Rows.Add("<span style='font-size:17.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Monotype Corsiva&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'>at</span>");
                oTable.Rows.Add("<b><span style='font-size:20.0pt;line-height:107%;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'>NITTTR , Chandigarh</span></b>");
                oTable.Rows.Add("</p><br>");
                oTable.Rows.Add("<br>");
                oTable.Rows.Add("<br>");
                oTable.Rows.Add("<br>");
                oTable.Rows.Add("<br>");
                oTable.Rows.Add("<br>");
                int i = 0;
                while (i < oTable.Rows.Count)
                {
                    int j = 0;
                    string sData = "";
                    while (j < oTable.Columns.Count)
                    {
                        sData += oTable.Rows[i][j].ToString() + "  ";
                        j++;
                    }
                    sData += "</br>";
                    Placeholder1.Controls.Add(new Literal { Text = sData });
                    i++;
                }
                 */
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
    protected void Button1_Click(object sender, EventArgs e){
    
        /*
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=UserDetails.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        this.Page.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0.0f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End(); 
         */
         
    }
    
}