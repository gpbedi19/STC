<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Print_Individual_Certificate.aspx.cs" Inherits="Print_Individual_Certificate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       .all
       {
           
           font-size:20pt;
           font-family:Monotype Corsiva;
       }
       .name
       {    
           text-transform:uppercase;
           font-size:21pt;
           font-family:Times New Roman;
       }
       .institute
       {
           text-transform:uppercase;
           font-size:18pt;
           font-family:Times New Roman;
       }
       .coursename
       {
           text-transform:uppercase;
           font-size:17pt;
           font-family:Times New Roman;
       }
       .department 
       {
           font-size:20pt;
           font-family:Times New Roman; 
       }
       .date
       {
           font-size:20pt;
           font-family:Times New Roman;
       }
       .venue
       {
           font-size:20pt;
           font-family:Calibri;
       }
       .foot
       {
           font-size:18pt;
           font-family:Calibri;
       }

   </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    
    </div>
    </form>
</body>
</html>
