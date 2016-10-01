<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bilingual_Hindi_Print_All_Certificates.aspx.cs" Inherits="Hindi_Print_All_Certificates" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Print all Certificates</title>
   <style type="text/css">
       .all
       {
           font-style:italic;
           font-size:18pt;
           font-family:Kruti Dev 010;
       }
       .name
       {    
           text-transform:uppercase;
           font-size:21pt;
           font-family:Kruti Dev 010;
       }
       .institute
       {
           text-transform:uppercase;
           font-size:18pt;
           font-family:Kruti Dev 010;
       }
       .coursename
       {
           text-transform:uppercase;
           font-size:17pt;
           font-family:Kruti Dev 010;
       }
       .department 
       {
           font-size:20pt;
           font-family:Kruti Dev 010; 
       }
       .date
       {
           font-size:20pt;
           font-family:Kruti Dev 010;
       }
       .venue
       {
           font-size:20pt;
           font-family:Kruti Dev 010;
       }
       .foot
       {
           font-size:17pt;
           font-family:Kruti Dev 010;
       }

   </style>
</head>
<body align="center">
    <form id="form1" runat="server">
    <div>
    
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    
    </div>
    </form>
</body>
</html>
