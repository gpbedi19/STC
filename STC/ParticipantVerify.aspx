<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ParticipantVerify.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="AttendedParticipate" %>

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
        #Button2
        {
            height: 28px;
            width: 105px;
        }
        .style17
        {
            width: 294px;
            height: 23px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="width:100%; height: auto; background-color: #FFFFb2;">
<body>
    <form id="form1">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style3" colspan="4">
                <center><b><u>DETAIL OF PARTICIPANT FOR CERTIFICATE VERIFICATION</u></b></center></td>
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
                <asp:Label ID="Label1" runat="server" Text="Co-ordinating Deptt."></asp:Label>
            </td>
            <td class="style9">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="DEPTT" DataValueField="DEPTT" 
                    style="margin-bottom: 0px" AutoPostBack="True" Height="22px" Width="450px" 
                    AppendDataBoundItems="True">
                    <asp:ListItem>--Select Department--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
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
                Select Date From:</td>
            <td class="style9">
                <asp:TextBox ID="startdate" runat="server" AutoPostBack="True" 
                    Width="170px" Height="16px"></asp:TextBox>
                                <asp:CalendarExtender ID="startdate_CalendarExtender" 
                        runat="server" Enabled="True" Format="dd/MM/yyyy" 
                        TargetControlID="startdate">
                    </asp:CalendarExtender>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                To:<asp:TextBox ID="enddate" runat="server" AutoPostBack="True" Width="167px"></asp:TextBox>
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
                <asp:Label ID="Label2" runat="server" Text="Select O.Plan No"></asp:Label>
            </td>
            <td class="style9">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="OPLAN_NO" 
                    DataValueField="OPLAN_NO" style="margin-left: 0px" Height="22px" 
                    Width="170px" onprerender="DropDownList2_PreRender" 
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
            <td class="style6" align="center">
                &nbsp;</td>
            <td class="style9" align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" value="Print Report" 
      visible="false"  onclick="javascript:printDiv('print')" id="Button2" 
                    style="background-color: #3333CC; border: thin solid #FFFFFF; color: #FFFFFF"  /></td>
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
               <h3 align="center"> <u>
                   <asp:Label ID="Label10" runat="server" 
                       Text="Verification of Partcipant for Certificate Printing" 
                       Visible="False" Width="100%"></asp:Label></u></h3>
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
                <span>
               <b> <asp:Label ID="Label11" runat="server" Text="Deptt. Name:" Visible="False"></asp:Label>
                (Hindi):<asp:Label ID="departmenthindi" runat="server"></asp:Label></b>
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
                <span>
             <b>   <asp:Label ID="Label12" runat="server" Text="Course Name:" Visible="False"></asp:Label>
                <asp:Label ID="coursenamehindi" runat="server"></asp:Label></b>
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
            <td class="style17" align="center">
               <b> <asp:Label ID="Label8" runat="server" Text="Venue:" Visible="False"></asp:Label>
                <asp:Label ID="venue" runat="server"></asp:Label></b>
            </td>
        </tr>
        </u></b>
        <tr>
            <td class="style17" align="center">
                <span>
               <b> <asp:Label ID="Label13" runat="server" Text="Venue(Hindi):" Visible="False"></asp:Label>
                <asp:Label ID="venuehindi" runat="server"></asp:Label></b>
            </td>
        </tr>
        <tr>
            <td class="style16" align="center">
              <b>  
                <asp:Label ID="Label9" runat="server" Text="Co-ordinator Name:" 
                    Visible="False"></asp:Label>
                <asp:Label ID="Label14" runat="server"></asp:Label>
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
        CellPadding="4" ForeColor="#333333" Width="100%" 
        CellBorderStyle="Solid" BorderWidth="2px" AllowSorting="True" 
            AutoGenerateColumns="False" onprerender="DropDownList2_PreRender" 
        >
        <AlternatingRowStyle BackColor="White" />
        <Columns> 
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" 
                ReadOnly="True" />
            <asp:BoundField DataField="HINDI_NAME" HeaderText="HINDI_NAME" 
                SortExpression="HINDI_NAME" ReadOnly="True" />
            <asp:BoundField DataField="INSTITUTE" HeaderText="INSTITUTE" 
                SortExpression="INSTITUTE" ReadOnly="True" />
            <asp:BoundField DataField="HINDI_INSTITUTE" HeaderText="HINDI_INSTITUTE" 
                SortExpression="HINDI_INSTITUTE" ReadOnly="True" />
        </Columns>
        <FooterStyle BackColor="#D41A1F" Font-Bold="True" ForeColor="White" />
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
        
        
        
        
        
        
        
        
        
        
        
        SelectCommand="SELECT UPPER(NAME) AS 'NAME', [HINDI_NAME], UPPER(INSTITUTE) AS 'INSTITUTE', [HINDI_INSTITUTE] FROM [PARTICIPANT] WHERE ([OPLAN_NO] = @OPLAN_NO) ORDER BY [NAME]">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="OPLAN_NO" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
    </body>
    </div>
    </asp:Content>

