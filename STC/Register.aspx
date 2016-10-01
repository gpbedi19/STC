<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>Registration Form</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
        <style type="text/css">
            .style1
            {
                width: 253px;
            }
            .style2
            {
                width: 74px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <!-- Codrops top bar -->
            <div class="codrops-top">
                
				
				
                                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
          
           <header>
            <center>
                <h1>Welcome to STC Paperless Environment<br>
                <span>(An initiative to save trees)</span></h1>
		  </center>
           </header>
           
            
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                    <center>
                    <div style="left: -85px" "align:left" id="login" class="animate form">
                    <form runat="server">
                      <h1> Sign up </h1> 
                    <table>
    <tr>
     <td><label for="usernamesignup" class="fname">Your first name</label></td>
    <td class="style1"><asp:TextBox ID="TextBox1" runat="server">
        </asp:TextBox>
     </td>
     <td class="style2"><asp:RequiredFieldValidator ID="rfvFirstName" 
                 runat="server" 
                 ControlToValidate="TextBox1"
                ErrorMessage="First Name can't be left blank" 
                SetFocusOnError="True">*
         </asp:RequiredFieldValidator>
    </td>
   </tr>
    <tr>
    <td>Last Name:</td>
    <td class="style1"><asp:TextBox ID="TextBox2" runat="server">
        </asp:TextBox></td>
    <td class="style2"><asp:RequiredFieldValidator 
             ID="RequiredFieldValidator1" runat="server" 
             ControlToValidate="TextBox2"
            ErrorMessage="Last Name can't be left blank" 
             SetFocusOnError="True">*
        </asp:RequiredFieldValidator>
    </td></tr>
     
    <tr><td>UserName:</td>
    <td class="style1"><asp:TextBox ID="txtUserName" runat="server">
        </asp:TextBox>
    </td>
   <td class="style2"><asp:RequiredFieldValidator 
             ID="rfvUserName" 
           runat="server" 
             ControlToValidate="txtUserName"
             ErrorMessage="UserName can't be left blank" 
             SetFocusOnError="True">*
        </asp:RequiredFieldValidator>
    </td></tr>
     
    <tr><td>Password:</td>
    <td class="style1"><asp:TextBox ID="TextBox3" runat="server"
                     TextMode="Password">
        </asp:TextBox>
    </td>
    <td class="style2"><asp:RequiredFieldValidator ID="rfvPwd" 
             runat="server" ControlToValidate="TextBox3"
             ErrorMessage="Password can't be left blank" 
            SetFocusOnError="True">*
      </asp:RequiredFieldValidator>
   </td></tr>
    
    <tr><td>Confirm Password:</td>
   <td class="style1"><asp:TextBox ID="txtRePwd" runat="server"
                    TextMode="Password">
       </asp:TextBox>
   </td>
        <td class="style2">
            <asp:CompareValidator ID="CompareValidator1" 
            runat="server" 
            ControlToCompare="txtRePwd" 
            ControlToValidate="TextBox3" 
            Operator="Equal" 
            ErrorMessage="Password and confirm password do not match" 
             SetFocusOnError="True">*</asp:CompareValidator>
        </td>
   <td>&nbsp;</td></tr>
    
<%--    <tr><td>Gender:</td>
    <td><asp:RadioButtonList ID="rdoGender" 
                            runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
       </asp:RadioButtonList>
    </td>--%>
   <%-- <td><asp:RequiredFieldValidator 
           ID="RequiredFieldValidator2" 
             runat="server" 
           ControlToValidate="rdoGender"
             ErrorMessage="Gender can't be left blank" 
          SetFocusOnError="True">*
         </asp:RequiredFieldValidator>
  </td></tr>--%>
     
    <tr><td>Email ID:</td>
    <td class="style1"><asp:TextBox ID="TextBox4" runat="server">
        </asp:TextBox>
    </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Please enter valid E-mail Id" 
                SetFocusOnError="True" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator3" 
            runat="server" 
            ControlToValidate="TextBox4"
            ErrorMessage="Email can't be left blank" 
          SetFocusOnError="True">*
       </asp:RequiredFieldValidator>
        </td>
   <td class="style2">&nbsp;</td></tr>
    
   <tr><td><asp:Label ID="lblMsg" runat="server">
          </asp:Label>
     </td>
   <td class="style1">
       <asp:ValidationSummary ID="ValidationSummary1" 
            runat="server" ShowMessageBox="True" 
            ShowSummary="False" Width="170px" Height="42px"/>
       <br />
       <br />
       <tr><td></td>
       <td><p class="signin button" style" width:50%"> 
       <asp:Button ID="Button1" runat="server" 
                       Text="Sign Up" class="signin button" 
                       onclick="btnSave_Click" Width="121px"/>
                       &nbsp;</p>
       </td></tr>
       <br />
   </td></tr>
  
   <tr><td>&nbsp;</td></tr>
   
   
       
   
   </table>
   <p class="change_link">  
									Already a member ?
									<a href="Login.aspx" class="to_register"> Go and log in </a>
								</p>
   </form>
   </div>
                    </center>
                        
						
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>