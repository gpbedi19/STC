<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>


<html >
 <head>
    <meta charset="UTF-8">
    <title>Paperless Office Environment </title>
    
    
    
    
        <style>
            a:link
{
                border: #C0C0C0;
                color: blue;
            }
            <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      @import url(http://fonts.googleapis.com/css?family=Exo:100,200,400);
@import url(http://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);

body{
	margin: 0;
	padding: 0;
	background: #fff;

	color: #fff;
	font-family: Arial;
	font-size: 12px;
}

.body{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background-image: url(images/background4.jpg);
	background-size: cover;
	-webkit-filter: blur(0px);
	z-index: 0;
}

.grad{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0)), color-stop(100%,rgba(0,0,0,0.25))); /* Chrome,Safari4+ */
	z-index: 1;
	opacity: 1;
}

.header{
	position: absolute;
	top: calc(25% - 35px);
left: calc(25% - 35px);
	     z-index: 2;

    }

.header div{
border: 10px solid grey ;
    background-color: white;
        box-sizing: border-box;
border-radius: 15px;

        -moz-box-sizing: border-box;
	float: left;
	color: blue;
	font-family: 'Exo', sans-serif;
	font-size: 35px;
	font-weight: 200;
}

.header div span{
	color: #5379fa !important;
}

.photo{
	position: absolute;
	top: calc(50% - 75px);
	left: calc(10% - 50px);
	
	padding: 0px 42% 27% 00px;
	
border: 10px solid grey ;
    background-color: white;
        box-sizing: border-box;
border-radius: 15px;

        -moz-box-sizing: border-box;
}
.login{
    border-radius: 15px;
                border: thick blue solid;
                position: absolute;
                top: calc(52% - 75px);
                right: calc(10% - 50px);
                padding: 10px;
                z-index: 2;
                background-color: #C0C0C0;
            }

.login input[type=text]{
                width: 250px;
                height: 30px;
                background: transparent;
                border: 1px solid black;
                border-radius: 2px;
                color: black;
                font-family: 'Exo', sans-serif;
                font-size: 16px;
                font-weight: 400;
                padding: 4px;
            }

.login input[type=password]{
                width: 250px;
                height: 30px;
                background: transparent;
                border: 1px solid black;
                border-radius: 2px;
                color: black;
                font-family: 'Exo', sans-serif;
                font-size: 16px;
                font-weight: 400;
                padding: 4px;
                margin-top: 10px;
            }

.login input[type=button]{
                width: 251px;
                height: 35px;
                background: white;
                border: 1px solid black;
                cursor: pointer;
                border-radius: 2px;
                color: black;
                font-family: 'Exo', sans-serif;
                font-size: 16px;
                font-weight: 400;
                padding: 6px;
                margin-top: 10px;
            }

.login input[type=button]:hover{
	opacity: 0.8;
}

.login input[type=button]:active{
	opacity: 0.6;
}

.login input[type=text]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=password]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=button]:focus{
	outline: none;
}

::-webkit-input-placeholder{
   color: black;
}

::-moz-input-placeholder{
   color: black;
}

    </style>

    
        <script src="js/prefixfree.min.js"></script>

    
  
  <!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->  
  </head>

  <body>

      <form id="form1" runat="server">

    <div class="body"></div>
		<div class="grad"><img src="images/design5.jpg" width="100%"></div>
		<div class="header" align="center">
			<div align="center"><center><U>WELCOME TO STC MANAGEMENT SYSTEM</U></center>
            </div>
		</div>
        <div class="header1" align="center">
			<div align="center">
                <center><U>te of Teachers Training and Institute and Research,Chandigarh</U></center></div>
		</div>
		<br>
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="data1/images/1.jpg" alt="1" title="1" id="wows1_0"/></li>
		<li><img src="data1/images/2.jpg" alt="2" title="2" id="wows1_1"/></li>
		<li><img src="data1/images/3.jpg" alt="3" title="3" id="wows1_2"/></li>
		<li><img src="data1/images/4.jpg" alt="4" title="4" id="wows1_3"/></li>
		<li><img src="data1/images/5.jpg" alt="5" title="5" id="wows1_4"/></li>
		<li><img src="data1/images/6.jpg" alt="6" title="6" id="wows1_5"/></li>
		<li><a href="http://wowslider.com"><img src="data1/images/7.jpg" alt="wowslider" title="7" id="wows1_6"/></a></li>
		<li><img src="data1/images/8.jpg" alt="8" title="8" id="wows1_7"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="1"><span><img src="data1/tooltips/1.jpg" alt="1"/>1</span></a>
		<a href="#" title="2"><span><img src="data1/tooltips/2.jpg" alt="2"/>2</span></a>
		<a href="#" title="3"><span><img src="data1/tooltips/3.jpg" alt="3"/>3</span></a>
		<a href="#" title="4"><span><img src="data1/tooltips/4.jpg" alt="4"/>4</span></a>
		<a href="#" title="5"><span><img src="data1/tooltips/5.jpg" alt="5"/>5</span></a>
		<a href="#" title="6"><span><img src="data1/tooltips/6.jpg" alt="6"/>6</span></a>
		<a href="#" title="7"><span><img src="data1/tooltips/7.jpg" alt="7"/>7</span></a>
		<a href="#" title="8"><span><img src="data1/tooltips/8.jpg" alt="8"/>8</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com">slider</a> by WOWSlider.com v8.7</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="engine1/wowslider.js"></script>
<script type="text/javascript" src="engine1/script.js"></script>

		<%--<div class="login">
        <div class="inside_login">
<H2 style="color:blue">Please Enter Credentials Here</H2>

<input type="radio" name="role" value="student" />
<asp:Label ID="Label4" runat="server" Text="Student"></asp:Label>
<input type="radio" name="role" value="admin" />
<asp:Label ID="Label5" runat="server" Text="Admin"></asp:Label>
<input type="radio" name="role" value="hod" />
<asp:Label ID="Label6" runat="server" Text="HOD"></asp:Label>
<br />
<br />
				<input type="text" placeholder="username"  id="uname" runat="server" name="user"><br>
				<input type="password" placeholder="password" id="pwd" runat="server" name="password"><br>
  <input type="button" id="button" value="Login" runat="server"
onServerClick="doIt" ><br /><br />
           
            <asp:Label ID="Label2" runat="server" Text="Not a member yet?" ForeColor="black" Font-Size="Larger"></asp:Label>			
          <a href="Register.aspx" class="to_register">
                <asp:Label ID="Label3" runat="server" Text="Join Us" Font-Size="Larger"></asp:Label></a>
					</div>
                    </div>--%>
                    <div class="login">
<H2 style="color:blue">Please Enter Credentials Here</H2>
<br>
<br>            <input type="radio" name="role" id="role" value="student" 
                checked="checked"/>Participant
                <input type="radio" name="role" id="role" value="hod"/>HOD
                <input type="radio" name="role" id="role" value="admin"/>Admin
                <br />
                <br />
				<input type="text" placeholder="username"  id="uname" runat="server" name="user"><asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" runat="server" ControlToValidate="uname" 
                ErrorMessage="Enter Username" ValidationGroup="a">*</asp:RequiredFieldValidator>
            <br>
				<input type="password" placeholder="password" id="pwd" runat="server" name="password"><asp:RequiredFieldValidator 
                ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwd" 
                ErrorMessage="Enter your Password" ValidationGroup="a">*</asp:RequiredFieldValidator>
            <br>
                
  <input type="button" id="button" value="Login" runat="server"
onServerClick="doIt" validationgroup="a" ><br /><br />
            
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ShowMessageBox="True" ShowSummary="False" ValidationGroup="a" />
            
  <br />
            <asp:Label ID="Label2" runat="server" Text="Not a member yet?" ForeColor="White" Font-Size="Larger"></asp:Label>			
          <a href="Register.aspx" class="to_register">
                <asp:Label ID="Label3" runat="server" Text="Join Us" Font-Size="Larger"></asp:Label></a>
					</div>

    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    
      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    
      </form>
    
    
  </body>
</html>
