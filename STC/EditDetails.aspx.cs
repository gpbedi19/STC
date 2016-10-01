using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
public partial class AttendedParticipate : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        String OPLAN_NO = DropDownList2.SelectedValue.ToString();
        if (Session["name"] == null || Session["role"] == null || Session["role"].ToString() == "student")
        {
            Response.Redirect("Logout.aspx");
        }
        else if (Session["role"].ToString() == "student")
        {
            Response.Redirect("Default.aspx");
        }
        startdate.Attributes.Add("readonly", "readonly");
        enddate.Attributes.Add("readonly", "readonly");

        //Label3.Visible = false;
        //Label4.Visible = false;
        //Label5.Visible = false;
        //Label6.Visible = false;
        //Label7.Visible = false;
        //Label8.Visible = false;
        //Label9.Visible = false;
        //Label10.Visible = false;
        //TextBox1.Visible = false;
        GridView1.Visible = false;
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }





    protected void DropDownList2_PreRender(object sender, EventArgs e)
    {

       
        //DateTime MyDateTime = new DateTime();



        //SqlConnection connection = new Database().Create_Connection();
        //SqlCommand command = connection.CreateCommand();
        //String OPLAN_NO = DropDownList2.SelectedValue.ToString();

        //command.CommandText = "SELECT PTITLE, VENUE, START_DATE, END_DATE, DEPTT  from COURSE_REG where OPLAN_NO = '" + OPLAN_NO + "'";

        //SqlDataReader sdr = command.ExecuteReader();

        //String COURSENAME = null, DEPTT = null, VENUE = null, STARTDATE = null, ENDDATE = null;
        //while (sdr.Read())
        //{

        //    COURSENAME = sdr[0].ToString();
        //    VENUE = sdr[1].ToString();
        //    STARTDATE = sdr[2].ToString();
        //    ENDDATE = sdr[3].ToString();
        //    DEPTT = sdr[4].ToString();
        //    department.Text = DEPTT;
        //    coursename.Text = COURSENAME;
        //    oplan_no.Text = DropDownList2.SelectedValue.ToString();
        //    venue.Text = VENUE;
        //    datefrom.Text = STARTDATE.Substring(0, 10);
        //    dateto.Text = ENDDATE.Substring(0, 10);
        //}

        
        //connection.Close();

        //Label3.Visible = true;
        //Label4.Visible = true;
        //Label5.Visible = true;
        //Label6.Visible = true;
        //Label7.Visible = true;
        //Label8.Visible = true;
        //Label9.Visible = true;
        //Label10.Visible = true;
        //TextBox1.Visible = true;
       
    }

    protected void DropDownList2_DataBound(object sender, EventArgs e)
    {

        DropDownList2.Items.Insert(0, new ListItem("- Select -", ""));
    }
private void BindData()
{
    string strQuery = "select ID,Name,Hindi_Name,Institute,Hindi_Institute" +
                       " from participant where OPLAN_NO= '" + DropDownList2.SelectedValue.ToString() + "'";
    SqlCommand cmd = new SqlCommand(strQuery);
    GridView1.DataSource = GetData(cmd);
    GridView1.DataBind();
}

    private DataTable GetData(SqlCommand cmd)
    {
        DataTable dt = new DataTable();
        SqlConnection con = new Database().Create_Connection();
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        
        sda.SelectCommand = cmd;
        sda.Fill(dt);
        return dt;
    }
    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        BindData();
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }

protected void AddNewCustomer(object sender, EventArgs e)
{
    string ID = ((TextBox)GridView1.FooterRow.FindControl("txtID")).Text; 
    string Name = ((TextBox)GridView1.FooterRow.FindControl("txtName")).Text;
    string HindiName = ((TextBox)GridView1.FooterRow.FindControl("txtHindiName")).Text;
    string Institute = ((TextBox)GridView1.FooterRow.FindControl("txtInstitute")).Text;
    string HindiInstitute = ((TextBox)GridView1.FooterRow.FindControl("txtHindiInstitute")).Text;
    SqlConnection con = new Database().Create_Connection();
    SqlCommand cmd = new SqlCommand();
    cmd.CommandType = CommandType.Text;
    cmd.CommandText = "insert into participant(ID, Name, Hindi_Name, Institute, Hindi_Institute) " +
    "values(@ID, @Name, @HindiName, @Institute, @HindiInstitute);" +
     "select ID,Name,Hindi_Name,Institute, Hindi_Institute from participant where OPLAN_NO= '" + DropDownList2.SelectedValue.ToString() + "'";
    cmd.Parameters.Add("@ID", SqlDbType.Int).Value = ID;
    cmd.Parameters.Add("@Name", SqlDbType.NVarChar).Value = Name;
    cmd.Parameters.Add("@HindiName", SqlDbType.NVarChar).Value = HindiName;
    cmd.Parameters.Add("@Institute", SqlDbType.NVarChar).Value = Institute;
    cmd.Parameters.Add("@HindiInstitute", SqlDbType.NVarChar).Value = HindiInstitute;
    GridView1.DataSource = GetData(cmd);
    GridView1.DataBind(); 
}

    protected void DeleteCustomer(object sender, EventArgs e)
    {
        LinkButton lnkRemove = (LinkButton)sender;
        SqlConnection con = new Database().Create_Connection();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from  participant where " +
        "ID=@ID;" +
         "select ID,Name,Hindi_Name,Institute,Hindi_Institute from participant where OPLAN_NO= '" + DropDownList2.SelectedValue.ToString() + "'";
        cmd.Parameters.Add("@ID", SqlDbType.Int).Value = lnkRemove.CommandArgument;
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind(); 
    }
    protected void EditCustomer(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindData();
    }
    protected void CancelEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindData();
    }
    protected void UpdateCustomer(object sender, GridViewUpdateEventArgs e)
    {
        string ID = ((Label)GridView1.Rows[e.RowIndex].FindControl("lblID")).Text;
        string Name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtName")).Text;
        string HindiName = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtHindiName")).Text;
        string Institute = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtInstitute")).Text;
        string HindiInstitute = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtHindiInstitute")).Text;
        SqlConnection con = new Database().Create_Connection();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update participant set Name=@Name,Hindi_Name=@HindiName,Institute=@Institute,Hindi_Institute=@HindiInstitute where ID=@ID; select ID,Name,Hindi_Name,Institute,Hindi_Institute from participant  where OPLAN_NO= '" + DropDownList2.SelectedValue.ToString() + "'";
        cmd.Parameters.Add("@ID", SqlDbType.Int).Value = ID;
        cmd.Parameters.Add("@Name", SqlDbType.NVarChar).Value = Name;
        cmd.Parameters.Add("@HindiName", SqlDbType.NVarChar).Value =HindiName;
        cmd.Parameters.Add("@Institute", SqlDbType.NVarChar).Value = Institute;
        cmd.Parameters.Add("@HindiInstitute", SqlDbType.NVarChar).Value = HindiInstitute;
        GridView1.EditIndex = -1;
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind(); 
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        BindData();
        GridView1.Visible = true;
    }
}
