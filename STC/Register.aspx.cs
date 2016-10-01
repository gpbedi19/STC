using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Default3 : System.Web.UI.Page
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
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //Create ConnectionString and Inser Statement
      //string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection connection = new Database().Create_Connection();
        SqlCommand command = connection.CreateCommand();
        command.CommandText = "INSERT INTO LOGIN (FirstName,LastName,UserName,Password,Email) values (@FirstName,@LastName,@UserName,@Password,@Email)";
        //Create SQL connection
       
        //Create SQL Command And Sql Parameters
        

      

        SqlParameter firstName = new SqlParameter("@FirstName", SqlDbType.VarChar, 50);
        firstName.Value = TextBox1.Text.ToString();
        command.Parameters.Add(firstName);

        SqlParameter lastName = new SqlParameter("@LastName", SqlDbType.VarChar, 50);
        lastName.Value = TextBox2.Text.ToString();
        command.Parameters.Add(lastName);

        SqlParameter userName = new SqlParameter("@UserName", SqlDbType.VarChar, 50);
        userName.Value = txtUserName.Text.ToString();
        command.Parameters.Add(userName);

        SqlParameter pwd = new SqlParameter("@Password", SqlDbType.VarChar, 50);
        
        pwd.Value =  md5(TextBox3.Text);

        command.Parameters.Add(pwd);


        SqlParameter email = new SqlParameter("@Email", SqlDbType.VarChar, 50);

        email.Value = TextBox4.Text.ToString();

        command.Parameters.Add(email);
        


        //SqlParameter gender = new SqlParameter("@Gender", SqlDbType.VarChar, 10);

        //gender.Value = rdoGender.SelectedItem.ToString();

        //command.Parameters.Add(gender);



        try
        {

           

            command.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            txtUserName.Text = "";
            TextBox4.Text = "";
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Participant Registered')</script>");
           
        }
        catch (SqlException ex)
        {

            string errorMessage = "Error in registering user";
            errorMessage += ex.Message;
            throw new Exception(errorMessage);

        }
        finally
        {
            connection.Close();
        }
    }
}
