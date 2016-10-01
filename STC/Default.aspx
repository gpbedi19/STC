<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<asp:Content ID="head" runat="server" ContentPlaceHolderID="head">
   <style>  
        .img-circle {
    border-radius: 50%;
}
</style>
<style>

#wrapper 
{
    height:80px;
    width: 500px;
    border: 1px solid black;
    background: black;
    overflow: auto; /* so the size of the wrapper is alway the size of the longest content */
}
#first 
{
     height:80px;
    float: left;
    width: 300px;
     background: black;
}
#second 
{
     height:80px;
     background: black;
    margin: 0 0 0 302px; /* considering the border you need to use a margin so the content does not float under the first div*/
}
</style>


</asp:Content>
<asp:Content ID="ContentPlaceholder1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<div style="text-align:justify">
    <p style="font-size:larger; margin-left:40px; margin-top:10px;   class="style6" >
      <b style="color:Blue; font-size:22px ">National Institute of Technical Teachers' Training and Research</b><br /><br />
   National Institute of Technical Teachers' Training and Research (Formerly TTTI), Chandigarh is one of the four institutes established by the Government of India in 1967 for the development of technical education in the country with focus on the states of the Northern Region. The institute had the collaboration of the Royal Netherlands Government for a period of seven years in the initial stage.

    </p>
                                <p style="font-size:larger; margin-left:40px; margin-top:10px;" class="style6">
                                    The institute is an autonomous organization registered under the Societies Registration Act 1860.It is managed by a Board of Governors. Director is the executive head of the institute.

    </p>
                                <p style="font-size:larger; margin-left:40px; margin-top:10px;" class="style6">
                                    The institute is situated in a well developed campus in Sector-26,Chandigarh covering an area of over 6.667 hectares. The institute has also residential campuses in Sector-26,29 and 42.The institute is about 5km from Chandigarh Railway Station as well as Inter State Bus Terminus.

    </p>
                                <p style="font-size:larger; margin-left:40px; margin-top:10px;" class="style6">
                                    NITTTR has collaboration / interests / interaction with Institutes of Higher learning and Industry at National Level and International Level

NATIONAL LEVEL

 

INTERNATIONAL LEVEL

  

    </p>
                                <p style="font-size:larger; margin-left:40px; margin-top:10px;" class="style6">
                                    The institute has faculty strength of 65 with 16 Professors, 26 Assistant Professors and 23 Lecturers. The strength of technical, administrative and other supporting staff is 220.

    </p>
                                <p style="font-size:larger; margin-left:40px; margin-top:10px;" class="style6">
                                    The services that can be offered by the institute are:

    </p>
                                <p style="font-size:larger; margin-left:40px; margin-top:10px;" class="style6">
                                    Over the years the institute has developed the capability to offer wide ranging services to both the technical education system as well as industry. This is made possible by highly qualified, experienced and dedicated faculty, technical supporting and other staff backed by well-developed infrastructure and other facilities.

    </p>
                                <p style="font-size:larger; margin-left:40px; margin-top:10px;">
                                    THE STRENGTHS AND SERVICES

    </p>
                                <p style="font-size:larger; margin-left:40px; margin-top:10px;">
                                    * Customized tailor made programmes for working professional from industry at  various level for upgrading their knowledge and skills in:

                            </p>
        <p style="font-size:larger; margin-left:40px; margin-top:10px;">
            1.    Industrial Processes and Practice

                  </p>
        <p style="font-size:larger; margin-left:40px; margin-top:10px;">
            2.     Engineering and Technology

                  </p>
        <p style="font-size:larger; margin-left:40px; margin-top:10px;">
            3.     Human Resources Development

                  </p>
        <p style="font-size:larger; margin-left:40px; margin-top:10px;">
            4.     Management

                  </p>
        <p style="font-size:larger; margin-left:40px; margin-top:10px;">
            5.     Supervisory Development

                  </p>
        <p style="font-size:larger; margin-left:40px; margin-top:10px;">
            6.     Computer Awareness and Applications

                  </p>
        <p style="font-size:larger; margin-left:40px; margin-top:10px;">
            7.     Office Automation and Management

                  </p>
        <p style="font-size:larger; margin-left:40px; margin-top:10px;">
            8.     Project Formulation, Implementation and Evaluation

    </p>
        <p style="font-size:larger; margin-left:40px; margin-top:10px;">
            * Sponsored Research and Development projects for improving industrial Coordination.

    </p>
    </div>
    <div class=""  style="color:White; background-color:Black; font-size:large">
   
  
    <div id="first">
    <img class="img-circle" src="images/SHEETAL.jpg">
    &nbsp;&nbsp;&nbsp;
    <img class="img-circle" src="images/gurpreet.jpg">
    </div>
    <div id="second">  
    <footer>
    <p style="text-align:right"> This project is made by Gurpreet Singh Bedi & Sheetal Singh under the guidance of Prof. Amrendra Singh
       NITTTR, Sector 26, Chandigarh.</p>
       </footer>
       </div>
    </div>
</asp:Content>
