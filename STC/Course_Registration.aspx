<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Course_Registration.aspx.cs" Inherits="Course_Registration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style1
        {
            width: 56%;
        }
      
        .style42
        {
            text-align: left;
            width: 207px;
            height: 49px;
        }
        .style43
        {
            height: 49px;
            width: 475px;
        }
        .style32
        {
            text-align: left;
            width: 207px;
            height: 81px;
        }
        .style21
        {
            height: 81px;
            width: 475px;
        }
        .style33
        {
            text-align: left;
            width: 207px;
            height: 33px;
        }
        .style22
        {
            height: 33px;
            width: 475px;
        }
        .style34
        {
            text-align: left;
            width: 207px;
        }
        .style23
        {
            width: 475px;
        }
        .style59
        {
            text-align: left;
            width: 207px;
            height: 42px;
        }
        .style29
        {
            height: 42px;
            width: 475px;
        }
        .style39
        {
            text-align: left;
            height: 51px;
        }
        .style27
        {
            height: 51px;
            width: 475px;
        }
        .style60
        {
            height: 42px;
            width: 108px;
        }
        .style61
        {
            height: 51px;
            width: 108px;
        }
        .style62
        {
            height: 22px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" >
    <div>
    
    <div style="position: static">
           <table class="style1" align="center" 
            
               
               style="border-width: 0px; border-style: groove; text-align: left; border-spacing: 0px; border-collapse: collapse; table-layout: fixed; height: 137px;" 
               bgcolor="#FFFF99">
            <tr>
                <td  align="center" colspan="3" class="style62" 
                    style="color: #0033CC; font-size: x-large; font-weight: bold;">
                    &nbsp;&nbsp;
                Course Registration</td>
            </tr>
            <tr>
                <td class="style42" align="left" style="background-color: #FFFF99" 
                    valign="bottom">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Oplan_No.:" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:Label>
                </td>
                <td class="style43" style="background-color: #FFFF99" valign="bottom" 
                    colspan="2">
                    <asp:TextBox ID="txtOplan" runat="server" Width="263px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtOplan" ErrorMessage="Enter Oplan No" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="style32" align="left" style="background-color: #FFFF99">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Course Title:" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="Black" style="text-align: left"></asp:Label>
                </td>
                <td class="style21" style="background-color: #FFFF99" colspan="2">
                    <asp:TextBox ID="txtCourse" runat="server" Width="264px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtCourse" ErrorMessage="Enter Course Title" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    </td>
            </tr>
            <tr>
                <td class="style33" style="background-color: #FFFF99">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Department:" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="Black"></asp:Label>
                </td>
                <td class="style22" style="background-color: #FFFF99" colspan="2">
                        <asp:DropDownList ID="ddlDep" runat="server" Width="264px">
                            <asp:ListItem Value="0">--Select Department--</asp:ListItem>
                            <asp:ListItem>Applied Science</asp:ListItem>
                            <asp:ListItem>Civil Engineering</asp:ListItem>
                            <asp:ListItem>Centre for Physically Challenged</asp:ListItem>
<asp:ListItem>Computer Science and Engineering</asp:ListItem>
                            <asp:ListItem>Curriculum Development Centre</asp:ListItem>
                            <asp:ListItem>Education and Educational Management</asp:ListItem>
                            <asp:ListItem>Education Television Centre</asp:ListItem>
                            <asp:ListItem>Electrical Engineering</asp:ListItem>
                            <asp:ListItem>Electronics and Communication Engineering</asp:ListItem>
                            <asp:ListItem>Electronics Service Centre</asp:ListItem>
                            <asp:ListItem>EMGT</asp:ListItem>
                            <asp:ListItem>Entrepreneurship Development and Industrial Co-ordination</asp:ListItem>
                            <asp:ListItem>Information Management and Coordination</asp:ListItem>
                            <asp:ListItem>Library</asp:ListItem>
                            <asp:ListItem>Mechanical Engineering</asp:ListItem>
                            <asp:ListItem>Media and Continuing Education</asp:ListItem>
                            <asp:ListItem>NITTTR Chandigarh</asp:ListItem>
                            <asp:ListItem>Rural Development</asp:ListItem>
                            <asp:ListItem>Y K Anand</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ErrorMessage="Please Select Department" ControlToValidate="ddlDep" 
                            InitialValue="0" ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="style34" style="background-color: #FFFF99">
                    &nbsp;&nbsp;
                    </td>
                <td class="style23" style="background-color: #FFFF99" colspan="2">
                    
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style59" style="background-color: #FFFF99">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Starting Date:"></asp:Label>
                    &nbsp;&nbsp; </td>
                <td class="style29" style="background-color: #FFFF99">
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="From:"></asp:Label>
                    &nbsp;<asp:TextBox ID="txtFrom" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="txtFrom_CalendarExtender" runat="server" 
                        Enabled="True" Format="dd-MM-yyyy" TargetControlID="txtFrom">
                    </asp:CalendarExtender>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtFrom" ErrorMessage="Enter From Date" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
                <td class="style60" style="background-color: #FFFF99">
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="To:"></asp:Label>
                    <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="txtTo_CalendarExtender" runat="server" 
                        Enabled="True" Format="dd-MM-yyyy" TargetControlID="txtTo">
                    </asp:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtTo" ErrorMessage="Enter To Date" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
            </tr>
             <tr>
                <td class="style39" style="background-color: #FFFF99">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label14" runat="server" 
                        Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Venue:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style27" style="background-color: #FFFF99" colspan="2">
                    <asp:TextBox ID="txtVenue" runat="server" Width="264px"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtVenue" ErrorMessage="Enter Venue" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
            </tr>
               <tr>
                <td class="style39" style="background-color: #FFFF99">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label18" runat="server" 
                        Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Duration:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style27" style="background-color: #FFFF99" colspan="2">
                    <asp:TextBox ID="txtDuration" runat="server" Width="264px"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtDuration" ErrorMessage="Enter Duration" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
               </tr>
            <tr>
                <td class="style39" style="background-color: #FFFF99">
                    &nbsp;</td>
                <td class="style27" style="background-color: #FFFF99">
                        
                    
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                        ValidationGroup="a" BackColor="#3333CC" BorderColor="White" 
                        BorderStyle="Solid" ForeColor="White" />
                        
                    
                </td>
                <td class="style61" style="background-color: #FFFF99">
                        
                    
                    <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" 
                        BackColor="#3333CC" BorderColor="White" BorderStyle="Solid" ForeColor="White" />
                        
                    
                </td>
            </tr>
            <tr>
                <td class="style39" style="background-color: #FFFF99">
                    &nbsp;</td>
                <td class="style27" style="background-color: #FFFF99">
                        
                    
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ValidationGroup="a" ShowMessageBox="True" ShowSummary="False" />
                        
                    
                </td>
                <td class="style61" style="background-color: #FFFF99">
                        
                    
                    &nbsp;</td>
            </tr>
            </table>   
    </div>
    </form>
    

    </div>
    </form>
</asp:Content>


