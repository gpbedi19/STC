<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Attendance1.aspx.cs" MasterPageFile="~/MasterPage.master"  Inherits="Attendance1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <head>
    <title></title>

    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 141px;
        }
        .style3
        {
            width: 333px;
        }
        .style4
        {
            width: 220px;
        }
        .style5
        {
            width: 263px;
        }
        .style6
        {
            width: 242px;
        }
    </style>
</head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%; height:auto; background-color: #FFFFb2">
<body>
    <form id="form1">
    <div>
    
        <br />
        <table class="style1" style:align="center">
            <tr>
                <td colspan="6">
                   <center><b><u> MARK ATTENDANCE</u></b></center></td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style2">
                    Select Deptt.</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" 
                        DataSourceID="SqlDataSource1" DataTextField="DEPTT" DataValueField="DEPTT" 
                        AutoPostBack="True" AppendDataBoundItems="True" Width="384px">
                        <asp:ListItem Selected="True">--SELECT--</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                        SelectCommand="SELECT DISTINCT [DEPTT] FROM [COURSE_REG]">
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style2">
                   <b> Select OPlan-No.</b></td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource2" DataTextField="OPLAN_NO" 
                        DataValueField="OPLAN_NO" Width="384px">
                        <asp:ListItem Selected="True">--SELECT--</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                        
                        SelectCommand="SELECT [OPLAN_NO] FROM [COURSE_REG] WHERE ([DEPTT] = @DEPTT)" 
                        onselecting="SqlDataSource2_Selecting">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="DEPTT" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <span><br>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3" align="left">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3" align="left">
                    <span>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" 
                        BackColor="#3333CC" BorderColor="White" BorderStyle="Solid" ForeColor="White" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <table class="style1">
            <tr>
                <td width="20%">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td width="20%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="340px">
                    &nbsp;</td>
                <td bgcolor="#D41A1F" align="center" class="style5">
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                        ForeColor="Black">Select All</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
                        ForeColor="Black">Deselect All</asp:LinkButton>
                </td>
                <td align="center" width="340px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="340px">
                    &nbsp;</td>
                <td bgcolor="#FFFF99" align="center" class="style5">
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" BorderStyle="Solid">
        </asp:CheckBoxList>
                </td>
                <td align="center" width="340px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td  align="center" width="340px">
                    &nbsp;</td>
                <td  align="center" class="style5">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Mark Attendance" 
                        BackColor="#3333CC" BorderColor="White" BorderStyle="Solid" 
                        ForeColor="White" Height="28px" Width="150px" />
    
                </td>
                <td  align="center" width="340px">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <p>
        &nbsp;</p>
    </form>
</body>
</div>
</asp:Content>