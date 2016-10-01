using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Hindi_Print_Certificate : System.Web.UI.Page
{
    String CertificateSuffix = "/16";
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
        from.Attributes.Add("readonly", "readonly");
        to.Attributes.Add("readonly", "readonly");
    }
    protected void oplanno_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new Database().Create_Connection();
            SqlCommand command = connection.CreateCommand();
            String OPLAN_NO = oplanno.SelectedValue.ToString();
            command.CommandText = "SELECT COUNT(ID) FROM PARTICIPANT WHERE  ATTENDANCE = '1' AND OPLAN_NO = '" + OPLAN_NO + "'";
            // command.CommandText = "SELECT COUNT(ID) FROM PARTICIPANT WHERE ATTENDANCE='Y' AND OPLAN_NO = '" + OPLAN_NO + "'";
            SqlDataReader sdr = command.ExecuteReader();
            String COUNT = null;

            while (sdr.Read())
            {
                COUNT = sdr[0].ToString();
            }
            count.Text = COUNT;
            connection.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            String OPLAN_NO = oplanno.SelectedValue.ToString();
            int SERIALNO = Int32.Parse((serialno.Text));
            int COUNT = Int32.Parse((count.Text));
            SqlConnection connection = new Database().Create_Connection();
            SqlConnection connection1 = new Database().Create_Connection();
            SqlCommand command = connection.CreateCommand();
            SqlCommand command1 = connection1.CreateCommand();
            command.CommandText = "SELECT ID FROM PARTICIPANT WHERE ATTENDANCE = '1' AND OPLAN_NO = '" + OPLAN_NO + "' ORDER BY NAME";
            SqlDataReader sdr = command.ExecuteReader();
            while (sdr.Read())
            {
                ID = sdr[0].ToString();
                command1.CommandText = "UPDATE PARTICIPANT SET CERTIFICATE_NO = '" + SERIALNO +CertificateSuffix+"' WHERE ID = '" + ID + "'";
                command1.ExecuteNonQuery();
                SERIALNO++;
            }
            connection.Close();
            Response.Redirect("Hindi_Print_Certificates.aspx?oplanno=" + OPLAN_NO);
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            String OPLAN_NO = oplanno.SelectedValue.ToString();
            int SERIALNO = Int32.Parse((serialno.Text));
            int COUNT = Int32.Parse((count.Text));
            SqlConnection connection = new Database().Create_Connection();
            SqlConnection connection1 = new Database().Create_Connection();
            SqlCommand command = connection.CreateCommand();
            SqlCommand command1 = connection1.CreateCommand();
            command.CommandText = "SELECT ID FROM PARTICIPANT WHERE ATTENDANCE = '1' AND OPLAN_NO = '" + OPLAN_NO + "' ORDER BY NAME";
            SqlDataReader sdr = command.ExecuteReader();
            while (sdr.Read())
            {
                ID = sdr[0].ToString();
                command1.CommandText = "UPDATE PARTICIPANT SET CERTIFICATE_NO = '" + SERIALNO +CertificateSuffix+"' WHERE ID = '" + ID + "'";
                command1.ExecuteNonQuery();
                SERIALNO++;
            }
            connection.Close();
            Response.Redirect("Bilingual_English_Print_All_Certificates.aspx?oplanno=" + OPLAN_NO);
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
       
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        try
        {
            String OPLAN_NO = oplanno.SelectedValue.ToString();
            int SERIALNO = Int32.Parse((serialno.Text));
            int COUNT = Int32.Parse((count.Text));
            SqlConnection connection = new Database().Create_Connection();
            SqlConnection connection1 = new Database().Create_Connection();
            SqlCommand command = connection.CreateCommand();
            SqlCommand command1 = connection1.CreateCommand();
            command.CommandText = "SELECT ID FROM PARTICIPANT WHERE ATTENDANCE = '1' AND OPLAN_NO = '" + OPLAN_NO + "' ORDER BY NAME";
            SqlDataReader sdr = command.ExecuteReader();
            while (sdr.Read())
            {
                ID = sdr[0].ToString();
                command1.CommandText = "UPDATE PARTICIPANT SET CERTIFICATE_NO = '" + SERIALNO +CertificateSuffix+"' WHERE ID = '" + ID + "'";
                command1.ExecuteNonQuery();
                SERIALNO++;
            }
            connection.Close();
            Response.Redirect("Bilingual_Hindi_Print_All_Certificates.aspx?oplanno=" + OPLAN_NO);
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
    }
}