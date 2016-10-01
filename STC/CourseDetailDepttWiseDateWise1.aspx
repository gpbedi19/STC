<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="~/CourseDetailDepttWiseDateWise1.aspx.cs" Inherits="AttendedParticipate" %>

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
            <td class="style10" colspan="4">
                <center><b><u>COURSE DETAIL DEPARTMENT WISE & DATE WISE</u></b></center></td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style11">
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
                <asp:DropDownList ID="DropDownList1" runat="server" Width="385px" 
                    DataSourceID="SqlDataSource1" DataTextField="DEPTT" DataValueField="DEPTT" 
                    style="margin-bottom: 0px" AutoPostBack="True" AppendDataBoundItems="True" 
               >
                   <asp:ListItem Text="All Departments" Value="" />
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [DEPTT] FROM [COURSE_REG]" 
                    onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
            </td>
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
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">&nbsp;</td>
            <td class="style4">From</td><td class="style11">
                    <asp:TextBox ID="startdate" placeholder="DD/MM/YYYY" runat="server" 
                        AutoPostBack="True" contentEditable="false" 

 Width="170px"></asp:TextBox>
                                <asp:CalendarExtender ID="startdate_CalendarExtender" 
                        runat="server" Enabled="True" TargetControlID="startdate" Format="dd/MM/yyyy">
                    </asp:CalendarExtender>
                    <span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                        runat="server" ControlToValidate="enddate" 
                        ErrorMessage="Please Enter Start Date" ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </span>To:<asp:TextBox ID="enddate" placeholder="DD/MM/YYYY" runat="server" 
                        AutoPostBack="True" Width="167px"></asp:TextBox>
                                <span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="startdate" ErrorMessage="Please Enter End Date" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </span>
                                <asp:CalendarExtender ID="enddate_CalendarExtender" runat="server" Format="dd/MM/yyyy"
                        Enabled="True" TargetControlID="enddate">
                    </asp:CalendarExtender>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                    <br />
                    <br />
                                </td><td class="style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style11">
            &nbsp;&nbsp;
    
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Search" 
                    BackColor="#3333CC" BorderColor="White" BorderStyle="Solid" ForeColor="White" 
                    ValidationGroup="a" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <input type="button" value="Print Report" 
      visible="false"  onclick="javascript:printDiv('print')" id="Button2" 
                    onclick="return Button2_onclick()" 
                    style="background-color: #3333CC; border: thin solid #FFFFFF; color: #FFFFFF" /></td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style11" align=left>
                
                 
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    ShowMessageBox="True" ShowSummary="False" ValidationGroup="a" />
            </td>
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
                      Text="Course Detail Department Wise &amp; Date Wise" 
                      Visible="False"></asp:Label></u></h3>
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
    
    <br />
    <br />
    
    <br /><center>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="both" 
                ShowFooter="True">
        <AlternatingRowStyle BackColor="White" />
             <Columns> 
             <asp:TemplateField HeaderText="Sr.No.">
             <ItemTemplate>
				<div style="text-align: right;">
				<asp:Label ID="lblqty" runat="server" Text='<%# Eval("qty") %>' />
				</div>
			 </ItemTemplate>
                 <FooterTemplate>
                     
                      
                 </FooterTemplate>
        <ItemTemplate>
             <%#Container.DataItemIndex+1 %>
        </ItemTemplate>
    </asp:TemplateField>
    </Columns>
   
        <FooterStyle BackColor="#D41A1f" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#D41A1F" Font-Bold="True" ForeColor="black" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView></center>
    </div>
    <br />
    <br />
    &nbsp;</form>
    </div>
    </body>
    
        

    </asp:Content>
