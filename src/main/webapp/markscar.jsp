<%@page import="project_marks_card_dto.Dto"%>
<%@page import="project_marks_card_dto.Internal"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="marks_card.css" type="text/css">
</head>
<body>
<nav style="font-size: 30px;height: 100px;display: flex;align-items: center;color: white;justify-content: center; width: 1000px;margin-left: 160px;" id="a1"><center>Karnataka School Examination and Assessment Board<br>
Government of Karnataka</center></nav>
<%!String aa="A+",a="A",b="B",c="C",fail="Fail",pass="Pass"; int i=25;%>



<%
	Dto l=(Dto)request.getAttribute("Dto");
	%>
	<% Internal ll =(Internal)request.getAttribute("Internal"); %>
	
	<% int Total_marks=ll.getKtotal()+ll.getEtotal()+ll.getHtotal()+ll.getMtotal()+ll.getSstotal()+ll.getStotal();%>
	<%int st=(int)l.getScience()+ll.getScienceinternal(); %>
<div id="b1" style="background-color: #14611A ;border-bottom-color:white;height: 30px;border-bottom: 1px solid white;">
<div style="color: white;margin-top: 10px;">Name</div>
<div id="bb1" style="color: white;margin-top: 10px;"><%=l.getName().toUpperCase() %></div>
</div>

<div id="b2" style="background-color: #14611A ;border-color: black;height: 25px;">
<div style="color: white;">Reg No</div>
<div id="bb2" style="color:white; "><%=l.getUSN() %></div>
</div>
	<nav style="display: flex; margin-left: 200px;margin-right: 60px; ">
	<nav>
	<div style="margin-left: 20px;margin-top: 25px;margin-left: 47px;background-color:blue;height: 40px;color: white;"><br>Part A</div>
	<table style="border:1px solid black; margin-left: 47px;height: 270px;width: 500px;">
	
	
	<tr style="border:1px solid black">
	<th style="border:1px solid black">Subject</th>
	<th style="border:1px solid black">Internal  Marks</th>
	<th style="border:1px solid black">External Marks</th>
	<th style="border:1px solid black">Total Marks</th>
	
	<th style="border:1px solid black">Grade</th>
	</tr>
	
	
	<tr>
	<td style="border:1px solid black">KANNADA</td>
	<td style="border:1px solid black"><center><%=ll.getKannadainternal() %></center></td>
	<td style="border:1px solid black"><center><%=(int)l.getKannada() %></center></td>
	<td style="border:1px solid black"><center><%=ll.getKtotal() %></center></td>
	<td style="border:1px solid black"><center><%if(ll.getKtotal()>=110)
	{%>
	<%=aa %>
	<%} 
	else if(ll.getKtotal()<110 && ll.getKtotal()>=80)
		{%>
		<%=a %>
		<%} 
	else if(ll.getKtotal()<80 && ll.getKtotal()>=60)
		{%>
		<%=b %>
		<%} 
		else if(ll.getKtotal()<60 && ll.getKtotal()>=35)
		{%>
		<%=c %>
		<%}
		else if(ll.getKtotal()<34)
		{%>
			<%=fail%>
		<%}%>
	</center>
	</td>

	</tr>
	
	
	<tr style="border:1px solid black">
	<td style="border:1px solid black">ENGLISH</td>
		<td style="border:1px solid black"> <center><%=ll.getEnglishinternal() %></center></td>
	<td style="border:1px solid black"><center><%=(int)l.getEnglih() %></center></td>
	<td style="border:1px solid black"><center><%=ll.getEtotal() %></center></td>
		<td style="border:1px solid black"><center><%if(ll.getEtotal()>=90)
	{%>
	<%=aa %>
	<%} 
	else if(ll.getEtotal()<90 && ll.getEtotal()>=80)
		{%>
		<%=a %>
		<%} 
	else if(ll.getEtotal()<80 && ll.getEtotal()>=60)
		{%>
		<%=b %>
		<%} 
		else if(ll.getEtotal()<60 && ll.getEtotal()>=35)
		{%>
		<%=c %>
		<%}else if(ll.getEtotal()<34)
		{%>
		<%=fail%>
	<%} %></center>
	</td>

	
	</tr>
	
	
	<tr>
	<td style="border:1px solid black">HINDI</td>
		<td style="border:1px solid black"><center><%=ll.getHindiinternal() %></center></td>
	<td style="border:1px solid black"><center><%=(int)l.getHindi() %></center></td>
	<td style="border:1px solid black"><center><%=ll.getHtotal() %></center></td>
		<td style="border:1px solid black"><center><%if(ll.getHtotal()>=90)
	{%>
	<%=aa %>
	<%} 
	else if(ll.getHtotal()<90 && ll.getHtotal()>=80)
		{%>
		<%=a %>
		<%} 
	else if(ll.getHtotal()<80 && ll.getHtotal()>=60)
		{%>
		<%=b %>
		<%} 
		else if(ll.getHtotal()<60 && ll.getHtotal()>=35)
		{%>
		<%=c %>
		<%}else if(ll.getHtotal()<34)
		{%>
		<%=fail%>
	<%} %></center></td>

	</tr>
	
	
	<tr>
	<td style="border:1px solid black">MATHS</td>
		<td style="border:1px solid black"><center><%=ll.getMathsinternal() %></center></td>
	<td style="border:1px solid black"><center><%=(int)l.getMathematics() %></center></td>
	<td style="border:1px solid black"><center><%=ll.getMtotal() %></center></td>
		<td style="border:1px solid black"><center><%if(ll.getMtotal()>=90)
	{%>
	<%=aa %>
	<%} 
	else if(ll.getMtotal()<90 && ll.getMtotal()>=80)
		{%>
		<%=a %>
		<%} 
	else if(ll.getMtotal()<80 && ll.getMtotal()>=60)
		{%>
		<%=b %>
		<%} 
		else if(ll.getMtotal()<60 && ll.getMtotal()>=35)
		{%>
		<%=c %>
		<%}else if(ll.getMtotal()<=34)
		{%>
		<%=fail%>
	<%} %></center></td>
	
	
	</tr>
	
	
	<tr>
	<td style="border:1px solid black">SCIENCE</td>
		<td style="border:1px solid black"><center><%=ll.getScienceinternal() %></center></td>
	<td style="border:1px solid black"><center><%=(int)l.getScience() %></center></td>
	<td style="border:1px solid black"><center><%=ll.getStotal()%></center></td>
		<td style="border:1px solid black"><center><%if(ll.getStotal()>=90)
	{%>
	<%=aa %>
	<%} 
	else if(ll.getStotal()<90 && ll.getStotal()>=80)
		{%>
		<%=a %>
		<%} 
	else if(ll.getStotal()<=80 && ll.getStotal()>=60)
		{%>
		<%=b %>
		<%} 
		else if(ll.getStotal()<60 &&ll.getStotal()>=35)
		{%>
		<%=c %>
		<%}else if(ll.getStotal()<34)
		{%>
		<%=fail%>
	<%} %></center></td>
	

	</tr>
	
	
	<tr>
	<td style="border:1px solid black">S<br>SCIENCE</td>
		<td style="border:1px solid black"><center><%=ll.getSscienceinternal() %></center></td>
	<td style="border:1px solid black"><center><%=(int)l.getSocial_science() %></center></td>
	<td style="border:1px solid black"><center><%=ll.getSstotal()%></center></td>
		<td style="border:1px solid black"><center><%if(ll.getSstotal()>90)
	{%>
	<%=aa %>
	<%} 
	else if(ll.getSstotal()>90 && ll.getSstotal()>80)
		{%>
		<%=a %>
		<%} 
	else if(ll.getSstotal()<=80 && ll.getSstotal()>60)
		{%>
		<%=b %>
		<%} 
		else if(ll.getSstotal()<60 && ll.getSstotal()>=35)
		{%>
		<%=c %>
		<%}else if(ll.getSstotal()<34)
		{%>
		<%=fail%>
	<%} %></center></td>

	
	</tr>
	
	
	<tr>
	<td>Total Marks</td>
		<td></td>
	<td></td>
	<td></td>
	<td><%=(int)Total_marks%></td>
	</tr>
	
	
	
	
	
	</table>
	</nav>
	<nav style="margin-left: 130px;margin-top: 25px;">
	<div style="background-color: blue;height: 40px;color: white;"><br>Part B</div>
	<table  border="1px solid black" style="height: 250px;width: 200px;">
	
	
	<tr>
	<th>SUBJECT</th>
	<th>GRADE</th>
	</tr>
	
		<tr>
	<td>Phsical and <br> Health</td>
	<td><center><%=a %></center></td>
	</tr>
		<tr>
	<td>Attitude and<br>Values</td>
	<td><center><%=a %></center></td>
	</tr>
		<tr>
	<td>Work<br>Experience</td>
	<td><center><%=a %></center></td>
	</tr>
		<tr>
	<td>Art Education</td>
	<td><center><%=a %></center></td>
	</tr>
	
	</table>
	</nav>
	</nav >
	
	
	
	<nav style="display: flex;margin-right: 200px;margin-top: 30px;margin-right: 200px; background-color: #14611A;width: 850px;margin-left: 244px;color: white;height: 30px;border-bottom: 1px solid white;">
	<div style="margin-top: 10px;border-right: white;font-size: 20px;">Result</div>
	<div style="margin-left: 350px; margin-top: 10px;font-size: 20px;">
	<%if(Total_marks>550&&l.getKannada()>44&&l.getEnglih()>34&&l.getHindi()>34&&l.getMathematics()>34
	&&l.getSocial_science()>34&&l.getScience()>34&&ll.getKtotal()>44&&ll.getEtotal()>34&&ll.getHtotal()>34&&ll.getMtotal()>34
	&&ll.getSstotal()>34&&ll.getStotal()>34){
		%><%=pass %>
	<% }
	 else
	{%>
	<%=fail%>
	<%} %>
	</div>
	</nav>
	
	<nav style="display: flex;margin-right: 200px; background-color: #14611A;width: 850px;margin-left: 244px;color: white;height: 30px;">
	<div style=" font-size: 20px;">CGA</div>
	<div style="margin-left: 357px;font-size: 20px;">
	<%if(Total_marks>550&&ll.getKtotal()>44&&ll.getEtotal()>34&&ll.getHtotal()>34&&ll.getMtotal()>34
			&&ll.getSstotal()>34&&ll.getStotal()>34){
		%><%=aa %>
	<% }
	else if(Total_marks<550 && Total_marks>=500 )
	{%>
	<%=a %>
	<%} 
	else if(Total_marks<500 && l.getHindi()>=450)
	{%>
	<%=b %>
	<%} 
	else if(Total_marks<450&& l.getHindi()>=300)
	{%>
	<%=c %>
	<%}else if(l.getHindi()<225)
	{%>
	<%=fail%>
<%}%></div>
	</nav>
	<center><div style="font-size: 20px;border: 3px solid brown;background-color: yellow;
	border-radius: 30px;width: 80px;margin-top: 30px;"><a href="wellcome.html" >HOME</a></div> </center>
	
	<nav style="background-color: black;color: gray;font-size: 13px;margin-top: 30px;padding: 20px;">
	<div >
	Disclaimer: Neither NIC nor KARNATAKA SCHOOL EXAMINATION AND ASSESSMENT BOARD, KARNATAKA is responsible for any inadvertent error that may have crept in the results being published on NET. The results published on net are for immediate information to the examinees. This cannot be treated as original mark sheet. Original mark sheet will be issued by the Board separately
	</div>
	<div style="display: flex;justify-content: space-between;margin-top: 12px;">
	<div>Best viewed in IE 9.0 and above and Chrome and Mozilla Firefox</div>
	<div>Content owned, maintained & updated by KARNATAKA SCHOOL EXAMINATION AND ASSESSMENT BOARD, KARNATAKA</div>
	Designed, Developed & Hosted by Vignesh, Karnataka
	</div>
	
	</nav>
</body>
</html>