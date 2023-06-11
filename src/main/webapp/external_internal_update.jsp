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
<body >
<%
	Dto l=(Dto)request.getAttribute("Dto");
	%>
	<% Internal ll =(Internal)request.getAttribute("Internal"); %>

<nav style="display: flex;justify-content: space-around;background-color: #689DD8"><div "><img alt="" src="https://dpue-exam.karnataka.gov.in/COLLEGEPORTAL/images/375px-Seal_of_Karnataka.svg.png" 
style="width: 120px;"></div>
<div style="font-size: 40px;color: ;">KARNATAKA SCHOOL EXAMINATION AND <br><center> ASSESSMENT BOARD</center></div></nav>

<nav style="color: white;background-image: url('https://th.bing.com/th/id/OIP.oRALA2QjLptI0fQFNzM2aQHaE8?w=260&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7');background-repeat: no-repeat;background-size: cover;border-radius: 30px;">
	<fieldset style="border-radius: 30px;">
		
		<form action="update_the_values" method="post">
			<table>
			<tr>
<td><h1 style="color: yellow; font-size: 26px;">Update Student Personal Details</h1></td>
</tr>
				<tr>
					<td><label for="a1" style="font-size: 22px">University seat Number</label></td>
					<td><input type="text" value=<%=l.getUSN()%> name="usn" id="a1" placeholder="USN Number" style="border-radius: 30px;height: 26px;width: 170px;" ></td>
				</tr>


				<tr>
					<td><label for="a2" style="font-size: 22px">Student Name</label></td>
					<td><input type="text" value=<%=l.getName()%> name="name" id="a2" placeholder="Student Name" style="border-radius: 30px;height: 26px;width: 170px;"></td>
				</tr>

				<tr>
					<td><label for="a3" style="font-size: 22px">Date of Birth</label></td>
					<td><input type="date" value=<%=l.getDOB()%> name="dob" id="a3" placeholder="Date Of Birth" style="border-radius: 30px;height: 26px;width: 170px;"></td>
				</tr>

				<tr>
					<td><label for="a4" style="font-size: 22px">Father name</label></td>
					<td><input type="text" value=<%=l.getF_Name()%> name="father" id="a4" placeholder="Father Name" style="border-radius: 30px;height: 26px;width: 170px;"></td>
				</tr>
				<tr>
				<tr>
					<td><label for="a5" style="font-size: 22px">Mother name</label></td> 
					<td><input type="text" value=<%=l.getM_Name()%> name="mother" id="a5" placeholder="Mother Name" style="border-radius: 30px;height: 26px;width: 170px;"><br></td>
				</tr>
<tr>
<td><h1 style="color: yellow;font-size: 26px;">Update Student Marks</h1></td>
</tr>
				<tr>
					<td><label for="a6" style="font-size: 22px">Kannada </label></td>
					<td><input type="number" value=<%=l.getKannada()%> name="kannada" id="a6" placeholder=" External  Marks" style="border-radius: 30px;height: 26px;width: 170px;"></td>
                    
                    <td><label for="a14" style="font-size: 22px">Kannada Internal Marks </label></td>
					<td><input type="number" value=<%=ll.getKannadainternal()%> name="k" id="a14" placeholder="  Kannada Internal Marks" style="border-radius: 30px;height: 26px;width: 170px;margin-left: 100px;"></td>
                    
				</tr>

				<tr>
					<td><label for="a7" style="font-size: 22px">English </label></td>
					<td><input type="number" value=<%=l.getEnglih()%> name="english" id="a7" placeholder=" External  Marks" style="border-radius: 30px;height: 26px;width: 170px;"></td>
					
					 <td><label for="a15" style="font-size: 22px">English Internal Marks </label></td>
					<td><input type="number" value=<%=ll.getEnglishinternal()%> name="e" id="a15" placeholder="  English Internal Marks" style="border-radius: 30px;height: 26px;width: 170px;margin-left: 100px;"></td>
                    
				</tr>
				<tr>
				<tr>
					<td><label for="a8" style="font-size: 22px">Hindi </label></td>
					<td><input type="number" value=<%=l.getHindi()%> name="hindi" id="a8" placeholder=" External  Marks" style="border-radius: 30px;height: 26px;width: 170px;"></td>
					
					 <td><label for="a16" style="font-size: 22px">Hindi Internal Marks </label></td>
					<td><input type="number" value=<%=ll.getHindiinternal()%> name="h" id="a16" placeholder=" Hindi Internal Marks" style="border-radius: 30px;height: 26px;width: 170px;margin-left: 100px;"></td>
                    
				</tr>

				<tr>
					<td><label for="a9" style="font-size: 22px">Mathematics </label></td>
					<td><input type="number" value=<%=l.getMathematics()%> name="maths" id="a9" placeholder=" External  Marks" style="border-radius: 30px;height: 26px;width: 170px;"></td>
					
					 <td><label for="a17" style="font-size: 22px">  Maths Internal Marks </label></td>
					<td><input type="number" value=<%=ll.getMathsinternal()%> name="m" id="a17" placeholder=" Maths Internal Marks" style="border-radius: 30px;height: 26px;width: 170px;margin-left: 100px;"></td>
                    
				</tr>

				<tr>
					<td><label for="a10" style="font-size: 22px">Social Science</label></td>
					<td><input type="number" value=<%=l.getSocial_science()%> name="ss" id="a10" placeholder=" External  Marks" style="border-radius: 30px;height: 26px;width: 170px;"></td>
					
					 <td><label for="a18" style="font-size: 22px"> Social science Internal Marks </label></td>
					<td><input type="number" value=<%=ll.getSscienceinternal()%> name="sscience" id="a18" placeholder=" Social scinec Internal Marks" style="border-radius: 30px;height: 26px;width: 170px;margin-left: 100px;"></td>
                    
				</tr>

				<tr>
					<td><label for="a11" style="font-size: 22px">Science</label></td>
					<td><input type="number" value=<%=l.getScience()%> name="science" id="a11" placeholder=" External  Marks" style="border-radius: 30px;height: 26px;width: 170px;"></td>
		
					 <td><label for="a19" style="font-size: 22px">science Internal Marks </label></td>
					<td><input type="number" value=<%=ll.getScienceinternal()%> name="s" id="a19" placeholder=" science Internal Marks" style="border-radius: 30px;height: 26px;width: 170px;margin-left: 100px;"></td>
                    
				</tr>

				
					<tr>
				<td><button style="margin-left: 160px;border-radius: 30px;height: 30px;width: 80px">Update</button>
				<button type="reset" style="border-radius: 30px;height: 30px;width: 80px">Reset</button>
				
				</td>
				</tr>
			</table>
			<div style="width: 300px;margin-left: 60px;"><center><a href="kseeb.html" style="border-radius: 30px;height: 40px;background-color: white; font-size: 24px;">Back</a><a href="wellcome.html" style="border-radius: 30px;height: 30px;width: 80px;background-color: white; margin-left: 270px;font-size: 24px;">Home</a></center></div>
		</form>

	</fieldset>
</nav>
</body>
</html>