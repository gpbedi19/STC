<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditDetails.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="AttendedParticipate" %>

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
                <center><b><u>EDIT PARTICIPANT DETAILS</u></b></center></td>
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
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="." 
                    BackColor="#FFFFB2" BorderStyle="None" onprerender="Button3_Click" />
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
   
    <br />
    <br />
      <div id = "dvGrid" style ="padding: inherit" align="center" width="540px" >
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        
        <ContentTemplate>

       <asp:GridView ID="GridView1" runat="server"  Width = "1040px"
        AutoGenerateColumns = "False" Font-Names = "Arial" 
        Font-Size = "11pt" AlternatingRowStyle-BackColor = "Lavender"  
         AllowPaging ="True"  ShowFooter = "True"  
        onrowediting="EditCustomer"
        onrowupdating="UpdateCustomer"  onrowcancelingedit="CancelEdit"
        PageSize = "100" BackColor="White" BorderColor="#CC9966" BorderStyle="None" 
                BorderWidth="1px" CellPadding="4" Visible="False" >
                <AlternatingRowStyle BackColor="White" />
       <Columns>
        <asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "ID">
            <ItemTemplate>
                <asp:Label ID="lblID" runat="server" Text='<%# Eval("ID")%>'></asp:Label>
            </ItemTemplate> 
             
            <ItemStyle Width="30px" />
        </asp:TemplateField> 
        <asp:TemplateField ItemStyle-Width = "100px"  HeaderText = "Name">
            <ItemTemplate>
                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name")%>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Name")%>'></asp:TextBox>
            </EditItemTemplate>  
           <%-- <FooterTemplate>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </FooterTemplate> --%>
            <ItemStyle Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "HindiName">
            <ItemTemplate>
                <asp:Label ID="lblHindiName" runat="server" Text='<%# Eval("Hindi_Name")%>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtHindiName" runat="server" Text='<%# Eval("Hindi_Name")%>'></asp:TextBox>
            </EditItemTemplate>  
           <%-- <FooterTemplate>
                <asp:TextBox ID="txtHindiName" runat="server"></asp:TextBox>
            </FooterTemplate> --%>
            <ItemStyle Width="150px" />
        </asp:TemplateField>
         <asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "Institute">
            <ItemTemplate>
                <asp:Label ID="lblInstitute" runat="server" Text='<%# Eval("Institute")%>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtInstitute" runat="server" Text='<%# Eval("Institute")%>'></asp:TextBox>
            </EditItemTemplate>  
            <%--<FooterTemplate>
                <asp:TextBox ID="txtInstitute" runat="server"></asp:TextBox>
            </FooterTemplate> --%>
             <ItemStyle Width="150px" />
        </asp:TemplateField>
         <asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "HindiInstitute">
            <ItemTemplate>
                <asp:Label ID="lblHindiInstitute" runat="server" Text='<%# Eval("Hindi_Institute")%>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtHindiInstitute" runat="server" Text='<%# Eval("Hindi_Institute")%>'></asp:TextBox>
            </EditItemTemplate>  
            <%--<FooterTemplate>
                <asp:TextBox ID="txtHindiInstitute" runat="server"></asp:TextBox>
            </FooterTemplate> --%>
             <ItemStyle Width="150px" />
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lnkRemove" runat="server" CommandArgument = '<%# Eval("ID")%>' 
                 OnClientClick = "return confirm('Do you want to delete?')"
                Text = "Delete" OnClick = "DeleteCustomer"></asp:LinkButton>
            </ItemTemplate>
            <%-- <FooterTemplate>
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick = "AddNewCustomer" />
            </FooterTemplate> --%>
        </asp:TemplateField> 
        <asp:CommandField  ShowEditButton="True" /> 
       </Columns> 
          <FooterStyle BackColor="#D41A1f" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#D41A1F" Font-Bold="True" ForeColor="black" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
           <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
           <SortedAscendingCellStyle BackColor="#FEFCEB" />
           <SortedAscendingHeaderStyle BackColor="#AF0101" />
           <SortedDescendingCellStyle BackColor="#F6F0C0" />
           <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView> 
    </ContentTemplate> 
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID = "GridView1" /> 
    </Triggers> 
    </asp:UpdatePanel> 
    </div>
    
    </div>
    </form>
    </body>
    </div>
    </asp:Content>

