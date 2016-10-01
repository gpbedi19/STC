<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="New.aspx.cs" Inherits="New" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <head>
    <title></title>
     <script language="javascript" type="text/javascript">
         function printDiv(divID) {
             //Get the HTML of div
             var divElements = document.getElementById(divID).innerHTML;
             //Get the HTML of whole page
             var oldPage = document.body.innerHTML;

             //Reset the page's HTML with div's HTML only
             document.body.innerHTML =
              "<html><head><title></title></head><body>" +
              divElements + "</body>";

             //Print Page
             window.print();

             //Restore orignal HTML
             document.body.innerHTML = oldPage;


         }
         function Button2_onclick() {

         }

    </script>
    <style type="text/css">
      
      .style4

    {
   
    font-size: large;font-weight: bold;
    } 
    
     .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 138px;
        }
        .style10
        {
        }
        .style11
        {
            width: 597px;
        }
        .style12
        {
            width: 66px;
        }
        .style13
        {
            width: 360px;
        }
        .style14
        {
            width: 444px;
        }
    </style>
</head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <div style="width:100%; height:auto; background-color: #FFFFb2;">

<body>
    <form id="form1">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style10" colspan="5">
                <center><b><u>STATE WISE PARTICIPATION, COURSE WISE & DATE WISE</u></b></center></td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" Text="Co-ordinating Deptt."></asp:Label>
            </td>
            <td class="style11">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="DEPTT" DataValueField="DEPTT" 
                    style="margin-bottom: 0px" AutoPostBack="True" AppendDataBoundItems="True" 
                    Width="370px">
                    <asp:ListItem Selected="True">--SELECT--</asp:ListItem>
                   <asp:ListItem Text="All Departments" Value=" " />
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [DEPTT] FROM [COURSE_REG]" 
                    onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">&nbsp;</td>
            <td class="style4"><strong>From:</strong></td><td class="style11">
                    <asp:TextBox ID="startdate" runat="server" AutoPostBack="True" contentEditable="false" 

 Width="170px"></asp:TextBox>
                                <asp:CalendarExtender ID="startdate_CalendarExtender" 
                        runat="server" Enabled="True" TargetControlID="startdate" Format="yyyy-MM-dd">
                    </asp:CalendarExtender>
                    <strong>To:</strong><asp:TextBox ID="enddate" runat="server" AutoPostBack="True" Width="167px" 
                        onprerender="enddate_PreRender"></asp:TextBox>
                                <asp:CalendarExtender ID="enddate_CalendarExtender" runat="server" Format="yyyy-MM-dd"
                        Enabled="True" TargetControlID="enddate">
                    </asp:CalendarExtender>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                                </td><td class="style22">
                    </td><td class="style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="style13">&nbsp;</td>
            <td class="style4">&nbsp;</td><td class="style11">
                    &nbsp;</td><td class="style22">
                    &nbsp;</td><td class="style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style11" align="         ">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <input type="button" value="Print Report" 
      visible="false"  onclick="javascript:printDiv('print')" id="Button2" 
                    onclick="return Button2_onclick()" 
                    style="background-color: #3333CC; border: thin solid #FFFFFF; color: #FFFFFF" /></td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style11" align=left>
                
                 
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        </table>
    
    <br />
    <div id="print">
    <table class="style1">
        <tr>
            <td align="center">
              <h3>  <u>
                  <asp:Label ID="Label2" runat="server" 
                      Text="STATE WISE PARTICIPATION, COURSE WISE &amp; DATE WISE"></asp:Label></u></h3>
            </td>
        </tr>
        <tr>
            <td align="center">
               <b><asp:Label ID="Label3" runat="server" Text="Department:" Visible="False"></asp:Label>
                <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label></b> 
            </td>
        </tr>
        <tr>
            <td align="center">
               <b> <asp:Label ID="Label5" runat="server" Text="Date From:" Visible="False"></asp:Label>
                <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
                &nbsp;
                <asp:Label ID="Label7" runat="server" Text="To:" Visible="False"></asp:Label>
                <asp:Label ID="Label8" runat="server" Visible="False"></asp:Label></b>
            </td>
        </tr>
    </table>
    &nbsp;
    <center>
    <br />
    
    <br />
    &nbsp;&nbsp;</center>
   
    &nbsp;</form>
    <table class="style1" cellspacing="0px" cellpadding="0px">
        <tr>
            <td class="style14">
    <asp:GridView ID="GridView1" runat="server" CellPadding="5" 
                ShowFooter="True"  
            style="margin-left: 0px; margin-bottom: 0px;"  CaptionAlign="Right" HorizontalAlign="Left" 
            onrowdatabound="GridView1_RowDataBound" Height="20%" Width="2%" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" 
                    BorderWidth="1px" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource2" 
                    
                    
                    
                    
                    Caption=" &lt;span class=&quot;style4&quot;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No. of Sponsored Participants &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No. of Attended Participants&lt;/span&gt;">
             <Columns> 
             <asp:TemplateField HeaderText="S No">
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                </ItemTemplate>
                <ItemStyle Width="2%" />
                <FooterStyle BackColor="#669900" />
                 <HeaderStyle Width="500px" BackColor="#009900" />
                    <ItemStyle BackColor="#99FF66" />
            </asp:TemplateField>
                 <asp:BoundField DataField="OPLAN-NO" HeaderText="OPLAN-NO" 
                     SortExpression="OPLAN-NO" >
                      <FooterStyle BackColor="#669900" />
                 <HeaderStyle Width="500px" BackColor="#009900" />
                    <ItemStyle BackColor="#99FF66" />
                 </asp:BoundField>
                 <asp:BoundField DataField="COURSE_NAME" ItemStyle-Width="40%" HeaderText="COURSE_NAME" 
                     SortExpression="COURSE_NAME" >
<ItemStyle Width="40%"></ItemStyle>
 <FooterStyle BackColor="#669900" />
                 <HeaderStyle Width="500px" BackColor="#009900" />
                    <ItemStyle BackColor="#99FF66" />
                 </asp:BoundField>
                 <asp:BoundField DataField="JAK" HeaderText="JAK" ReadOnly="True" 
                     SortExpression="JAK" >
                 <FooterStyle BackColor="#3399FF" />
                 <HeaderStyle BackColor="#0033CC" />
                 <ItemStyle BackColor="#66FFFF" />
                 </asp:BoundField>
                 <asp:BoundField DataField="HP" HeaderText="HP" ReadOnly="True" 
                     SortExpression="HP" >
                      <FooterStyle BackColor="#3399FF" />
                 <HeaderStyle BackColor="#0033CC" />
                 <ItemStyle BackColor="#66FFFF" />
            </asp:BoundField>
                 <asp:BoundField DataField="PB" HeaderText="PB" ReadOnly="True" 
                     SortExpression="PB" >
                     <FooterStyle BackColor="#3399FF" />
                 <HeaderStyle BackColor="#0033CC" />
                 <ItemStyle BackColor="#66FFFF" />
                 </asp:BoundField>
                 <asp:BoundField DataField="CHD" HeaderText="CHD" ReadOnly="True" 
                     SortExpression="CHD" >
                     <FooterStyle BackColor="#3399FF" />
                 <HeaderStyle BackColor="#0033CC" />
                 <ItemStyle BackColor="#66FFFF" />
                 </asp:BoundField>
                 <asp:BoundField DataField="HAR" HeaderText="HAR" ReadOnly="True" 
                     SortExpression="HAR" >
                     <FooterStyle BackColor="#3399FF" />
                 <HeaderStyle BackColor="#0033CC" />
                 <ItemStyle BackColor="#66FFFF" />
                 </asp:BoundField>
                 <asp:BoundField DataField="UK" HeaderText="UK" ReadOnly="True" 
                     SortExpression="UK" >
                     <FooterStyle BackColor="#3399FF" />
                 <HeaderStyle BackColor="#0033CC" />
                 <ItemStyle BackColor="#66FFFF" />
                 </asp:BoundField>
                 <asp:BoundField DataField="UP" HeaderText="UP" ReadOnly="True" 
                     SortExpression="UP" >
                     <FooterStyle BackColor="#3399FF" />
                 <HeaderStyle BackColor="#0033CC" />
                 <ItemStyle BackColor="#66FFFF" />
                 </asp:BoundField>
                 <asp:BoundField DataField="DEL" HeaderText="DEL" ReadOnly="True" 
                     SortExpression="DEL" >
                     <FooterStyle BackColor="#3399FF" />
                 <HeaderStyle BackColor="#0033CC" />
                 <ItemStyle BackColor="#66FFFF" />
                 </asp:BoundField>
                 <asp:BoundField DataField="RAJ" HeaderText="RAJ" ReadOnly="True" 
                     SortExpression="RAJ" >
                     <FooterStyle BackColor="#3399FF" />
                 <HeaderStyle BackColor="#0033CC" />
                 <ItemStyle BackColor="#66FFFF" />
                 </asp:BoundField>
                 <asp:BoundField DataField="OTH" HeaderText="OTH" ReadOnly="True" 
                     SortExpression="OTH" >
                     <FooterStyle BackColor="#3399FF" />
                 <HeaderStyle BackColor="#0033CC" />
                 <ItemStyle BackColor="#66FFFF" />
                 </asp:BoundField>
                 <asp:BoundField DataField="TOTAL" HeaderText="TOTAL-S" ReadOnly="True" 
                     SortExpression="TOTAL" >
                     <FooterStyle BackColor="#996600" />
                 <HeaderStyle BackColor="#663300" />
                 <ItemStyle BackColor="#FFCC99" />
                 </asp:BoundField>
                 <asp:BoundField DataField="JAK1" HeaderText="JAK" ReadOnly="True" 
                     SortExpression="JAK1" >
                 <HeaderStyle BackColor="#DA2916" />
                 </asp:BoundField>
                 <asp:BoundField DataField="HP1" HeaderText="HP" ReadOnly="True" 
                     SortExpression="HP1" >
                 <HeaderStyle BackColor="#DA2916" />
                 </asp:BoundField>
                 <asp:BoundField DataField="PB1" HeaderText="PB" ReadOnly="True" 
                     SortExpression="PB1" >
                 <HeaderStyle BackColor="#DA2916" />
                 </asp:BoundField>
                 <asp:BoundField DataField="CHD1" HeaderText="CHD" ReadOnly="True" 
                     SortExpression="CHD1" >
                <HeaderStyle BackColor="#DA2916" />
                 </asp:BoundField>
                 <asp:BoundField DataField="HAR1" HeaderText="HAR" ReadOnly="True" 
                     SortExpression="HAR1" >
               <HeaderStyle BackColor="#DA2916" />
                 </asp:BoundField>
                 <asp:BoundField DataField="UK1" HeaderText="UK" ReadOnly="True" 
                     SortExpression="UK1" >
                     <HeaderStyle BackColor="#DA2916" />
                 </asp:BoundField>
                 <asp:BoundField DataField="UP1" HeaderText="UP" ReadOnly="True" 
                     SortExpression="UP1" >
                 <HeaderStyle BackColor="#DA2916" />
                 </asp:BoundField>
                 <asp:BoundField DataField="DEL1" HeaderText="DEL" ReadOnly="True" 
                     SortExpression="DEL1" >
                 <HeaderStyle BackColor="#DA2916" />
                 </asp:BoundField>
                 <asp:BoundField DataField="RAJ1" HeaderText="RAJ" ReadOnly="True" 
                     SortExpression="RAJ1" >
                 <HeaderStyle BackColor="#DA2916" />
                 </asp:BoundField>
                 <asp:BoundField DataField="OTH1" HeaderText="OTH" ReadOnly="True" 
                     SortExpression="OTH1" >
                     <HeaderStyle BackColor="#DA2916" />
                 </asp:BoundField>
                 <asp:BoundField DataField="TOTAL1" HeaderText="TOTAL-A" ReadOnly="True" 
                     SortExpression="TOTAL1" >
                 <FooterStyle BackColor="#996600" />
                 <HeaderStyle BackColor="#663300" />
                 <ItemStyle BackColor="#FFCC99" />
                 </asp:BoundField>
    </Columns>
   
        <EditRowStyle HorizontalAlign="Center" Width="100%" Wrap="True" />
   
        <FooterStyle BackColor="#d2691e" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000"  Width="100%" Font-Bold="True" 
            ForeColor="#FFFFCC" Wrap="False" BorderColor="Black" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                    
                    
                    
                    
                    SelectCommand="select OPLAN_NO AS 'OPLAN-NO',COURSE_NAME ,COUNT(case when STATE='JAMMU &amp; KASHMIR'  then 1 end) as 'JAK',COUNT(case when STATE='HIMACHAL PRADESH' then 1 end) as 'HP',COUNT(case when STATE='PUNJAB' then 1 end) as 'PB',COUNT(case when STATE='CHANDIGARH' then 1 end) as 'CHD' ,count(case when STATE='HARYANA' then 1 end) AS 'HAR', count(case when STATE='UTTRAKHAND' then 1 end) as 'UK',count(case when STATE='UTTAR PRADESH' then 1 end) as 'UP',count(case when STATE='DELHI' then 1 end) as 'DEL',count(case when STATE='RAJASTHAN' then 1 end) as 'RAJ',count(case when STATE!='JAMMU &amp; KASHMIR' AND STATE!='HIMACHAL PRADESH' AND STATE!='PUNJAB' AND STATE!='CHANDIGARH' AND STATE!='HARYANA' AND STATE!='UTTRAKHAND' AND STATE!='UTTAR PRADESH' AND STATE!='DELHI' AND STATE!='RAJASTHAN' then 1 end) AS 'OTH',COUNT(CASE WHEN ATTENDANCE='0' OR ATTENDANCE='1' THEN 1 END) AS 'TOTAL', COUNT(case when STATE='JAMMU &amp; KASHMIR' and ATTENDANCE='1' then 1 end) as 'JAK1',COUNT(case when STATE='HIMACHAL PRADESH' and ATTENDANCE='1' then 1 end) as 'HP1',COUNT(case when STATE='PUNJAB' and ATTENDANCE='1' then 1 end) as 'PB1',COUNT(case when STATE='CHANDIGARH' and ATTENDANCE='1' then 1 end) as 'CHD1' ,COUNT(case when STATE='HARYANA' and ATTENDANCE='1' then 1 end) as 'HAR1' ,count(case when STATE='UTTRAKHAND' and ATTENDANCE='1' then 1 end) as 'UK1',count(case when STATE='UTTAR PRADESH' and ATTENDANCE='1' then 1 end) as 'UP1',count(case when STATE='DELHI' and ATTENDANCE='1' then 1 end) as 'DEL1',count(case when STATE='RAJASTHAN' and ATTENDANCE='1' then 1 end) as 'RAJ1',count(case when STATE!='JAMMU &amp; KASHMIR' AND STATE!='HIMACHAL PRADESH' AND STATE!='PUNJAB' AND STATE!='CHANDIGARH' AND STATE!='HARYANA' AND STATE!='UTTRAKHAND' AND STATE!='UTTAR PRADESH' AND STATE!='DELHI' AND STATE!='RAJASTHAN' and ATTENDANCE='1' then 1 end) as 'OTH1',COUNT(CASE WHEN  ATTENDANCE='1' THEN 1 END) AS 'TOTAL' from participant WHERE (START_DATE BETWEEN @START_DATE AND @START_DATE2) and  (DEPTT like '%' + @search + '%') group by oplan_no,COURSE_NAME">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="startdate" Name="START_DATE" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="enddate" Name="START_DATE2" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="search" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table> </div>
    </div>
    </body>
    
        

    </asp:Content>
