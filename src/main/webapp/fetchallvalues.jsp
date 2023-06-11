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
</head>
<body style="background-image: url('https://th.bing.com/th/id/OIP.lSIrEqEn4_9Qt2dHFn9vdgHaFj?w=229&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7');background-repeat: no-repeat;background-size: cover;">
<%
	List<Dto> n = (List<Dto>) request.getAttribute("Dto");
	%>
	<%
	List<Internal> nn = (List<Internal>) request.getAttribute("Internal");
	%>
	
	
	<nav style="font-size: 30px;color: brown;">Students Details With External Marks</nav>
	<table border="" style="height: 200px; width: 100%;">
		<tr>
			<th>USN</th>
			<th style="width: 79px;" >Name</th>
			<th style="width: 79px;" >DOB</th>
			<th style="width: 79px;" >Father</th>
			<th style="width: 79px;" >Mother</th>
			<th>Kannada ExternalMark</th>
			<th>English ExternalMark</th>
			<th>Hindi ExternalMark</th>
			<th>Mathematics ExternalMark</th>
			<th>Social science ExternalMark</th>
			<th>Science ExternalMark</th>
		
		</tr>

		<%
		for (Dto d : n) {
		%>
		<tr>
			<td><center><%=d.getUSN()%></center></td>
			<td><center><%=d.getName()%></center></td>
			<td><center><%=d.getDOB()%></center></td>
			<td><center><%=d.getF_Name()%></center></td>
			<td><center><%=d.getM_Name()%></center></td>
			
			
		<td><center><%=d.getKannada()%></center></td>
		<td><center><%=d.getEnglih()%></center></td>
		<td><center><%=d.getHindi()%></center></td>
		<td><center><%=d.getMathematics()%></center></td>
		<td><center><%=d.getSocial_science()%></center></td>
		<td><center><%=d.getScience()%></center></td>
		</tr>
		
		<%
		}
		%>
	</table>
	
	<nav style="margin-top: 30px;font-size: 30px;color: brown;">Students Internal And Total Marks</nav>
	<table border="" style="height: 200px; width: 100%;">
	<tr>
	<th>USN</th>
	<th>Kannada InternalMark</th>
	<th>Kannada TotalMark</th>
			<th>English InternalMark</th>
			<th>English TotalMark</th>
			<th>Hindi InternalMark</th>
			<th>Hindi TotalMark</th>
			<th>Mathematics InternalMark</th>
			<th>Mathematics TotalMark</th>
			<th>Social science InternalMark</th>
			<th>Social TotalMark</th>
			<th>Science InternalMark</th>
			<th>Science TotalMark</th>
			</tr>
			<%
		for (Internal dd : nn) {
		%><tr>
		<td><center><%=dd.getUsnn()%></center></td>
		<td><center><%=dd.getKannadainternal()%></center></td>
			<td><center><%=dd.getKtotal()%></center></td>
		<td><center><%=dd.getEnglishinternal()%></center></td>
		<td><center><%=dd.getEtotal()%></center></td>
		<td><center><%=dd.getHindiinternal()%></center></td>
		<td><center><%=dd.getHtotal()%></center></td>
		<td><center><%=dd.getMathsinternal()%></center></td>
		<td><center><%=dd.getMtotal()%></center></td>
		<td><center><%=dd.getSscienceinternal()%></center></td>
		<td><center><%=dd.getSstotal()%></center></td>
		<td><center><%=dd.getScienceinternal()%></center></td>
		<td><center><%=dd.getStotal()%></center></td>
		
		</tr>
		<%
		}
		%>		
	</table>
	
	
	
</body>
</html>