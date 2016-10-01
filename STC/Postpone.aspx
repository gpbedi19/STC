<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="~/Postpone.aspx.cs" Inherits="AttendedParticipate" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <head>
    <title></title>
     
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
        {            height: 22px;
        }
        .style11
        {
            width: 597px;
        }
        .style12
        {
            width: 66px;
        }
        .style14
        {
            width: 294px;
        }
    .style15
    {
        width: 116px;
    }
    </style>
</head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   


<body>
 <div style="width:100%; height:auto; background-color:#FFFFb2;">
    <form id="form1">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style10" colspan="5">
                <center><b><u>&nbsp;SEARCH THE COURSE TO POSTPONE</u></b></center></td>
        </tr>
        <tr>
            <td class="style15">
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
            <td class="style15">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" Text="Co-ordinating Deptt." 
                    Font-Bold="True"></asp:Label>
            </td>
            <td class="style11">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="DEPTT" DataValueField="DEPTT" 
                    style="margin-bottom: 0px" AutoPostBack="True" Width="372px">
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
            <td class="style15">
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
            <td class="style15">&nbsp;</td>
            <td class="style4"><strong>From:</strong></td><td class="style11">
                    <asp:TextBox ID="startdate" placeholder="DD/MM/YYYY" runat="server" 
                        AutoPostBack="True" contentEditable="true" 

 Width="170px" style="margin-bottom: 0px"></asp:TextBox>
                                <asp:CalendarExtender ID="startdate_CalendarExtender" Format="dd/MM/yyyy"
                        runat="server" Enabled="True" TargetControlID="startdate">
                    </asp:CalendarExtender>
                    <strong>To:</strong><asp:TextBox ID="enddate" runat="server" placeholder="DD/MM/YYYY" AutoPostBack="True" Width="167px"></asp:TextBox>
                                <asp:CalendarExtender ID="enddate_CalendarExtender" Format="dd/MM/yyyy"
                    runat="server" Enabled="True" 
                    TargetControlID="enddate">
                </asp:CalendarExtender>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                                </td><td class="style22">
                    </td><td class="style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
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
            <td class="style15">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label2" runat="server" Text="Select O.Plan No" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td class="style11" align=left>
                
                 
                <asp:DropDownList ID="DropDownList2" runat="server"  
                    DataSourceID="SqlDataSource2" DataTextField="OPLAN_NO" 
                    DataValueField="OPLAN_NO" Width="170px" AutoPostBack="True"
                    >
                   <asp:ListItem Text="--Select One--" Selected="True" Enabled="true" Value=''/>   
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                    
                    
                    
                    SelectCommand="SELECT [OPLAN_NO] FROM [COURSE_REG] WHERE (([DEPTT] = @DEPTT) AND ([START_DATE] BETWEEN @START_DATE AND @START_DATE2))">
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
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        </table>
    &nbsp;
    
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource3" 
        style="margin-left: 42px; margin-right: 0px" CellPadding="4" 
        ForeColor="#333333" BorderColor=Black BorderStyle="Solid" 
        Width="1146px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
        
            <asp:BoundField DataField="OPLAN_NO" HeaderText="OPLAN_NO" 
                SortExpression="OPLAN_NO" />
            <asp:BoundField DataField="DEPTT" HeaderText="DEPTT" 
                SortExpression="DEPTT" />
            <asp:BoundField DataField="PTITLE" HeaderText="PTITLE" 
                SortExpression="PTITLE" />
            <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" dataformatstring="{0:dd/MM/yyyy}"
                SortExpression="START_DATE"/>
            <asp:BoundField DataField="END_DATE" HeaderText="END_DATE" dataformatstring="{0:dd/MM/yyyy}"
                SortExpression="END_DATE"/>
            <asp:BoundField DataField="VENUE" HeaderText="VENUE" SortExpression="VENUE" />
        </Columns>
        <FooterStyle BackColor="#D41A1F" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#D41A1F" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>

    
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
        
        
        
        
        SelectCommand="SELECT  OPLAN_NO, DEPTT, PTITLE, START_DATE, END_DATE,VENUE FROM COURSE_REG WHERE (DEPTT = @DEPTT) AND (OPLAN_NO = @OPLAN_NO) AND (START_DATE BETWEEN @START_DATE AND @START_DATE2) ORDER BY START_DATE">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="DEPTT" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="OPLAN_NO" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="startdate" DbType="Date" Name="START_DATE" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="enddate" DbType="Date" Name="START_DATE2" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;<table class="style1">
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <strong>Select Postpone Date:</strong></td>
            <td>
                <strong>From:</strong><asp:TextBox ID="newstartdate" runat="server" placeholder="DD/MM/YYYY" 
                    AutoPostBack="True" ></asp:TextBox>
                <asp:CalendarExtender ID="newstartdate_CalendarExtender" runat="server" Format="dd/MM/yyyy"
                    Enabled="True" TargetControlID="newstartdate">
                </asp:CalendarExtender>
&nbsp;<span><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="newstartdate" ErrorMessage="Enter New Start Date" 
                    ValidationGroup="a">*</asp:RequiredFieldValidator>
                </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <strong>To:</strong><asp:TextBox ID="newenddate" runat="server" 
                    placeholder="DD/MM/YYYY" AutoPostBack="True"></asp:TextBox>
                <asp:CalendarExtender ID="newenddate_CalendarExtender" runat="server" Format="dd/MM/yyyy"
                    Enabled="True" TargetControlID="newenddate">
                </asp:CalendarExtender>
                &nbsp;&nbsp;&nbsp;<span><asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="newenddate" ErrorMessage="Enter New End Date" 
                    ValidationGroup="a">*</asp:RequiredFieldValidator>
                </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<strong>Enter New Venue:</strong><br />
                <br />
                <br />
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<span><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter New Venue" 
                    ValidationGroup="a">*</asp:RequiredFieldValidator>
                </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                    Text="Postpone" BackColor="#3333CC" BorderColor="White" 
                    BorderStyle="Solid" ForeColor="White" ValidationGroup="a" />
                </span>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td>
                <span>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    ShowMessageBox="True" ShowSummary="False" ValidationGroup="a" />
            </td>
        </tr>
    </table>
    
    </form>
    </div>
    </body>
    
        

    </asp:Content>
