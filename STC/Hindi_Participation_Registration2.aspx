<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hindi_Participation_Registration2.aspx.cs" Inherits="Hindi_Participation_Registration2" %>

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
            control.makeTransliteratable(['txthindiname']);
            control.makeTransliteratable(['txtHindiInstitute']);
            control.makeTransliteratable(['PlaceHin']);
            
        }
        google.setOnLoadCallback(onLoad);
        </script>
        <style type="text/css">

      
        .style3
        {
            width: 39px;
        }
                      
     .style7
     {
            text-align: left;
        }
      
        .style6
        {
            width: 143px;
        }
      
        .style10
        {
            width: 182px;
        }
      
        .style22
        {
            width: 39px;
            height: 35px;
        }
        .style23
        {
            height: 35px;
        }
      
        .style24
        {
            }
        .style25
        {
            width: 39px;
            height: 28px;
        }
        .style26
        {
                width: 199px;
                height: 28px;
            }
        .style27
        {
            text-align: left;
            height: 28px;
        }
      
            .style28
            {
                text-align: left;
                width: 200px;
            }
            .style30
            {
                text-align: left;
                height: 28px;
                width: 200px;
            }
      
            .style31
            {
                width: 39px;
                height: 43px;
            }
            .style32
            {
                height: 43px;
                width: 199px;
            }
            .style33
            {
                text-align: left;
                width: 200px;
                height: 43px;
            }
            .style34
            {
                width: 182px;
                height: 43px;
            }
            .style35
            {
                width: 143px;
                height: 43px;
            }
            .style36
            {
                width: 199px;
            }
            .style37
            {
                width: 182px;
                height: 28px;
            }
            .style38
            {
                width: 143px;
                height: 28px;
            }
      
        </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table align="center"
          
            
             
             style=" text-align: left;  border-collapse: collapse; table-layout: fixed; width: 1029px;" 
             bgcolor="#FFFF99">
            
            <tr>            
                <td align="left" class="style22">
                    </td>
                <td class="style23" align="center" colspan="4"  >
                    
                    &nbsp;&nbsp;
                                   
                    <b style="color:Blue; font-size:25px; text-decoration: underline;">Participant&#39;s Registration Form</b>
                       </td>
                
            </tr>
            
            <tr>            
                <td align="left" class="style3">
                    &nbsp;</td>
                <td class="style24" colspan="5" 
                    style="color: #FF0000; font-size: large; font-weight: lighter;">
                    Note: In case any kind of typing problem arises in hindi mode, please visit the 
                    following link.<br />
<marquee behavior="alternate"> <a href ="https://translate.google.co.in/" target="_blank">Click here to open the Google Translator</a> </marquee></td>
                
            </tr>
            <tr>
                <td class="style3" align="left">
                    &nbsp;</td>
                <td class="style36"  >
                  
                    &nbsp;</td>
                <td class="style28" >
                    &nbsp;</td>
                     <td class="style10" colspan="2">
                   
                     
                         &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
              
            </tr>
            <tr>
                <td class="style3" align="left">
                    &nbsp;</td>
                <td class="style36"  >
                  
                    &nbsp;</td>
                <td class="style28" >
                    &nbsp;</td>
                     <td class="style10" colspan="2">
                   
                     
                         &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
              
            </tr>
           
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style24" colspan="5" >
                    <b style="color:Blue; font-size:25px; text-decoration: underline;">Participant&#39;s Detail for 
                    Certificate Printing</b></td>
               
            </tr>
            <tr>
                <td class="style31">
                    </td>
                <td class="style32">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Participant's Name (English):"></asp:Label>
                </td>
                <td class="style33" >
                    
                    
                        <asp:TextBox ID="txtname" runat="server" Width="173px" 
                            style="margin-right: 0px"></asp:TextBox>
                    
                    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtName" ErrorMessage="Please enter your name" 
                            ValidationGroup="a">*</asp:RequiredFieldValidator>
                    
                    
                    </td>
                     <td class="style34">
                   
                    <asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Participant's Name (Hindi):" Width="203px"></asp:Label>
                         </td>
                     <td class="style34">
                   
                    
                        <asp:TextBox ID="txthindiname" runat="server" Width="180px" 
                            style="margin-right: 0px"></asp:TextBox>
                    
                    
                         </td>
                    <td class="style35">
                    
                    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                            ControlToValidate="txtName" ErrorMessage="Please enter your name in hindi" 
                            ValidationGroup="a">*</asp:RequiredFieldValidator>
                    
                    
                </td>
             
            </tr>
            <tr>
                <td class="style25" style="background-color: #9999FF" >
                    </td>
                <td class="style26" style="background-color: #9999FF" >
                   
                         <asp:Label ID="Label15" runat="server" Text="Institute Name (English):" 
                             style="font-weight: 700"></asp:Label>
                </td>
                <td class="style27" colspan="4" style="background-color: #9999FF"  >
                    
                        <asp:TextBox ID="txtInstitute" runat="server" Width="588px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtInstitute" ErrorMessage="Please enter institute" 
                            ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            
            </tr>
            <tr>
                <td class="style25" style="background-color: #9999FF" >
                    &nbsp;</td>
                <td class="style26" style="background-color: #9999FF" >
                   
                         &nbsp;</td>
                <td class="style30" style="background-color: #9999FF"  >
                    
                    <asp:Label ID="Label37" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Instituition Place (English):"></asp:Label>
                </td>
            
                <td class="style27" style="background-color: #9999FF"  >
                    
                        <asp:TextBox ID="PlaceEng" runat="server"></asp:TextBox>
                </td>
            
                <td class="style27" style="background-color: #9999FF"  >
                    
                    <asp:Label ID="Label39" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Institution State (English):"></asp:Label>
                </td>
            
                <td class="style27" style="background-color: #9999FF"  >
                    
        <asp:DropDownList ID="State" runat="server" Width="184px" style="margin-left: 0px" 
                        AutoPostBack="True" onprerender="State_PreRender" 
                        onselectedindexchanged="State_SelectedIndexChanged1">
            <asp:ListItem Value="0">--Select State--</asp:ListItem>
        <asp:ListItem>Andaman and Nicobar Islands</asp:ListItem>
        <asp:ListItem>Andhra Pradesh</asp:ListItem>
        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
        <asp:ListItem>Assam</asp:ListItem>
        <asp:ListItem>Bihar</asp:ListItem>
        <asp:ListItem>Chandigarh</asp:ListItem>
        <asp:ListItem>Chattisgarh</asp:ListItem>
        <asp:ListItem>Dadra and Nagar Haveli</asp:ListItem>
        <asp:ListItem>Daman and Diu</asp:ListItem>
        <asp:ListItem>Delhi</asp:ListItem>
        <asp:ListItem>Goa</asp:ListItem>
        <asp:ListItem>Gujarat</asp:ListItem>
        <asp:ListItem>Haryana</asp:ListItem>
        <asp:ListItem>Himachal Pradesh</asp:ListItem>
        <asp:ListItem>Jammu and Kashmir</asp:ListItem>
        <asp:ListItem>Jharkhand</asp:ListItem>
        <asp:ListItem>Karnataka</asp:ListItem>
        <asp:ListItem>Kerala</asp:ListItem>
        <asp:ListItem>Lakshadweep</asp:ListItem>
        <asp:ListItem>Madhya Pradesh</asp:ListItem>
        <asp:ListItem>Maharashtra</asp:ListItem>
        <asp:ListItem>Manipur</asp:ListItem>
        <asp:ListItem>Meghalaya</asp:ListItem>
        <asp:ListItem>Mizoram</asp:ListItem>
        <asp:ListItem>Nagaland</asp:ListItem>
        <asp:ListItem>Orissa</asp:ListItem>
        <asp:ListItem>Pondicherry</asp:ListItem>
        <asp:ListItem>Punjab</asp:ListItem>
        <asp:ListItem>Rajasthan</asp:ListItem>
        <asp:ListItem>Sikkim</asp:ListItem>
        <asp:ListItem>Tamil Nadu</asp:ListItem>
        <asp:ListItem>Tripura</asp:ListItem>
        <asp:ListItem>Uttarakhand</asp:ListItem>
        <asp:ListItem>Uttar Pradesh</asp:ListItem>
        <asp:ListItem>West Bengal</asp:ListItem>
      </asp:DropDownList> 
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                        ControlToValidate="State" Display="Dynamic" ErrorMessage="Please Select Institution State in English" 
                        InitialValue="0" ValidationGroup="a">*</asp:RequiredFieldValidator>
                    
                </td>
            
            </tr>
            <tr>
                <td class="style25" style="background-color: #FF9999" >
                    </td>
                <td class="style26" style="background-color: #FF9999" >
                   
                         <asp:Label ID="Label33" runat="server" Text="Institute Name (Hindi)" 
                             style="font-weight: 700"></asp:Label>
                </td>
                <td class="style27" colspan="4" style="background-color: #FF9999"  >
                    
                        <asp:TextBox ID="txtHindiInstitute" runat="server" Width="588px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                            ControlToValidate="txtHindiInstitute" ErrorMessage="Please enter institute in hindi" 
                            ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            
            </tr>
            <tr>
                <td class="style3" style="background-color: #FF9999" >
                    &nbsp;</td>
                <td class="style36" style="background-color: #FF9999" >
                   
                         &nbsp;</td>
                <td class="style28" style="background-color: #FF9999"  >
                    
                    <asp:Label ID="Label38" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Instituition Place (Hindi):"></asp:Label>
                </td>
            
                <td class="style7" style="background-color: #FF9999"  >
                    
                        <asp:TextBox ID="PlaceHin" runat="server"></asp:TextBox>
                </td>
            
                <td class="style7" style="background-color: #FF9999"  >
                    
                    <asp:Label ID="Label40" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Institution State (Hindi):"></asp:Label>
                </td>
            
                <td class="style7" style="background-color: #FF9999"  >
                    
        <asp:DropDownList ID="HindiState" runat="server" Width="184px" style="margin-left: 0px" 
                            Enabled="False">
            <asp:ListItem Value="0">--Select State--</asp:ListItem>
        <asp:ListItem>अंडमान व नोकोबार द्वीप समूह</asp:ListItem>
        <asp:ListItem>आंध्र प्रदेश</asp:ListItem>
        <asp:ListItem>अरुणाचल प्रदेश</asp:ListItem>
        <asp:ListItem>असम</asp:ListItem>
        <asp:ListItem>बिहार</asp:ListItem>
        <asp:ListItem>चंडीगढ़</asp:ListItem>
        <asp:ListItem>छत्तीसगढ़</asp:ListItem>
        <asp:ListItem>दादरा और नगर हवेली</asp:ListItem>
        <asp:ListItem>दमन और दीव</asp:ListItem>
        <asp:ListItem>दिल्ली</asp:ListItem>
        <asp:ListItem>गोवा</asp:ListItem>
        <asp:ListItem>गुजरात</asp:ListItem>
        <asp:ListItem>हरियाणा</asp:ListItem>
        <asp:ListItem>हिमाचल प्रदेश</asp:ListItem>
        <asp:ListItem>जम्मू-कश्मीर</asp:ListItem>
        <asp:ListItem>झारखंड</asp:ListItem>
        <asp:ListItem>कर्नाटक</asp:ListItem>
        <asp:ListItem>केरल</asp:ListItem>
        <asp:ListItem>लक्षद्वीप</asp:ListItem>
        <asp:ListItem>मध्य प्रदेश</asp:ListItem>
        <asp:ListItem>महाराष्ट्र</asp:ListItem>
        <asp:ListItem>मणिपुर</asp:ListItem>
        <asp:ListItem>मेघालय</asp:ListItem>
        <asp:ListItem>मिजोरम</asp:ListItem>
        <asp:ListItem>नागालैंड</asp:ListItem>
        <asp:ListItem>उड़ीसा </asp:ListItem>
        <asp:ListItem>पांडिचेरी</asp:ListItem>
        <asp:ListItem>पंजाब </asp:ListItem>
        <asp:ListItem>राजस्थान</asp:ListItem>
        <asp:ListItem>सिक्किम</asp:ListItem>
        <asp:ListItem>तमिलनाडु</asp:ListItem>
        <asp:ListItem>त्रिपुरा</asp:ListItem>
        <asp:ListItem>उत्तराखंड</asp:ListItem>
        <asp:ListItem>उत्तर प्रदेश</asp:ListItem>
        <asp:ListItem>पश्चिम बंगाल</asp:ListItem>
      </asp:DropDownList> 
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                        ControlToValidate="HindiState" Display="Dynamic" ErrorMessage="Please Select Institution State in Hindi" 
                        InitialValue="0" ValidationGroup="a">*</asp:RequiredFieldValidator>
                    
                </td>
            
            </tr>
            <tr>
                <td class="style3" >
                    &nbsp;</td>
                <td class="style36" >
                   
                         &nbsp;</td>
                <td class="style7" colspan="4"  >
                    
                        &nbsp;</td>
            
            </tr>
            <tr>
                <td class="style3" >
                    &nbsp;</td>
                <td class="style24" colspan="5" >
                   
                         <b style="color:Blue; font-size:25px; text-decoration: underline;">Contact 
                         Details</b></td>
                </tr>
            <tr>
                <td class="style25" >
                    </td>
                <td class="style26" >
                   
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Designation:"></asp:Label>
                         </td>
                <td class="style30"  >
                    <asp:TextBox ID="txtDesignation" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtDesignation" ErrorMessage="Please enter designation" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
                     <td class="style37" colspan="2" >
                   
                         </td>
                    <td class="style38">
                        </td>
             
            </tr>
           
            <tr>
                <td class="style25" >
                    </td>
                <td class="style26" >
                   
                         <asp:Label ID="Label16" runat="server" Text="Address:" style="font-weight: 700"></asp:Label>
                         </td>
                <td class="style27" colspan="4"  >
                        <asp:TextBox ID="txtAddress" runat="server" style="margin-top: 0px" 
                        Width="588px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtAddress" ErrorMessage="Please enter address" 
                            ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
             
            </tr>
           
            <tr>
                <td class="style31" >
                    </td>
                <td class="style32" >
                   
                    <asp:Label ID="Label18" runat="server" Text="Mobile No:" 
                        style="font-weight: 700"></asp:Label>
                </td>
                <td class="style33"  >
                    <asp:TextBox ID="txtMobNo" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtMobNo" ErrorMessage="Please enter mobile number" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtMobNo" ErrorMessage="Enter correct  mobile number" 
                        ValidationExpression="^[789][0-9]{9}$" ValidationGroup="a">*</asp:RegularExpressionValidator>
                </td>
                     <td class="style34" >
                   
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                         <asp:Label ID="Label19" runat="server" Text="Email Id:" 
                             style="font-weight: 700"></asp:Label>
                </td>
                     <td class="style34" >
                   
                        <asp:TextBox ID="txtEmailId" runat="server" Width="180px"></asp:TextBox>
                </td>
                    <td class="style35">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="txtEmailId" ErrorMessage="Please enter Email Id" 
                            ValidationGroup="a">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtEmailId" ErrorMessage="Please enter the valid Email Id" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            ValidationGroup="a">*</asp:RegularExpressionValidator>
                </td>
            
            </tr>
           
            <tr>
                <td class="style3" >
                    &nbsp;</td>
                <td class="style36" >
                   
                    <asp:Label ID="Label20" runat="server" Text="State:" style="font-weight: 700"></asp:Label>
                </td>
                <td class="style28"  >
                    
        <asp:DropDownList ID="ddlStateAddress" runat="server" Width="184px" 
                        style="margin-left: 0px">
            <asp:ListItem Value="0">--Select State--</asp:ListItem>
        <asp:ListItem>Andaman and Nicobar Islands</asp:ListItem>
        <asp:ListItem>Andhra Pradesh</asp:ListItem>
        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
        <asp:ListItem>Assam</asp:ListItem>
        <asp:ListItem>Bihar</asp:ListItem>
        <asp:ListItem>Chandigarh</asp:ListItem>
        <asp:ListItem>Chattisgarh</asp:ListItem>
        <asp:ListItem>Dadra and Nagar Haveli</asp:ListItem>
        <asp:ListItem>Daman and Diu</asp:ListItem>
        <asp:ListItem>Delhi</asp:ListItem>
        <asp:ListItem>Goa</asp:ListItem>
        <asp:ListItem>Gujarat</asp:ListItem>
        <asp:ListItem>Haryana</asp:ListItem>
        <asp:ListItem>Himachal Pradesh</asp:ListItem>
        <asp:ListItem>Jammu and Kashmir</asp:ListItem>
        <asp:ListItem>Jharkhand</asp:ListItem>
        <asp:ListItem>Karnataka</asp:ListItem>
        <asp:ListItem>Kerala</asp:ListItem>
        <asp:ListItem>Lakshadweep</asp:ListItem>
        <asp:ListItem>Madhya Pradesh</asp:ListItem>
        <asp:ListItem>Maharashtra</asp:ListItem>
        <asp:ListItem>Manipur</asp:ListItem>
        <asp:ListItem>Meghalaya</asp:ListItem>
        <asp:ListItem>Mizoram</asp:ListItem>
        <asp:ListItem>Nagaland</asp:ListItem>
        <asp:ListItem>Orissa</asp:ListItem>
        <asp:ListItem>Pondicherry</asp:ListItem>
        <asp:ListItem>Punjab</asp:ListItem>
        <asp:ListItem>Rajasthan</asp:ListItem>
        <asp:ListItem>Sikkim</asp:ListItem>
        <asp:ListItem>Tamil Nadu</asp:ListItem>
        <asp:ListItem>Tripura</asp:ListItem>
        <asp:ListItem>Uttarakhand</asp:ListItem>
        <asp:ListItem>Uttar Pradesh</asp:ListItem>
        <asp:ListItem>West Bengal</asp:ListItem>
      </asp:DropDownList> 
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="ddlStateAddress" Display="Dynamic" ErrorMessage="Please Select State" 
                        InitialValue="0" ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
                     <td class="style10" colspan="2" >
                   
                         &nbsp;</td>
                    <td class="style6">
                    
                        &nbsp;</td>
                
            </tr>
            <tr>
                <td class="style3" >
                    &nbsp;</td>
                <td class="style36" >
                   
                    <asp:Label ID="Label27" runat="server" Text="Institute/Organisation Type:" 
                        style="font-weight: 700"></asp:Label>
                </td>
                <td class="style28"  >
                    
                        <asp:RadioButtonList ID="rdbGovtPvt" runat="server" Width="212px">
                            <asp:ListItem Selected="True">Govt./Govt.Added Technical Institution</asp:ListItem>
                            <asp:ListItem>Private Technical Institution</asp:ListItem>
                            <asp:ListItem>Teqip Institition</asp:ListItem>
                        </asp:RadioButtonList>
                </td>
                     <td class="style10" >
                   
                    &nbsp;&nbsp;&nbsp;&nbsp;
                   
                    <asp:Label ID="rbgtarget" runat="server" Text="Target Group:" 
                        style="font-weight: 700"></asp:Label>
                </td>
                     <td class="style10" >
                   
                    <asp:RadioButtonList ID="rdbTargetGp" runat="server" Width="166px">
                        <asp:ListItem Value="Engineering" Selected="True">Engineering</asp:ListItem>
                        <asp:ListItem Value="Polytechnic">Polytechnic</asp:ListItem>
                        <asp:ListItem>CDTPs Functionaries</asp:ListItem>
                        <asp:ListItem>Industries</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                    <td class="style6">
                        &nbsp;</td>
                
            </tr>
            <tr>
                <td class="style3" >
                    &nbsp;</td>
                <td class="style36" >
                   
                    &nbsp;</td>
                <td class="style28"  >
                    
                    <asp:Button ID="btnCancel0" runat="server" Text="Submit" 
                         Height="27px" BackColor="#3333CC" 
                        BorderColor="White" BorderStyle="Solid" Font-Bold="True" Font-Names="Arial" 
                        ForeColor="White" onclick="btnCancel0_Click" ValidationGroup="a" 
                        style="width: 67px" />
                </td>
                     <td class="style10" colspan="2" >
                    <asp:Button ID="btnCancel" runat="server" Text="Reset" 
                         Height="27px" BackColor="#3333CC" 
                        BorderColor="White" BorderStyle="Solid" Font-Bold="True" Font-Names="Arial" 
                        ForeColor="White" onclick="btnCancel_Click" />
                    </td>
                    <td class="style6">
                        &nbsp;</td>
            
            </tr>
            <tr>
                <td class="style3" >
                    </td>
                <td class="style36" >
                         &nbsp;</td>
                <td class="style28" >
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="41px" 
                        ValidationGroup="a" Width="247px" ShowMessageBox="True" ShowSummary="False" />
                </td>
                     <td class="style10" colspan="2">
                         &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
               
            </tr>
            </table>
    </div>
    </form>
</body>
</html>
