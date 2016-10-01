<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GenerateReport.aspx.cs" Inherits="GenerateReport" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%; height:500px; background-color: #FFFFb2;">
    <div style="font-size:24px; margin-left:30px"><b>Reports</b></div>
<ul style="font-size:22px">
<li><a href="Editdetails.aspx"> Edit Participant Details</a></li><br />
<li><a href="ParticipantVerify.aspx"> Details of Participants for Certificate Verification (Hindi)</a></li><br />

<li><a href="DetailPartiCourse.aspx"> Detail of Participant Course wise</a></li><br />

<%--<li> <a href="abc.aspx">No. of course planned &amp; conducted department 
wise &amp; date wise-DONE</a></li><br />--%>
<li> <a href="TotalCoursesPlanned.aspx"> No. of course planned &amp; conducted Deptt. Wise &amp; date wise by NITTTR</a></li><br />
<li> <a href="ReportCountPartiStateCourse.aspx">No. of Participants department wise, course wise  &amp; state wise 
</a></li><br />
<li> <a href="CourseDetailDepttWiseDateWise1.aspx">Course Detail Department wise &amp; Date wise</a></li><br />
<li> <a href="ReportCoursePosponed.aspx">Postponement Detail</a></li><br />
<li><a href="new.aspx">State wise Participation</a></li><br />

</ul>
   </div>
</asp:Content>
