using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Login : System.Web.UI.Page
{
    private string md5(string sPassword)
    {
        System.Security.Cryptography.MD5CryptoServiceProvider x = new System.Security.Cryptography.MD5CryptoServiceProvider();
        byte[] bs = System.Text.Encoding.UTF8.GetBytes(sPassword);
        bs = x.ComputeHash(bs);
        System.Text.StringBuilder s = new System.Text.StringBuilder();
        foreach (byte b in bs)
        {
            s.Append(b.ToString("x2").ToLower());
        }
        return s.ToString();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void doIt(object sender, EventArgs e)
    {
        string uname = Request.Form["uname"];
        
        string pwd1 = Request.Form["pwd"];
        string pwd = md5(pwd1);
        String role = Request.Form["role"];
       
        try
        {

            //  Session["username"] = txtUserName.Text;

            SqlConnection connection = new Database().Create_Connection();
            SqlCommand command = connection.CreateCommand();
            command.CommandText = "select * from login where username='" + uname+ "' and password='" + pwd + "' and role='"+ role+"' ";

            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["name"] = uname;
                Session["role"] = role;
                Response.Redirect("Default.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('INVALID USERNAME AND PASSWORD')</script>");
            }
            connection.Close();

        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
    }
}