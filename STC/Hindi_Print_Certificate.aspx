<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Hindi_Print_Certificate.aspx.cs" Inherits="Hindi_Print_Certificate" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 428px;
        }
        .style3
        {
            width: 143px;
            height: 59px;
        }
        .style5
        {
            width: 352px;
            height: 59px;
        }
        .style6
        {
        width: 20px;
    }
        .style7
        {
            height: 23px;
        }
        .style8
        {
        width: 20px;
        height: 23px;
    }
        .style9
        {
            height: 23px;
        }
        .style10
        {
            width: 20px;
            height: 59px;
        }
        .style11
        {
            height: 59px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" >
    <div>
     <table class="style1" bgcolor="#FFFF99">
            <tr>
                <td align="center" colspan="4" bgcolor="#66CCFF" class="style7" 
                    style="font-size: large; font-style: normal; font-family: 'Arial Black'">
                    PRINT BILINGUAL CERTIFICATES</td>
            </tr>
            <tr>
                <td align="right" class="style2" colspan="2" 
                    
                    style="font-size: medium; font-style: normal; font-family: 'Arial Rounded MT Bold'; font-weight: bold;">
                    COORDINATING DEPARTMENT:</td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="DEPTT" 
                        DataValueField="DEPTT" Width="300px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                        
                        SelectCommand="SELECT DISTINCT [DEPTT] FROM [COURSE_REG] WHERE ([TYPE] = @TYPE)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="BILINGUAL" Name="TYPE" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2" colspan="2" 
                    
                    style="font-size: medium; font-style: normal; font-family: 'Arial Rounded MT Bold'; font-weight: bold;">
                    HINDI COORDINATING DEPARTMENT:</td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="SqlDataSource3" DataTextField="HINDI_DEPTT" 
                        DataValueField="HINDI_DEPTT" Enabled="False" Height="22px" Width="300px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                        
                        SelectCommand="SELECT [HINDI_DEPTT] FROM [COURSE_REG] WHERE ([DEPTT] = @DEPTT AND TYPE = 'BILINGUAL')">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="DEPTT" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5" 
                    
                    style="font-size: medium; font-style: normal; font-family: 'Arial Rounded MT Bold'; font-weight: bold;">
                    FROM :</td>
                <td class="style3" align="left">
                    <asp:TextBox ID="from" runat="server" AutoPostBack="True"></asp:TextBox>
                    <asp:CalendarExtender ID="from_CalendarExtender" runat="server" Enabled="True" 
                        Format="dd-MM-yyyy" TargetControlID="from">
                    </asp:CalendarExtender>
                </td>
                <td align="right" class="style10" 
                    
                    style="font-size: medium; font-style: normal; font-family: 'Arial Rounded MT Bold'; font-weight: bold;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="from" ErrorMessage="Enter Start Date" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    &nbsp;</td>
                <td class="style11">
                    <strong>TO:</strong><asp:TextBox ID="to" runat="server" AutoPostBack="True"></asp:TextBox>
                    <asp:CalendarExtender ID="to_CalendarExtender" runat="server" Enabled="True" 
                        Format="dd-MM-yyyy" TargetControlID="to">
                    </asp:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="to" ErrorMessage="Enter End Date" ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2" colspan="2" 
                    
                    style="font-size: medium; font-style: normal; font-family: 'Arial Rounded MT Bold'; font-weight: bold;">
                    OPLANNO:</td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    <asp:DropDownList ID="oplanno" runat="server" Height="19px" Width="129px" 
                        AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="OPLAN_NO" 
                        DataValueField="OPLAN_NO" onprerender="oplanno_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                        
                        
                        SelectCommand="SELECT [OPLAN_NO] FROM [COURSE_REG] WHERE (([DEPTT] = @DEPTT) AND ([START_DATE] BETWEEN @START_DATE AND @END_DATE) AND TYPE = 'BILINGUAL')">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="DEPTT" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="from" DbType="Date" Name="START_DATE" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="to" DbType="Date" Name="END_DATE" 
                                PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2" colspan="2">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style7" colspan="2" 
                    
                    style="font-size: medium; font-style: normal; font-family: 'Arial Rounded MT Bold'; font-weight: bold;">
                    Total Number of Participants:</td>
                <td class="style8">
                </td>
                <td class="style9">
                    <asp:TextBox ID="count" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style7" colspan="2" 
                    
                    style="font-size: medium; font-style: normal; font-family: 'Arial Rounded MT Bold'; font-weight: bold;">
                    Certificate 
                    Initial Serial Number:</td>
                <td class="style8">
                </td>
                <td class="style9">
                    <asp:TextBox ID="serialno" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="serialno" ErrorMessage="Enter Initial Serial Number" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style7" colspan="2">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style7" colspan="2">
                    <asp:Button ID="Button2" runat="server" Text="PRINT CERTIFICATES ONE BY ONE" 
                        onclick="Button2_Click" ValidationGroup="a" BackColor="#3333CC" 
                        ForeColor="White" BorderColor="White" BorderStyle="Solid" />
                </td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style7" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style7" colspan="2">
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                        Text="PRINT ALL ENGLISH CERTIFICATES AT ONCE" BackColor="#3333CC" 
                        ForeColor="White" ValidationGroup="a" BorderColor="White" 
                        BorderStyle="Solid" />
                </td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style9">
                    <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                        Text="PRINT ALL HINDI CERTIFICATES AT ONCE" BackColor="#3333CC" 
                        ForeColor="White" ValidationGroup="a" BorderColor="White" 
                        BorderStyle="Solid" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style7" colspan="4">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ValidationGroup="a" Width="506px" ShowMessageBox="True" 
                        ShowSummary="False" />
                </td>
            </tr>
        </table>
    </div>
    </form>

</asp:Content>
