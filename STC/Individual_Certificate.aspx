<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Individual_Certificate.aspx.cs" Inherits="Individual_Cetificate" EnableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    
    </script>   
    <style type="text/css">
        .style1
        {
            height: 25px;
            width: 870px;
        }
        .style2
        {
            height: 26px;
        }
        .style5
        {
            height: 26px;
            line-height: 107%;
            font-family: "Monotype Corsiva";
            color: black;
            font-size: 17pt;
        }
        .style6
        {
            font-size: 20pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="style1" align="center">
            <tr>
                <td align="right" class="style2">
                    <asp:TextBox ID="certino" runat="server" style="text-align:center" 
                        ReadOnly="True" BorderStyle="None"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <span style="font-size:20pt; mso-bidi-font-size:11.0pt;
line-height:107%;font-family:&quot;Monotype Corsiva&quot;;mso-fareast-font-family:Calibri;
mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA">This is to certify that</span></td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:TextBox ID="name" runat="server" style="margin-left: 0px; text-align:center" 
                        ReadOnly="True" BorderStyle="None" Font-Bold="True" 
                        Font-Names="Times New Roman" Width="711px" Font-Size="21pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:TextBox ID="institute" runat="server" style="margin-left: 0px; text-align:center" 
                        ReadOnly="True" Width="727px" BorderStyle="None" 
                        Font-Names="Times New Roman" Font-Size="19pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <span style="font-size:17pt; line-height:107%;
font-family:&quot;Monotype Corsiva&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
color:black;mso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA">Participated in the AICTE Recognized by Short Term Course</span></td>
            </tr>
            <tr>
                <td align="center" class="style5" 
                    style="mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-IN; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                    on</td>
            </tr>
            <tr>
                <td align="center" class="style1">
                    <asp:TextBox ID="coursename" runat="server" style="text-align:center; margin-left: 0px;" 
                        ReadOnly="True" Width="859px" BorderStyle="None" Font-Bold="False" 
                        Font-Names="Arial Black" Font-Size="20pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style5" 
                    style="mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-IN; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                    conducted by</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:TextBox ID="dept" runat="server" style="text-align:center" ReadOnly="True" 
                        Width="637px" BorderStyle="None" Font-Size="18pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style5" 
                    style="mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-IN; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                    from 
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:TextBox ID="datefrom" runat="server"  style="text-align:center" 
                        ReadOnly="True" BorderStyle="None" Font-Size="17pt" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style5" 
                    style="mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-IN; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                    to</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:TextBox ID="dateto" runat="server"  style="text-align:center" 
                        ReadOnly="True" BorderStyle="None" Font-Size="17pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style5" 
                    style="mso-bidi-font-size: 11.0pt; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-IN; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                    at</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <b style="mso-bidi-font-weight:normal">
                    <span style="line-height:107%;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;
mso-ascii-theme-font:minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-IN;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA" class="style6">NITTTR, Chandigarh.</span></b></td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <b style="mso-bidi-font-weight:normal"><i style="mso-bidi-font-style:normal">
                    <span style="font-size:18.0pt;mso-bidi-font-size:
11.0pt;line-height:107%;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:
minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Coordinator <span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Director<span style="mso-tab-count:
1">&nbsp;&nbsp; </span></span></i></b></td>
            </tr>
        </table>
    </div>
 </form>
</body>
</html>
