<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReportCountPartiStateCourse.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="AttendedParticipate" %>

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
        </script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 380px;
        }
        .Grid, .Grid th, .Grid td
{
    border:1px solid #fff000;
}
        .style6
        {
            width: 714px;
        }
        .style8
        {
            width: 714px;
            height: 23px;
        }
        .style9
        {
            width: 541px;
            height: 23px;
        }
        </style>
</head>
    <style type="text/css">
        .style1
        {
            width: 1250px;
        }
        .style2
        {
            width: 490px;
        }
        .style3
        {
        }
        .style6
        {
            width: 261px;
        }
        .style8
        {
            width: 366px;
        }
        .style9
        {
            width: 503px;
        }
        .style16
        {
            width: 294px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div style="width:100%; height:auto; background-color:#FFFFb2;">
<body>
    <form id="form1">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style3" colspan="4">
                <center><b><u>NO. OF PARTICIPANTS DEPTT. WISE, COURSE WISE & STATE WISE</u></b></center></td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
&nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label1" runat="server" Text="Co-ordinating Deptt." 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td class="style9">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="DEPTT" DataValueField="DEPTT" 
                    style="margin-bottom: 0px" AutoPostBack="True" Height="22px" Width="452px">
                    <asp:ListItem Selected="True">--Select Deptt--</asp:ListItem>
                </asp:DropDownList>
                <span>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [DEPTT] FROM [COURSE_REG]"></asp:SqlDataSource>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                <strong>Select Date&nbsp;&nbsp;&nbsp; From:</strong></td>
            <td class="style9">
                <asp:TextBox ID="startdate" runat="server" AutoPostBack="True" 
                    Width="170px" Height="16px"></asp:TextBox>
                                <asp:CalendarExtender ID="startdate_CalendarExtender" 
                        runat="server" Enabled="True" Format="dd/MM/yyyy" 
                        TargetControlID="startdate">
                    </asp:CalendarExtender>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <strong>To:</strong><asp:TextBox ID="enddate" runat="server" AutoPostBack="True" Width="167px"></asp:TextBox>
                                <asp:CalendarExtender ID="enddate_CalendarExtender" 
                    runat="server" Enabled="True" Format="dd/MM/yyyy" 
                    TargetControlID="enddate">
                </asp:CalendarExtender>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label2" runat="server" Text="Select O.Plan No" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td class="style9">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="OPLAN_NO" 
                    DataValueField="OPLAN_NO" style="margin-left: 0px" Height="22px" 
                    Width="173px" onprerender="DropDownList2_PreRender" 
                    ondatabound="DropDownList2_DataBound">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                    
                    
                    SelectCommand="SELECT [OPLAN_NO] FROM [COURSE_REG] WHERE ([DEPTT] = @DEPTT) AND ([START_DATE] BETWEEN @START_DATE AND @START_DATE2)" 
                    onselecting="SqlDataSource2_Selecting">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="DEPTT" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="startdate" DbType="Date" Name="START_DATE" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="enddate" DbType="Date" Name="START_DATE2" 
                            PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style6" align="center">
                &nbsp;</td>
            <td class="style9" align="center">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style6" align="center">
                &nbsp;</td>
            <td class="style9" align="center">
    <input type="button" value="Print Report" 
      visible="false"  onclick="javascript:printDiv('print')" id="Button2" 
                    onclick="return Button2_onclick()" 
                    style="background-color: #3333CC; border: thin solid #FFFFFF; color: #FFFFFF" /></td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        </table>
    &nbsp;
    <br />
      <div id="print">
    <table class="style1" >
        <tr>
            <td class="style16" align="center">
               <h3 align="center"> <u><asp:Label ID="Label10" runat="server" 
                       Text="No. Of participants Deptt. Wise, Course Wise & State Wise" 
                       Visible="False"></asp:Label></u></h3>
            </td>
        </tr>
        <tr>
            <td class="style16" align="center">
               <b> <asp:Label ID="Label4" runat="server" Text="Deptt. Name:" Visible="False"></asp:Label>
                <asp:Label ID="department" runat="server"></asp:Label></b>
            </td>
        </tr>
        <tr>
            <td class="style16" align="center">
             <b>   <asp:Label ID="Label5" runat="server" Text="Course Name:" Visible="False"></asp:Label>
                <asp:Label ID="coursename" runat="server"></asp:Label></b>
            </td>
        </tr>
        <tr>
            <td class="style16" align="center">
            <b>    <asp:Label ID="Label6" runat="server" Text="O.Plan No:" Visible="False"></asp:Label>
                <asp:Label ID="oplan_no" runat="server"></asp:Label></b>
            </td>
        </tr>
        <tr>
            <td class="style16" align="center">
           <b>    <asp:Label ID="Label7" runat="server" Text="Date: From" Visible="False"></asp:Label>
                <asp:Label ID="datefrom" runat="server"></asp:Label>
                &nbsp;<asp:Label ID="Label3" runat="server" Text="To" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="dateto" runat="server"></asp:Label></b> 
            </td>
        </tr>
        <tr>
            <td class="style16" align="center">
               <b> <asp:Label ID="Label8" runat="server" Text="Venue:" Visible="False"></asp:Label>
                <asp:Label ID="venue" runat="server"></asp:Label></b>
            </td>
        </tr>
        </u></b>
        <tr>
            <td class="style16" align="center">
              <b>  
                <asp:Label ID="Label9" runat="server" Text="Co-ordinator Name:" 
                    Visible="False"></asp:Label>
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                </b>
            </td>
        </tr>
        </table> 
   
    <br />
    <br />
    <center>
    <asp:GridView ID="GridView1" runat="server"  
        DataSourceID="SqlDataSource3" 
        style="margin-left: 0px; margin-right: 0px" 
        CellPadding="4" ForeColor="#333333" Width="991px" 
        CellBorderStyle="Solid" BorderWidth="2px" AllowSorting="True" 
            AutoGenerateColumns="False" Visible="False" 
            onrowdatabound="GridView1_RowDataBound" ShowFooter="True" 
        >
        <AlternatingRowStyle BackColor="White" />
        <Columns> 
        <asp:TemplateField HeaderText="S.No">
        <ItemTemplate>
             <%#Container.DataItemIndex+1 %>
        </ItemTemplate>
    </asp:TemplateField>

            <asp:BoundField DataField="state" HeaderText="STATE" SortExpression="state" 
                >

            </asp:BoundField>
            <asp:BoundField DataField="Column1" HeaderText="No. of Sponsored Participant" 
                ReadOnly="True" SortExpression="Column1" >
            </asp:BoundField>
            <asp:BoundField DataField="Column2" HeaderText="No. of Attended Participant" 
                ReadOnly="True" SortExpression="Column2">
</asp:BoundField>
        </Columns>

        <FooterStyle BackColor="#ffff88" Font-Bold="True" ForeColor="Black" />
        <HeaderStyle BackColor="#D41A1F" Font-Bold="True" ForeColor="Black" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    </center></div>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
        
        
        
        
        
        
        
        SelectCommand="(select s.STATE, count(case when p.ATTENDANCE='0' or p.ATTENDANCE='1' then 1 end) ,COUNT(case when p.ATTENDANCE='1' then 1 end)  from States as s left join 

PARTICIPANT as p on p.state=s.state AND p.OPLAN_NO=@OPLAN_NO
group by s.state )
 

union (select ' OTHER' as STATE1 ,coalesce(sum(case when PARTICIPANT.ATTENDANCE='0' or PARTICIPANT.ATTENDANCE='1' then 1 end),0),coalesce(sum

(case when PARTICIPANT.ATTENDANCE='1' then 1 end),0) from PARTICIPANT where STATE!='JAMMU & KASHMIR' AND STATE!

='JAMMU & KASHMIR' AND STATE!='HIMACHAL PRADESH' AND STATE!='PUNJAB' AND STATE!='CHANDIGARH' and STATE!

='Chandigarh' AND STATE!='HARYANA' AND STATE!='UTTRAKHAND' AND STATE!='UTTAR PRADESH' AND STATE!='DELHI' AND 

STATE!='RAJASTHAN' and oplan_no=@OPLAN_NO ) order by s.State desc">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="OPLAN_NO" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
    </body>
    </div>
    </asp:Content>

