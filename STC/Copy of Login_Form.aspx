<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Copy of Login_Form.aspx.cs" Inherits="Login_Form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 47%;
        }
        .style2
        {
            height: 23px;
        }
        .style4
        {
            width: 56px;
        }
        .style5
        {
            width: 365px;
        }
        .style6
        {
            width: 365px;
            height: 26px;
        }
        .style7
        {
            width: 56px;
            height: 26px;
        }
        .style8
        {
            height: 26px;
        }
        .style9
        {
            height: 23px;
            width: 289px;
        }
        .style10
        {
            height: 26px;
            width: 289px;
        }
        .style11
        {
            width: 289px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        <table bgcolor="#CCFFFF" class="style1">
            <tr>
                <td align="center" bgcolor="#3399FF" class="style2" colspan="4">
                    LOGIN FORM</td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    USERNAME</td>
                <td class="style7">
                </td>
                <td class="style8">
                    <asp:TextBox ID="uname" runat="server" BorderColor="#000066" Width="198px"></asp:TextBox>
                </td>
                <td class="style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="uname" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    PASSWORD</td>
                <td class="style7">
                </td>
                <td class="style8">
                    <asp:TextBox ID="pwd" runat="server" BorderColor="Black" Width="198px"></asp:TextBox>
                </td>
                <td class="style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="pwd" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="LOGIN" 
                        BackColor="#6699FF" Width="75px" />
                </td>
                <td>
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2" colspan="3">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td align="center" class="style9">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
