<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="~/ReportCoursePosponed.aspx.cs" Inherits="AttendedParticipate" %>

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
            width: 186px;
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
        width: 86px;
    }
        .style13
        {
            width: 328px;
        }
    </style>
</head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
<div style="width:100%; height:auto; background-color: #FFFFb2">

<body>
    <form id="form1">
   <div >
    
    </div>
    <table class="style1">
        <tr>
            <td class="style10" colspan="5">
                <center><b><u>LIST OF POSTPONED COURSES</u></b></center></td>
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
                <asp:Label ID="Label1" runat="server" Text="Co-ordinating Deptt." Font-Bold="True" 
                    ></asp:Label>
            </td>
            <td class="style11">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="DEPTT" DataValueField="DEPTT" 
                    style="margin-bottom: 0px" AutoPostBack="True" AppendDataBoundItems="True" 
                     onprerender="DropDownList1_PreRender" Width="370px">
                    <asp:ListItem Selected="True">--Select Department--</asp:ListItem>
                <asp:ListItem Text="ALL Department" Value="" />
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [DEPTT] FROM [POSTPONE_COURSE_REG]" 
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
            <td class="style4">&nbsp;</td><td class="style11" align="left">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <input type="button" value="Print Report" 
      visible="false"  onclick="javascript:printDiv('print')" id="Button2" 
                onclick="return Button2_onclick()" 
                style="background-color: #3333CC; border: thin solid #FFFFFF; color: #FFFFFF" /></td><td class="style22">
                    </td><td class="style12">&nbsp;</td>
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
                &nbsp;</td>
            <td class="style11" align=left>
                
                 
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        </table>
    &nbsp;
    
    <br />
   <div id="print">
    <table class="style1" >
        <tr>
            <td align="center">
               <H3><u> <asp:Label ID="Label5" runat="server" 
                    Text="Course Postponement Detail Deptt. Wise" Visible="False"></asp:Label></u></H3>
            </td>
        </tr>
        <tr>
           <td align="center">
             <b>   <asp:Label ID="Label4" runat="server" Text="Deptt. Name:" Visible="False"></asp:Label>
                <asp:Label ID="department" runat="server"></asp:Label></b>
            </td>
        </tr>
    </table>
    
    <br />
    <div align=center>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="Both">
        <AlternatingRowStyle BackColor="White" />
        <Columns> <asp:TemplateField HeaderText="S.No">
        <ItemTemplate>
             <%#Container.DataItemIndex+1 %>
        </ItemTemplate>
    </asp:TemplateField></Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#D41A1F" Font-Bold="True" ForeColor="black" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    </div>
    </div>
    <br />
    <br />
    &nbsp;</form>
    </body>
    
        </div>

    </asp:Content>
