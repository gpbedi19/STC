using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class test : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
           
            SqlConnection connection = new Database().Create_Connection();
      
            SqlCommand command1 = connection.CreateCommand();
            String CERTIFICATE_N0 = "1235";
            String ID="CE2CE0";
            command1.CommandText = "UPDATE PARTICIPANT SET CERTIFICATE_NO = '"+CERTIFICATE_N0+"' WHERE ID = '"+ID+"'";
            
           command1.ExecuteNonQuery();
           connection.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        } 
    }
}