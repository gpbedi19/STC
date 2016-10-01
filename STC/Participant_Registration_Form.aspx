<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Participant_Registration_Form.aspx.cs"  Inherits="Participant_Registration_Form" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server" ><title>Par</title>

    
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
      
        .style31
        {
            width: 39px;
            height: 24px;
        }
        .style32
        {
            width: 205px;
            height: 24px;
        }
        .style33
        {
            text-align: left;
            height: 24px;
        }
        .style34
        {
            width: 182px;
            height: 24px;
        }
        .style35
        {
            width: 143px;
            height: 24px;
        }
      
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body>
    <form id="form1" >
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
                        DataSourceID="SqlDataSource1" DataTextField="DEPTT" DataValueField="DEPTT" 
                        Width="385px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                        
                        SelectCommand="SELECT DISTINCT [DEPTT] FROM [COURSE_REG] WHERE TYPE = 'Single'">
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
                    runat="server" Enabled="True" Format="dd-MM-yyyy" 
                    TargetControlID="startdate">
                </asp:CalendarExtender>
                                </b>
                </td>
                     <td class="style10">
                         <b>To:</b><asp:TextBox ID="enddate" runat="server" AutoPostBack="True" 
                             Width="155px"></asp:TextBox>
                                <asp:CalendarExtender ID="enddate_CalendarExtender" 
                    runat="server" Enabled="True" Format="dd-MM-yyyy" 
                    TargetControlID="enddate">
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
                        DataValueField="OPLAN_NO" Width="186px" AutoPostBack="True" 
                        onprerender="DropDownList2_PreRender">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
                        
                        
                        SelectCommand="SELECT OPLAN_NO FROM COURSE_REG WHERE (DEPTT = @DEPTT) AND (START_DATE BETWEEN @STARTDATE AND @ENDDATE) AND TYPE = 'Single'">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="department" Name="DEPTT" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="startdate" DbType="Date" Name="STARTDATE" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="enddate" DbType="Date" Name="ENDDATE" 
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
                    &nbsp;</td>
                <td class="style7" >
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
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                             ControlToValidate="coursename" ErrorMessage="Venue Name Required" 
                             ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
                     <td class="style15">
                    <asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Duration:"></asp:Label>
                </td>
                    <td class="style20">
                    <asp:TextBox ID="txtDuration" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="txtDuration" ErrorMessage="Duration Required" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            
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
                    <asp:Label ID="Label41" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Coordinator Name:"></asp:Label>
                </td>
                     <td class="style10">
                         <asp:TextBox ID="coordinatorname" runat="server" Width="179px" 
                             ValidationGroup="a"></asp:TextBox>
                </td>
                    <td class="style6">
                        <span>
                    
                    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                            ControlToValidate="coordinatorname" ErrorMessage="Please enter Coordinator Name" 
                            ValidationGroup="a">*</asp:RequiredFieldValidator>
                    
                    
                    </td>
               
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
                    &nbsp;</td>
                <td class="style24" colspan="4">
                    <b style="color:Blue; font-size:25px; text-decoration: underline;">Participant&#39;s Detail for 
                    Certificate Printing</b></td>
             
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
                   
                         &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
             
            </tr>
             <tr>
                 <span>
                <td class="style3" >
                    &nbsp;</td>
                <td class="style24" >
                   
                         <asp:Label ID="Label15" runat="server" Text="Institute/Organisation:" 
                             style="font-weight: 700"></asp:Label>
                </td>
                <td class="style7" colspan="3"  >
                    
                        <asp:TextBox ID="txtInstitute" runat="server" Width="588px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtInstitute" ErrorMessage="Please enter institute" 
                            ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            
             </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style24">
                    <span>
                    
                    <asp:Label ID="Label37" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Instituition Place:"></asp:Label>
                </td>
                <td class="style7" >
                    
                    
                        <span>
                    
                    
                        <asp:TextBox ID="Place" runat="server" Width="180px" 
                            style="margin-right: 0px"></asp:TextBox>
                    
                    
                        </td>
                     <td class="style10">
                   
                         <span>
                    
                    <asp:Label ID="Label39" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Institution State :"></asp:Label>
                         </td>
                    <td class="style6">
                        <span>
                    
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
        <asp:ListItem Value="Jammu &amp; Kashmir">Jammu and Kashmir</asp:ListItem>
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
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="State" Display="Dynamic" ErrorMessage="Please Select State" 
                        InitialValue="0" ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
             
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style24">
                    &nbsp;</td>
                <td class="style7" >
                    
                    
                        &nbsp;</td>
                     <td class="style10">
                   
                         &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
             
            </tr>
             <tr>
                <td class="style3" >
                    &nbsp;</td>
                <td class="style24" colspan="4" >
                   
                         <b style="color:Blue; font-size:25px; text-decoration: underline;">Contact 
                         Details</b></td>
                </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style24">
                    <span>
                   
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Designation:"></asp:Label>
                         </td>
                <td class="style7" >
                    
                    
                        <span>
                    <asp:TextBox ID="txtDesignation" runat="server" Width="180px"></asp:TextBox>
                                                        
                    
                    </td>
                     <td class="style10">
                   
                         &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
             
            </tr>
           
            <tr>
                <td class="style25" >
                    </td>
                <td class="style26" >
                   
                         <asp:Label ID="Label16" runat="server" Text="Address:" style="font-weight: 700"></asp:Label>
                         </td>
                <td class="style27" colspan="3"  >
                        <asp:TextBox ID="txtAddress" runat="server" style="margin-top: 0px" 
                        Width="588px"></asp:TextBox>
                </td>
             
            </tr>
           
            <tr>
                <td class="style3" >
                    &nbsp;</td>
                <td class="style24" >
                   
                    <asp:Label ID="Label18" runat="server" Text="Mobile No:" 
                        style="font-weight: 700"></asp:Label>
                </td>
                <td class="style7"  >
                    <asp:TextBox ID="txtMobNo" runat="server" Width="180px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtMobNo" ErrorMessage="Enter correct  mobile number" 
                        ValidationExpression="^[789][0-9]{9}$" ValidationGroup="a">*</asp:RegularExpressionValidator>
                </td>
                     <td class="style10" >
                   
                         <asp:Label ID="Label19" runat="server" Text="Email Id:" 
                             style="font-weight: 700"></asp:Label>
                </td>
                    <td class="style6">
                        <asp:TextBox ID="txtEmailId" runat="server" Width="180px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtEmailId" ErrorMessage="Please enter the valid Email Id" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            ValidationGroup="a">*</asp:RegularExpressionValidator>
                </td>
            
            </tr>
           
            <tr>
                <td class="style3" >
                    &nbsp;</td>
                <td class="style24" >
                   
                    <asp:Label ID="Label27" runat="server" Text="Institute/Organisation Type:" 
                        style="font-weight: 700"></asp:Label>
                </td>
                <td class="style7" colspan="2"  >
                    
                        <asp:RadioButtonList ID="rdbGovtPvt" runat="server" Width="330px">
                            <asp:ListItem Selected="True">Govt./Govt.Added Technical Institution</asp:ListItem>
                            <asp:ListItem>Private Technical Institution</asp:ListItem>
                            <asp:ListItem>Teqip Institition</asp:ListItem>
                        </asp:RadioButtonList>
                </td>
                    <td class="style6">
                        &nbsp;</td>
                
            </tr>
            <tr>
                <td class="style3" >
                    &nbsp;</td>
                <td class="style24" >
                   
                    <asp:Label ID="Label20" runat="server" Text="State:" style="font-weight: 700"></asp:Label>
                </td>
                <td class="style7"  >
                    
        <asp:DropDownList ID="StateAddress" runat="server" Width="184px" style="margin-left: 0px">
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
        <asp:ListItem Value="Jammu &amp; Kashmir">Jammu and Kashmir</asp:ListItem>
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
                        ControlToValidate="StateAddress" Display="Dynamic" ErrorMessage="Please Select State" 
                        InitialValue="0" ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
                     <td class="style10" >
                   
                    <asp:Label ID="rbgtarget" runat="server" Text="Target Group:" 
                        style="font-weight: 700"></asp:Label>
                </td>
                    <td class="style6">
                    <asp:RadioButtonList ID="rdbTargetGp" runat="server" Width="166px">
                        <asp:ListItem Value="Polytechnic" Selected="True">Polytechnic</asp:ListItem>
                        <asp:ListItem Value="Engineering">Engineering</asp:ListItem>
                        <asp:ListItem>CDTPs Functionaries</asp:ListItem>
                        <asp:ListItem>Industries</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                
            </tr>
            <tr>
                <td class="style31" >
                    </td>
                <td class="style32" >
                   
                </td>
                <td class="style33"  >
                    
                </td>
                     <td class="style34" >
                         &nbsp;</td>
                    <td class="style35">
                        &nbsp;</td>
                
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
    
    </form>
</body>

</asp:Content>