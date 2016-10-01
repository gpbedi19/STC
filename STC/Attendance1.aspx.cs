using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Attendance1 : System.Web.UI.Page
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
    //private void PopulateHobbies()
    //{

    //}

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new Database().Create_Connection();
        
         
            SqlCommand cmd = new SqlCommand();
            
            
                cmd.CommandText = "update PARTICIPANT set ATTENDANCE = @IsSelected" +
                                  " where ID=@Id";
                cmd.Connection = conn;
           
            
                foreach (ListItem item in CheckBoxList1.Items)
                {
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@IsSelected", item.Selected);
                    cmd.Parameters.AddWithValue("@Id", item.Value);
                    cmd.ExecuteNonQuery();
                }


                bool isAnySelected = CheckBoxList1.SelectedIndex != -1;
                if (isAnySelected)
                {
                    {
                        SqlCommand cmd1 = new SqlCommand();
                        {
                            cmd1.CommandText = "UPDATE COURSE_REG set STATUS='CONDUCTED' where OPLAN_NO=@OPLAN_NO";
                            cmd1.Connection = conn;
                          
                            cmd1.Parameters.Clear();
                            cmd1.Parameters.AddWithValue("@OPLAN_NO", DropDownList2.SelectedItem.ToString());
                            cmd1.ExecuteNonQuery();

                            conn.Close();
                        }
                    }
                }
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('ATTENDANCE MARKED')</script>");
                conn.Close();
               // Response.Redirect("Attendance1.aspx");
        
    }
    
        
  

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        foreach (ListItem item in CheckBoxList1.Items)
        {
            item.Selected = true;
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        foreach (ListItem item in CheckBoxList1.Items)
        {
            item.Selected = false;
        }

    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String OPLAN_NO = DropDownList2.SelectedValue.ToString();
        SqlConnection conn = new Database().Create_Connection();


        SqlCommand cmd = new SqlCommand();


        cmd.CommandText = "select * from participant where OPLAN_NO='" + OPLAN_NO + "' ";
        cmd.Connection = conn;
     
        SqlDataReader sdr = cmd.ExecuteReader();

        CheckBoxList1.Items.Clear();
        while (sdr.Read())
        {

            ListItem item = new ListItem();

            item.Text = sdr["NAME"].ToString();
            item.Value = sdr["ID"].ToString();

            item.Selected = Convert.ToBoolean(sdr["ATTENDANCE"]);
            CheckBoxList1.Items.Add(item);

        }



        conn.Close();
    }

   
}