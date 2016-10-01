<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Hindi_Course_Registration.aspx.cs" Inherits="Hindi_Course_Registration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="https://www.google.com/jsapi">
    </script>
    <script type="text/javascript">

        // Load the Google Transliterate API
        google.load("elements", "1", {
            packages: "transliteration"
        });
        function onLoad() {
            var options = {
                sourceLanguage:
                google.elements.transliteration.LanguageCode.ENGLISH,
                destinationLanguage:
                [google.elements.transliteration.LanguageCode.HINDI],
                transliterationEnabled: true
            };

            // Create an instance on TransliterationControl with the required
            // options.
            var control =
            new google.elements.transliteration.TransliterationControl(options);

            // Enable transliteration in the textbox with id
            // 'transliterateTextarea'.
           
            control.makeTransliteratable(['txtHindiCourse']);
            control.makeTransliteratable(['txtHindiVenue']);
            control.makeTransliteratable(['txtHindiDuration']);
            
        }
        google.setOnLoadCallback(onLoad);
        </script>
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
            height: 21px;
        }
            .style63
            {
                text-align: left;
                width: 207px;
            }
            .style64
            {
                width: 475px;
            }
            .style67
            {
                text-align: left;
                width: 207px;
                height: 18px;
            }
            .style68
            {
                height: 18px;
                width: 475px;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
    
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
                <td  align="center" colspan="3" class="style62" 
                    style="color: #FF0000; font-size: large; font-weight: lighter;">
                    Note: In case any kind of typing problem arises in hindi mode, please visit the 
                    following link.&nbsp;
                    <br />
<marquee behavior="alternate"> <a href ="https://translate.google.co.in/" target="_blank">Click here to open the Google Translator</a> </marquee></td>
            </tr>
            <tr>
                <td class="style42" align="right" style="background-color: #FFFF99" 
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
                <td class="style67" align="center" style="background-color: #FFFF99">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label22" runat="server" Text="Course Title:" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="Black" style="text-align: left"></asp:Label>
                </td>
                <td class="style68" style="background-color: #FFFF99" colspan="2">
                    <asp:TextBox ID="txtCourse" runat="server" Width="264px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtCourse" ErrorMessage="Enter Course Title" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    <br />
                    </td>
            </tr>
            <tr>
                <td class="style63" align="center" style="background-color: #FFFF99">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Hindi Course Title:" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="Black" style="text-align: left"></asp:Label>
                </td>
                <td class="style64" style="background-color: #FFFF99" colspan="2">
                    <asp:TextBox ID="txtHindiCourse" runat="server" Width="264px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtHindiCourse" ErrorMessage="Enter Course Title in Hindi" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    </td>
            </tr>
            <tr>
                <td class="style33" style="background-color: #FFFF99" align="center">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label21" runat="server" Text="Department:" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="Black"></asp:Label>
                </td>
                <td class="style22" style="background-color: #FFFF99" colspan="2">
                        <asp:DropDownList ID="ddlDep" runat="server" Width="264px" AutoPostBack="True" 
                            onprerender="ddlDep_PreRender">
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="ddlDep" ErrorMessage="Please Select Department" 
                            InitialValue="0" ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="style33" style="background-color: #FFFF99" align="center">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Department(in Hindi):" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="Black"></asp:Label>
                </td>
                <td class="style22" style="background-color: #FFFF99" colspan="2">
                        <asp:DropDownList ID="ddlHindiDep" runat="server" Width="264px" Enabled="False">
                            <asp:ListItem Value="0">--Select Department--</asp:ListItem>
                            <asp:ListItem>व्यावहारिक विज्ञान</asp:ListItem>
                            <asp:ListItem>सिविल अभियांत्रिकी</asp:ListItem>
                            <asp:ListItem>शारीरिक रूप से विकलांग के लिए केंद्र</asp:ListItem>
<asp:ListItem>कंप्यूटर विज्ञान और अभियांत्रिकी</asp:ListItem>
                            <asp:ListItem>पाठ्यक्रम विकास केंद्र</asp:ListItem>
                            <asp:ListItem>शिक्षा और शिक्षा प्रबंधन</asp:ListItem>
                            <asp:ListItem>शिक्षा टेलीविजन केंद्र</asp:ListItem>
                            <asp:ListItem>इलेक्ट्रिकल अभियांत्रिकी</asp:ListItem>
                            <asp:ListItem>इलेक्ट्रॉनिक्स और संचार अभियांत्रिकी</asp:ListItem>
                            <asp:ListItem>इलेक्ट्रॉनिक्स सेवा केंद्र</asp:ListItem>
                            <asp:ListItem>ईएमजीटी </asp:ListItem>
                            <asp:ListItem>उद्यमिता विकास और औद्योगिक समन्वय</asp:ListItem>
                            <asp:ListItem>सूचना प्रबंधन और समन्वय</asp:ListItem>
                            <asp:ListItem>पुस्तकालय</asp:ListItem>
                            <asp:ListItem>यांत्रिक अभियांत्रिकी</asp:ListItem>
                            <asp:ListItem>मीडिया एंड कंटीन्यूइंग शिक्षा	</asp:ListItem>
                            <asp:ListItem>NITTTR चंडीगढ़</asp:ListItem>
                            <asp:ListItem>ग्रामीण विकास</asp:ListItem>
                            <asp:ListItem>Y K आनंद</asp:ListItem>
                        </asp:DropDownList>
                    </td>
            </tr>
            <tr>
                <td class="style59" style="background-color: #FFFF99" align="center">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Date:"></asp:Label>
                    &nbsp;&nbsp; </td>
                <td class="style29" style="background-color: #FFFF99">
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="From:"></asp:Label>
                    &nbsp;<asp:TextBox ID="txtFrom" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="txtFrom_CalendarExtender" runat="server" 
                        Enabled="True" Format="dd-MM-yyyy" TargetControlID="txtFrom">
                    </asp:CalendarExtender>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtFrom" ErrorMessage="Enter Start Date" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
                <td class="style60" style="background-color: #FFFF99">
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="To:"></asp:Label>
                    <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="txtTo_CalendarExtender" runat="server" Enabled="True" 
                        Format="dd-MM-yyyy" TargetControlID="txtTo">
                    </asp:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtTo" ErrorMessage="Enter End Date" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
            </tr>
             <tr>
                <td class="style39" style="background-color: #FFFF99" align="center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label14" runat="server" 
                        Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Venue:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style27" style="background-color: #FFFF99" colspan="2">
                    <asp:TextBox ID="txtVenue" runat="server" Height="21px" Width="264px"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtVenue" ErrorMessage="Enter Venue" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
            </tr>
             <tr>
                <td class="style39" style="background-color: #FFFF99" align="center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label23" runat="server" 
                        Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Venue(in Hindi):"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style27" style="background-color: #FFFF99" colspan="2">
                    <asp:TextBox ID="txtHindiVenue" runat="server" Height="21px" Width="264px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtHindiVenue" ErrorMessage="Enter Venue in Hindi" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="style39" style="background-color: #FFFF99" align="center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                        ID="Label24" runat="server" 
                        Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Duration:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style27" style="background-color: #FFFF99" colspan="2">
                    <asp:TextBox ID="txtDuration" runat="server" Height="21px" Width="264px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtDuration" ErrorMessage="Enter duration of the Course" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="style39" style="background-color: #FFFF99" align="center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                        ID="Label25" runat="server" 
                        Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Duration(in Hindi)"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style27" style="background-color: #FFFF99" colspan="2">
                    <asp:TextBox ID="txtHindiDuration" runat="server" Height="21px" Width="264px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtHindiDuration" ErrorMessage="Enter course duration in hindi" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="style39" style="background-color: #FFFF99">
                    &nbsp;</td>
                <td class="style27" style="background-color: #FFFF99">
                        
                    
                    <asp:Button ID="Button1" runat="server" Text="Submit" 
                        ValidationGroup="a" BackColor="#3333CC" BorderColor="White" 
                        BorderStyle="Solid" ForeColor="White" onclick="Button1_Click" />
                        
                    
                </td>
                <td class="style61" style="background-color: #FFFF99">
                        
                    
                    <asp:Button ID="Button2" runat="server" Text="Reset" 
                        BackColor="#3333CC" BorderColor="White" BorderStyle="Solid" 
                        ForeColor="White" onclick="Button2_Click" />
                        
                    
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
</body>
</html>
