using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

public partial class Individual_Cetificate : System.Web.UI.Page
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
            command.CommandText = "SELECT NAME, INSTITUTE, COURSE_NAME, DEPTT, START_DATE,END_DATE, CERTIFICATE_NO from PARTICIPANT WHERE ID = '" + ID + "' ORDER BY NAME";
            SqlDataReader sdr = command.ExecuteReader(); ;
            while (sdr.Read())
            {

                String NAME = sdr[0].ToString();
                String INSTITUTE = sdr[1].ToString();
                String COURSENAME = sdr[2].ToString();
                String DEPT = sdr[3].ToString();
                String DATEFROM = sdr[4].ToString();
                String DATETO = sdr[5].ToString();
                String CERTINO = sdr[6].ToString();
                name.Text = NAME;
                institute.Text = INSTITUTE;
                coursename.Text = COURSENAME;
                dept.Text = DEPT;
                datefrom.Text = DATEFROM.Substring(0, 10);// (DateTime.ParseExact(DATEFROM.Substring(0, 10), "yyyy-MM-dd", CultureInfo.InvariantCulture)).ToString("dd-MM-yyyy");
                dateto.Text = DATETO.Substring(0, 10);//(DateTime.ParseExact(DATETO.Substring(0, 10), "yyyy-MM-dd", CultureInfo.InvariantCulture)).ToString("dd-MM-yyyy");
                certino.Text = CERTINO;
            }

            connection.Close();

            connection.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Print", "javascript:window.print();", true);
        

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
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
          
    }

    protected void printButton_Click(object sender, EventArgs e)
    {

    }
 
}