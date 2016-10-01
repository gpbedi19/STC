<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Print_Certificates.aspx.cs" Inherits="Print_Certificates" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title></title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body>
    <form id="form1">
    <div>
    
    </div>
    <div align="center" >
     <span   style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: normal; color: #0000FF">
    
        PRINT CERTIFICATES</span><br />
        <br /><b>
        <asp:Label ID="Label2" runat="server" Text="Coordinating Department:"></asp:Label>
        <asp:Label ID="dept" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Oplan No.:"></asp:Label>
        <asp:Label ID="oplanno" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Course Name:"></asp:Label>
        <asp:Label ID="coursename" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="label11" runat="server" Text="Venue:"></asp:Label>
        <asp:Label ID="venue" runat="server" Text="Label"></asp:Label></b>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" DataKeyNames="ID">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" 
                    InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" 
                    SortExpression="NAME" />
                <asp:BoundField DataField="INSTITUTE" HeaderText="INSTITUTE" 
                    SortExpression="INSTITUTE" />
                <asp:BoundField DataField="CERTIFICATE_NO" HeaderText="CERTIFICATE_NO" 
                    SortExpression="CERTIFICATE_NO" />
                <asp:HyperLinkField DataNavigateUrlFields="id" 
                    DataNavigateUrlFormatString="Print_Individual_Certificate.aspx?id={0}" 
                    Text="PrintCerti" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
            
            
            
            
            
            SelectCommand="SELECT [ID], [NAME], [INSTITUTE], [CERTIFICATE_NO] FROM [PARTICIPANT] WHERE ([OPLAN_NO] = @OPLAN_NO AND ATTENDANCE = '1') ORDER BY NAME">
            <SelectParameters>
                <asp:QueryStringParameter Name="OPLAN_NO" QueryStringField="oplanno" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <br />
        <asp:Button ID="Button1" runat="server" Text="Print all Certificates" 
            onclick="Button1_Click" BackColor="#3333CC" BorderColor="White" 
            BorderStyle="Solid" ForeColor="White" />
    
    </div>
    </form>
</body>

</asp:Content>