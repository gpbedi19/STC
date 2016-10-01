<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Hindi_Print_Certificates.aspx.cs" Inherits="Hindi_Print_Certificates" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body >
    <form id="form1" >
    <div align="center" style="margin-left: 40px">
    <div>
    <b>
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
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" 
                    SortExpression="NAME" />
                <asp:BoundField DataField="HINDI_NAME" HeaderText="HINDI_NAME" 
                    SortExpression="HINDI_NAME" />
                <asp:BoundField DataField="INSTITUTE" HeaderText="INSTITUTE" 
                    SortExpression="INSTITUTE" />
                <asp:BoundField DataField="HINDI_INSTITUTE" HeaderText="HINDI_INSTITUTE" 
                    SortExpression="HINDI_INSTITUTE" />
                <asp:BoundField DataField="CERTIFICATE_NO" HeaderText="CERTIFICATE_NO" 
                    SortExpression="CERTIFICATE_NO" />
                <asp:HyperLinkField DataNavigateUrlFields="id" 
                    DataNavigateUrlFormatString="Bilingual_English_Individual_Certificate.aspx?id={0}" 
                    Text="Print_English_Certi" />
                <asp:HyperLinkField DataNavigateUrlFields="id" 
                    DataNavigateUrlFormatString="Bilingual_Hindi_Individual_Certificate.aspx?id={0}" 
                    Text="Print_Hindi_Certi" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:db_nitttrConnectionString %>" 
            
            
            
            
            SelectCommand="SELECT [ID], [NAME], [HINDI_NAME], [INSTITUTE], [HINDI_INSTITUTE], [CERTIFICATE_NO] FROM [PARTICIPANT] WHERE ([OPLAN_NO] = @OPLAN_NO AND ATTENDANCE = '1') ORDER BY NAME">
            <SelectParameters>
                <asp:QueryStringParameter Name="OPLAN_NO" QueryStringField="oplanno" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Print All English Certificates" BackColor="#3333CC" 
            BorderColor="White" BorderStyle="Solid" ForeColor="White" />
    
    &nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Print All Hindi Certificates" BackColor="#3333CC" 
            BorderColor="White" BorderStyle="Solid" ForeColor="White" />
    
    </div>
    </form>
</body>
</asp:Content>