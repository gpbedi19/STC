using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Class1
/// </summary>
public class Database
{
    public SqlConnection Create_Connection()
    {
        SqlConnection connection = null;
        try
        {
            connection = new SqlConnection(@"Data Source=SWLAB\SQLEXPRESS;Initial Catalog=db_nitttr;Integrated Security=True");
            connection.Open();
            
        }
        catch (Exception ex)
        {
            Console.WriteLine("" + ex.Message);
        }
        return connection;
    }
}