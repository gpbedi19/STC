<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hindi_Participation_Registration1.aspx.cs" Inherits="Hindi_Participation_Registration1" %>

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
      
        .style12
        {
            width: 39px;
            height: 4px;
        }
        .style13
        {
                height: 4px;
                width: 199px;
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
            .style29
            {
                text-align: left;
                height: 4px;
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
                <td class="style24" colspan="4" 
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
                     <td class="style10">
                   
                     
                         &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
              
            </tr>
            <tr>
                <td class="style3" align="left">
                    &nbsp;</td>
                <td class="style36"  >
                  
                    <asp:Label ID="Label34" runat="server" Text="Coordinating Deparment:" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:Label>
                </td>
                <td class="style28" >
                    <asp:DropDownList ID="department" runat="server" DataSourceID="SqlDataSource4" 
                        DataTextField="DEPTT" DataValueField="DEPTT" Width="385px" 
                        AutoPostBack="True" onselectedindexchanged="department_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                        
                        SelectCommand="SELECT DISTINCT [DEPTT] FROM [COURSE_REG] WHERE ([TYPE] = @TYPE)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="BILINGUAL" Name="TYPE" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                     <td class="style10">
                   
                     
                         &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
              
            </tr>
            <tr>
                <td class="style3" align="left">
                </td>
                <td class="style36"  >
                  
                    <asp:Label ID="Label2" runat="server" Text="Coordinating Deparment(Hindi):" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:Label>
                    <br />
                </td>
                <td class="style28" >
                    <asp:DropDownList ID="hindidepartment" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="HINDI_DEPTT" DataValueField="HINDI_DEPTT" 
                        Width="385px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                        
                        
                        
                        
                        SelectCommand="SELECT DISTINCT [HINDI_DEPTT] FROM [COURSE_REG] WHERE ([DEPTT] = @DEPTT AND [HINDI_DEPTT] IS NOT NULL) ">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="department" Name="DEPTT" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                     <td class="style10">
                   
                     
                </td>
                    <td class="style6">
                        &nbsp;</td>
              
            </tr>
            <tr>
                <td align="left" class="style3">&nbsp;</td>
                <td class="style36">        
                      <b>Select Date:</b></td>
                <td class="style28"  >
                    <b>From:</b>&nbsp;<asp:TextBox ID="startdate" runat="server" AutoPostBack="True" 
                        Width="136px"></asp:TextBox>
                                <asp:CalendarExtender ID="startdate_CalendarExtender" 
                        runat="server" Enabled="True" Format="dd-MM-yyyy" TargetControlID="startdate">
                    </asp:CalendarExtender>
                                
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
                <td class="style36">        
                      <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" 
                            Text="O Plan No.:"></asp:Label>
                        </td>
                <td class="style28"  >
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="OPLAN_NO" 
                        DataValueField="OPLAN_NO" Width="186px" AutoPostBack="True" 
                        onprerender="DropDownList2_PreRender">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                        
                        
                        
                        SelectCommand="SELECT DISTINCT [OPLAN_NO] FROM [COURSE_REG] WHERE (([DEPTT] = @DEPTT) AND ([START_DATE] BETWEEN @START_DATE AND  @END_DATE) AND TYPE = 'BILINGUAL')">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="department" Name="DEPTT" 
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
                <td class="style36" >
                    &nbsp;</td>
                <td class="style28" >
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                        SelectCommand="SELECT DISTINCT [COURSENAME], [STARTDATE], [ENDDATE], [VENUE] FROM [COURSE_REG] WHERE ([OPLAN_NO] = @OPLAN_NO)">
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
                    <asp:Label ID="Label4" runat="server" Text="Course Name:" Font-Bold="True" 
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
                    <asp:Label ID="Label28" runat="server" Text="Course Name (Hindi):" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="Black"></asp:Label>
                </td>
                <td class="style14" colspan="3" >
                    <asp:TextBox ID="hindicoursename" runat="server" ReadOnly="True" Width="385px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="hindicoursename" ErrorMessage="Course Name in Hindi Required" 
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
                <td class="style29" >
                        <asp:TextBox ID="venue" runat="server" style="margin-top: 0px" 
                        ReadOnly="True" Width="179px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                             ControlToValidate="coursename" ErrorMessage="Venue Name Required" 
                             ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
                     <td class="style15" align="left">
                    <asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Venue (Hindi):"></asp:Label>
                </td>
                    <td class="style20">
                        <asp:TextBox ID="hindivenue" runat="server" style="margin-top: 0px" 
                        ReadOnly="True" Width="179px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                             ControlToValidate="hindivenue" ErrorMessage="Venue Name in Hindi Required" 
                             ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style13" >
                    <asp:Label ID="Label35" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Duration:"></asp:Label>
                </td>
                <td class="style29" >
                        <asp:TextBox ID="duration" runat="server" style="margin-top: 0px" 
                        ReadOnly="True" Width="179px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                             ControlToValidate="duration" ErrorMessage="Duration Required" 
                             ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
                     <td class="style15" align="left">
                    <asp:Label ID="Label36" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Duration (Hindi):"></asp:Label>
                </td>
                    <td class="style20">
                        <asp:TextBox ID="hindiduration" runat="server" style="margin-top: 0px" 
                        ReadOnly="True" Width="179px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                             ControlToValidate="hindiduration" ErrorMessage="Duration in Hindi Required" 
                             ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            
            </tr>
            <tr>
                <td class="style12">
                    </td>
                <td class="style13" >
                    <asp:Label ID="Label23" runat="server" style="font-weight: 700" Text="Date:"></asp:Label>
                </td>
                <td class="style29" >
                    <b>From:<asp:TextBox ID="datefrom" runat="server" Width="136px" ReadOnly="True"></asp:TextBox>

                        </b>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
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
                        </td>
            
            </tr>
           
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style36" >
                    &nbsp;</td>
                <td class="style28" >
                    <asp:Label ID="Label41" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Coordinator Name:"></asp:Label>
                </td>
                     <td class="style10">
                         <asp:TextBox ID="coordinatorname" runat="server" Width="179px" 
                             ValidationGroup="a"></asp:TextBox>
                    
                    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                            ControlToValidate="coordinatorname" ErrorMessage="Please enter Coordinator Name" 
                            ValidationGroup="a">*</asp:RequiredFieldValidator>
                    
                    
                </td>
                    <td class="style6">
                        &nbsp;</td>
               
            </tr>
           
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style36" >
                    &nbsp;</td>
                <td class="style28" >
                    &nbsp;</td>
                     <td class="style10">
                         &nbsp;</td>
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
                <td class="style36" >
                         &nbsp;</td>
                <td class="style28" >
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
