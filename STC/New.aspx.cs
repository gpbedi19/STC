using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
public partial class New : System.Web.UI.Page
{

    int JAK = 0, HP = 0, PB = 0, CHD = 0, HAR = 0, UK = 0, UP = 0, DEL = 0, RAJ = 0, OTH = 0, JAK1 = 0, HP1 = 0, PB1 = 0, CHD1 = 0, HAR1 = 0, UK1 = 0, UP1 = 0, DEL1 = 0, RAJ1 = 0, OTH1 = 0 ,TOTAL=0, TOTAL1=0;

SqlConnection connection = new Database().Create_Connection();
         
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null || Session["role"] == null)
        {
            Response.Redirect("Logout.aspx");
        }
         else if (Session["role"].ToString() == "student")
        {
            Response.Redirect("Default.aspx");
        }
        startdate.Attributes.Add("readonly", "readonly");
        enddate.Attributes.Add("readonly", "readonly");
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
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {


        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            JAK += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "JAK"));
            HP += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "HP"));
            PB += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "PB"));
            CHD += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "CHD"));
            HAR += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "HAR"));
            UK += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "UK"));
            UP += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "UP"));
            DEL += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "DEL"));
            RAJ += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "RAJ"));
            OTH += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "OTH"));
           TOTAL += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "TOTAL"));
            JAK1 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "JAK1"));
            HP1 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "HP1"));
            PB1 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "PB1"));
            CHD1 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "CHD1"));
            HAR1 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "HAR1"));
            UK1 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "UK1"));
            UP1 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "UP1"));
            DEL1 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "DEL1"));
            RAJ1 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "RAJ1"));
            OTH1 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "OTH1"));
            TOTAL1 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "TOTAL1"));
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[2].Text = "Total";
            e.Row.Cells[2].Font.Bold = true;
            e.Row.Cells[3].Text = JAK.ToString();
            e.Row.Cells[3].Font.Bold = true;
            e.Row.Cells[4].Text = HP.ToString();
            e.Row.Cells[4].Font.Bold = true;
            e.Row.Cells[5].Text = PB.ToString();
            e.Row.Cells[5].Font.Bold = true;
            e.Row.Cells[6].Text = CHD.ToString();
            e.Row.Cells[6].Font.Bold = true;
            e.Row.Cells[7].Text = HAR.ToString();
            e.Row.Cells[7].Font.Bold = true;
            e.Row.Cells[8].Text = UK.ToString();
            e.Row.Cells[8].Font.Bold = true;
            e.Row.Cells[9].Text = UP.ToString();
            e.Row.Cells[9].Font.Bold = true;
            e.Row.Cells[10].Text = DEL.ToString();
            e.Row.Cells[10].Font.Bold = true;
            e.Row.Cells[11].Text = RAJ.ToString();
            e.Row.Cells[11].Font.Bold = true;
            e.Row.Cells[12].Text = OTH.ToString();
            e.Row.Cells[12].Font.Bold = true;
            e.Row.Cells[13].Text = TOTAL.ToString();
            e.Row.Cells[13].Font.Bold = true;
            e.Row.Cells[14].Text = JAK1.ToString();
            e.Row.Cells[14].Font.Bold = true;
            e.Row.Cells[15].Text = HP1.ToString();
            e.Row.Cells[15].Font.Bold = true;
            e.Row.Cells[16].Text = PB1.ToString();
            e.Row.Cells[16].Font.Bold = true;
            e.Row.Cells[17].Text = CHD1.ToString();
            e.Row.Cells[17].Font.Bold = true;
            e.Row.Cells[18].Text = HAR1.ToString();
            e.Row.Cells[18].Font.Bold = true;
            e.Row.Cells[19].Text = UK1.ToString();
            e.Row.Cells[19].Font.Bold = true;
            e.Row.Cells[20].Text = UP1.ToString();
            e.Row.Cells[20].Font.Bold = true;
            e.Row.Cells[21].Text = DEL1.ToString();
            e.Row.Cells[21].Font.Bold = true;
            e.Row.Cells[22].Text = RAJ1.ToString();
            e.Row.Cells[22].Font.Bold = true;
            e.Row.Cells[23].Text = OTH1.ToString();
            e.Row.Cells[23].Font.Bold = true;
            e.Row.Cells[24].Text = TOTAL1.ToString();
            e.Row.Cells[24].Font.Bold = true;

        }


    }
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void enddate_PreRender(object sender, EventArgs e)
    {

        //String search = DropDownList1.SelectedValue;
        //SqlCommand command = connection.CreateCommand();
        //command.CommandText = "select OPLAN_NO AS 'OPLAN-NO',COURSE_NAME ,COUNT(case when STATE='JAMMU & KASHMIR' and ATTENDANCE='0' then 1 end) as 'JAK',COUNT(case when STATE='HIMACHAL PRADESH' and ATTENDANCE='0' then 1 end) as 'HP',COUNT(case when STATE='PUNJAB' and ATTENDANCE='0' then 1 end) as 'PB',COUNT(case when STATE='CHANDIGARH' and ATTENDANCE='0' then 1 end) as 'CHD' ,count(case when STATE='HARYANA' and ATTENDANCE='0' then 1 end) AS 'HAR', count(case when STATE='UTTRAKHAND' and ATTENDANCE='0' then 1 end) as 'UK',count(case when STATE='UTTAR PRADESH' and ATTENDANCE='0' then 1 end) as 'UP',count(case when STATE='DELHI' and ATTENDANCE='0' then 1 end) as 'DEL',count(case when STATE='RAJASTHAN' and ATTENDANCE='0' then 1 end) as 'RAJ',count(case when STATE!='JAMMU & KASHMIR' AND STATE!='JAMMU & KASHMIR' AND STATE!='HIMACHAL PRADESH' AND STATE!='PUNJAB' AND STATE!='CHANDIGARH' AND STATE!='HARYANA' AND STATE!='UTTRAKHAND' AND STATE!='UTTAR PRADESH' AND STATE!='DELHI' AND STATE!='RAJASTHAN' and ATTENDANCE='0' then 1 end) AS 'OTH', COUNT(case when STATE='JAMMU & KASHMIR' and ATTENDANCE='1' then 1 end) as 'JAK',COUNT(case when STATE='HIMACHAL PRADESH' and ATTENDANCE='1' then 1 end) as 'HP',COUNT(case when STATE='PUNJAB' and ATTENDANCE='1' then 1 end) as 'PB',COUNT(case when STATE='CHANDIGARH' and ATTENDANCE='1' then 1 end) as 'CHD' ,COUNT(case when STATE='HARYANA' and ATTENDANCE='1' then 1 end) as 'HAR' ,count(case when STATE='UTTRAKHAND' and ATTENDANCE='1' then 1 end) as 'UK',count(case when STATE='UTTAR PRADESH' and ATTENDANCE='1' then 1 end) as 'UP',count(case when STATE='DELHI' and ATTENDANCE='1' then 1 end) as 'DEL',count(case when STATE='RAJASTHAN' and ATTENDANCE='1' then 1 end) as 'RAJ',count(case when STATE!='JAMMU & KASHMIR' AND STATE!='JAMMU & KASHMIR' AND STATE!='HIMACHAL PRADESH' AND STATE!='PUNJAB' AND STATE!='CHANDIGARH' AND STATE!='HARYANA' AND STATE!='UTTRAKHAND' AND STATE!='UTTAR PRADESH' AND STATE!='DELHI' AND STATE!='RAJASTHAN' and ATTENDANCE='0' then 1 end) as 'OTH' from participant WHERE (START_DATE BETWEEN @START_DATE AND @START_DATE2) and  (DEPTT like '%' + @search + '%') group by oplan_no,COURSE_NAME";
        
        
        //command.Parameters.Add("@search", SqlDbType.VarChar).Value = search;
        //command.Parameters.Add("@START_DATE", SqlDbType.VarChar).Value = startdate.Text;
        //command.Parameters.Add("@START_DATE2", SqlDbType.VarChar).Value = enddate.Text;
    
        //command.ExecuteNonQuery();
        //SqlDataAdapter da = new SqlDataAdapter();
        //da.SelectCommand = command;
        //DataSet ds = new DataSet();
        //da.Fill(ds, "Name");
        //GridView1.DataSource = ds;
        //GridView1.DataBind();




        //String str1 = "select COUNT(case when STATE='JAMMU & KASHMIR' and ATTENDANCE='1' then 1 end) as 'JAK',COUNT(case when STATE='HIMACHAL PRADESH' and ATTENDANCE='1' then 1 end) as 'HP',COUNT(case when STATE='PUNJAB' and ATTENDANCE='1' then 1 end) as 'PB',COUNT(case when STATE='CHANDIGARH' and ATTENDANCE='1' then 1 end) as 'CHD' ,COUNT(case when STATE='HARYANA' and ATTENDANCE='1' then 1 end) as 'HAR' ,count(case when STATE='UTTRAKHAND' and ATTENDANCE='1' then 1 end) as 'UK',count(case when STATE='UTTAR PRADESH' and ATTENDANCE='1' then 1 end) as 'UP',count(case when STATE='DELHI' and ATTENDANCE='1' then 1 end) as 'DEL',count(case when STATE='RAJASTHAN' and ATTENDANCE='1' then 1 end) as 'RAJ',count(case when STATE!='JAMMU & KASHMIR' AND STATE!='JAMMU & KASHMIR' AND STATE!='HIMACHAL PRADESH' AND STATE!='PUNJAB' AND STATE!='CHANDIGARH' AND STATE!='HARYANA' AND STATE!='UTTRAKHAND' AND STATE!='UTTAR PRADESH' AND STATE!='DELHI' AND STATE!='RAJASTHAN' and ATTENDANCE='0' then 1 end) as 'OTH' from participant WHERE (START_DATE BETWEEN @START_DATE AND @START_DATE2) and  (DEPTT like '%' + @search + '%') group by oplan_no,COURSE_NAME";


        //connection.Close();
       
        Label4.Text = DropDownList1.SelectedItem.ToString();
        Label6.Text = startdate.Text;
        Label8.Text = enddate.Text;
        Label1.Font.Bold = true;
        Label1.Visible = true;
        Label2.Visible = true;
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        Label7.Visible = true;
        Label8.Visible = true;
        //TextBox1.Visible = true;

    }
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {

    }


    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
    {

    }
  
}
