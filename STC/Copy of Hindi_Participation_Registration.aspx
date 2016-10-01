<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Copy of Hindi_Participation_Registration.aspx.cs" Inherits="Hindi_Participation_Registration" %>

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
            control.makeTransliteratable(['txtname']);
            control.makeTransliteratable(['txtDesignation']);
            control.makeTransliteratable(['txtInstitute']);
            
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
      
        .style11
        {
        }
        .style12
        {
            width: 39px;
            height: 4px;
        }
        .style13
        {
            height: 4px;
            width: 205px;
        }
        .style14
        {
            text-align: left;
            height: 4px;
        }
        .style15
        {
            width: 182px;
            height: 4px;
        }
              
        .style20
        {
            height: 4px;
            width: 143px;
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
            width: 205px;
        }
        .style25
        {
            width: 39px;
            height: 28px;
        }
        .style26
        {
            width: 205px;
            height: 28px;
        }
        .style27
        {
            text-align: left;
            height: 28px;
        }
      
            .style28
            {
                width: 39px;
                height: 21px;
            }
            .style29
            {
                width: 205px;
                height: 21px;
            }
            .style30
            {
                text-align: left;
                height: 21px;
            }
            .style31
            {
                width: 143px;
                height: 21px;
            }
      
        </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table align="center"
          
            
             
             style=" text-align: left;  border-collapse: collapse; table-layout: fixed; width: 859px;" 
             bgcolor="#FFFF99">
            
            <tr>            
                <td align="left" class="style22">
                    </td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <td class="style23" align="center" colspan="3"  >
                    
                    &nbsp;&nbsp;
                                   
                    <b style="color:Blue; font-size:25px; text-decoration: underline;">Participant&#39;s Registration Form</b>
                       </td>
                
            </tr>
            
            <tr>            
                <td align="left" class="style3">
                    &nbsp;</td>
                <td class="style24">
                    &nbsp;</td>
                <td class="style11" align="left" colspan="3" >
                    
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="style3" align="left">
                </td>
                <td class="style24"  >
                  
                    <asp:Label ID="Label2" runat="server" Text="Coodinating Deparment" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:Label>
                </td>
                <td class="style7" >
                    <asp:DropDownList ID="department" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="HINDI_DEPTT" DataValueField="HINDI_DEPTT" 
                        Width="385px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                        SelectCommand="SELECT DISTINCT [HINDI_DEPTT] FROM [HINDI_COURSE_REG]">
                    </asp:SqlDataSource>
                </td>
                     <td class="style10">
                   
                     
                </td>
                    <td class="style6">
                        &nbsp;</td>
              
            </tr>
            <tr>
                <td align="left" class="style3">&nbsp;</td>
                <td class="style24">        
                      <b>Select Date:</b></td>
                <td class="style7"  >
                    <b>From:</b>&nbsp;<asp:TextBox ID="startdate" runat="server" AutoPostBack="True" 
                        Width="136px"></asp:TextBox>
                                <asp:CalendarExtender ID="startdate_CalendarExtender" 
                        runat="server" Enabled="True" Format="dd-MM-yyyy" TargetControlID="startdate">
                    </asp:CalendarExtender>
                                </b>
                </td>
                     <td class="style10">
                         <b>To:</b><asp:TextBox ID="enddate" runat="server" AutoPostBack="True" 
                             Width="155px"></asp:TextBox>
                                <asp:CalendarExtender ID="enddate_CalendarExtender" runat="server" 
                             Enabled="True" Format="dd-MM-yyyy" TargetControlID="enddate">
                         </asp:CalendarExtender>
                                </td>
                    <td class="style6">&nbsp;</td>
              
            </tr>
            <tr>
                <td align="left" class="style3"></td>
                <td class="style24">        
                      <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" 
                            Text="O Plan No.:"></asp:Label>
                        </td>
                <td class="style7"  >
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="OPLAN_NO" 
                        DataValueField="OPLAN_NO" Height="16px" Width="186px" AutoPostBack="True" 
                        onprerender="DropDownList2_PreRender">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                        SelectCommand="SELECT DISTINCT [OPLAN_NO] FROM [HINDI_COURSE_REG] WHERE (([HINDI_DEPTT] = @HINDI_DEPTT) AND ([START_DATE] BETWEEN @START_DATE AND @END_DATE))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="department" Name="HINDI_DEPTT" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="startdate" DbType="Date" Name="START_DATE" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="enddate" DbType="Date" Name="END_DATE" 
                                PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                     <td class="style10">
                         &nbsp;</td>
                    <td class="style6"></td>
              
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style24" >
                      <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Size="Large" 
                            Text="Student Name.:"></asp:Label>
                        </td>
                <td class="style7" >
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                        SelectCommand="SELECT DISTINCT [COURSENAME], [STARTDATE], [ENDDATE], [VENUE] FROM [COURSE_REG] WHERE ([OPLAN_NO] = @OPLAN_NO)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="OPLAN_NO" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList3" runat="server" 
                        DataSourceID="SqlDataSource4" DataTextField="NAME" DataValueField="NAME" 
                        onprerender="DropDownList3_PreRender">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                        SelectCommand="SELECT [NAME] FROM [HINDI_PARTICIPANT] WHERE ([OPLAN_NO] = @OPLAN_NO)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="OPLAN_NO" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
                     <td class="style10">&nbsp;</td>
                    <td class="style6">&nbsp;</td>
            
            </tr>
            <tr>
                <td class="style12">
                    </td>
                <td class="style13" >
                    <asp:Label ID="Label4" runat="server" Text="Couse Name:" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="Black"></asp:Label>
                </td>
                <td class="style14" colspan="3" >
                    <asp:TextBox ID="coursename" runat="server" ReadOnly="True" Width="385px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="coursename" ErrorMessage="Course Name Required" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style13" >
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Venue:"></asp:Label>
                </td>
                <td class="style14" >
                        <asp:TextBox ID="venue" runat="server" style="margin-top: 0px" 
                        ReadOnly="True" Width="179px"></asp:TextBox>
                </td>
                     <td class="style15">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                             ControlToValidate="coursename" ErrorMessage="Venue Name Required" 
                             ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
                    <td class="style20">
                        &nbsp;</td>
            
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style13" >
                    <asp:Label ID="Label23" runat="server" style="font-weight: 700" Text="Date:"></asp:Label>
                </td>
                <td class="style14" >
                    <b>From:<asp:TextBox ID="datefrom" runat="server" Width="136px" ReadOnly="True"></asp:TextBox>

                        </b>&nbsp;</b><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                         ControlToValidate="datefrom" ErrorMessage="From Date Required" 
                            ValidationGroup="a">*</asp:RequiredFieldValidator>

                </td>
                     <td class="style15">
                         <b>To:<asp:TextBox ID="dateto" runat="server" Width="155px" AutoPostBack="True" 
                             ReadOnly="True"></asp:TextBox>
                         </b>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                             ControlToValidate="dateto" ErrorMessage="To Date Required" 
                             ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
                    <td class="style20">
                        &nbsp;</td>
            
            </tr>
           
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style24" >
                    &nbsp;</td>
                <td class="style7" >
                     &nbsp;</td>
                     <td class="style10">
                         &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
               
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style24">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Name:"></asp:Label>
                </td>
                <td class="style7" >
                    
                    
                        <asp:TextBox ID="txtname" runat="server" Width="180px" 
                            style="margin-right: 0px"></asp:TextBox>
                    
                    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtName" ErrorMessage="Please enter your name" 
                            ValidationGroup="a">*</asp:RequiredFieldValidator>
                    
                    
                    </td>
                     <td class="style10">
                   
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Designation:"></asp:Label>
                         </td>
                    <td class="style6">
                    <asp:TextBox ID="txtDesignation" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtDesignation" ErrorMessage="Please enter designation" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
             
            </tr>
            <tr>
                <td class="style3" >
                    </td>
                <td class="style24" >
                   
                    <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Hindi Name:"></asp:Label>
                </td>
                <td class="style7"  >
                    
                    
                        <asp:TextBox ID="txtHindiName" runat="server" Width="180px" 
                            style="margin-right: 0px"></asp:TextBox>
                    
                    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                            ControlToValidate="txtName" ErrorMessage="Please enter your name" 
                            ValidationGroup="a">*</asp:RequiredFieldValidator>
                    
                    
                    </td>
                     <td class="style10" >
                   
                    <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Hindi Designation:"></asp:Label>
                         </td>
                    <td class="style6">
                    <asp:TextBox ID="txtHindiDesignation" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                        ControlToValidate="txtDesignation" ErrorMessage="Please enter designation" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
             
            </tr>
           
            <tr>
                <td class="style25" >
                    </td>
                <td class="style26" >
                   
                         &nbsp;</td>
                <td class="style27" colspan="3"  >
                        &nbsp;</td>
             
            </tr>
           
            <tr>
                <td class="style3" >
                    &nbsp;</td>
                <td class="style24" >
                   
                    &nbsp;</td>
                <td class="style7"  >
                    &nbsp;</td>
                     <td class="style10" >
                   
                         &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
            
            </tr>
           
            <tr>
                <td class="style3" >
                    &nbsp;</td>
                <td class="style24" >
                   
                         <asp:Label ID="Label26" runat="server" Text="Institute/Organisation:" 
                             style="font-weight: 700"></asp:Label>
                </td>
                <td class="style7" colspan="3"  >
                    
                        <asp:TextBox ID="txtInstitute" runat="server" Width="588px" Height="22px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                            ControlToValidate="txtInstitute" ErrorMessage="Please enter institute" 
                            ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            
            </tr>
           
            <tr>
                <td class="style25" >
                    </td>
                <td class="style26" >
                   
                         <asp:Label ID="Label15" runat="server" Text="Hindi Institute/Organisation:" 
                             style="font-weight: 700"></asp:Label>
                </td>
                <td class="style27" colspan="3"  >
                    
                        <asp:TextBox ID="txtHindiInstitute" runat="server" Width="588px" Height="22px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtInstitute" ErrorMessage="Please enter institute" 
                            ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            
            </tr>
           
            <tr>
                <td class="style28" >
                    </td>
                <td class="style29" >
                   
                </td>
                <td class="style30" colspan="2"  >
                </td>
                    <td class="style31">
                    
                        </td>
            
            </tr>
            <tr>
                <td class="style3" >
                    &nbsp;</td>
                <td class="style24" >
                   
                    <asp:Label ID="Label20" runat="server" Text="State:" style="font-weight: 700"></asp:Label>
                </td>
                <td class="style7"  >
                    
        <asp:DropDownList ID="State" runat="server" Width="184px" style="margin-left: 0px">
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
        <asp:ListItem>Uttaranchal</asp:ListItem>
        <asp:ListItem>Uttar Pradesh</asp:ListItem>
        <asp:ListItem>West Bengal</asp:ListItem>
      </asp:DropDownList> 
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="State" Display="Dynamic" ErrorMessage="Please Select State" 
                        InitialValue="0" ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
                     <td class="style10" >
                   
                    <asp:Label ID="Label27" runat="server" Text="State in Hindi:" 
                             style="font-weight: 700"></asp:Label>
                </td>
                    <td class="style6">
                    
        <asp:DropDownList ID="HindiState" runat="server" Width="184px" style="margin-left: 0px">
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
        <asp:ListItem>Uttaranchal</asp:ListItem>
        <asp:ListItem>Uttar Pradesh</asp:ListItem>
        <asp:ListItem>West Bengal</asp:ListItem>
      </asp:DropDownList> 
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="HindiState" Display="Dynamic" ErrorMessage="Please Select State" 
                        InitialValue="0" ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td class="style3" >
                    &nbsp;</td>
                <td class="style24" >
                   
                    &nbsp;</td>
                <td class="style7"  >
                    
                    <asp:Button ID="btnCancel0" runat="server" Text="Submit" 
                         Height="27px" BackColor="#3333CC" 
                        BorderColor="White" BorderStyle="Solid" Font-Bold="True" Font-Names="Arial" 
                        ForeColor="White" onclick="btnCancel0_Click" ValidationGroup="a" />
                </td>
                     <td class="style10" >
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
                <td class="style24" >
                         &nbsp;</td>
                <td class="style7" >
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="41px" 
                        ValidationGroup="a" Width="247px" ShowMessageBox="True" ShowSummary="False" />
                </td>
                     <td class="style10">
                         &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
               
            </tr>
            </table>
    </div>
    </form>
</body>
</html>
