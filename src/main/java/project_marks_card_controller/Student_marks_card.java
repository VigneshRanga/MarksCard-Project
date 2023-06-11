package project_marks_card_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project_marks_card_dao.Dao;
import project_marks_card_dto.Dto;
import project_marks_card_dto.Internal;

@WebServlet("/student")
public class Student_marks_card extends HttpServlet {

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
//	super.doPost(req, resp);
	
	String usn=req.getParameter("usn");
	String dob=req.getParameter("dob");
	
	
	
	Dao d=new Dao();
	Dto l=d.student_marks(usn);
	
	if(l!=null)
	{
		if(l.getDOB().equals(dob))
		{
			req.setAttribute("Dto",l);
			Internal ll=d.fecthinternal(usn);
			req.setAttribute("Internal", ll);
			
			RequestDispatcher rd=req.getRequestDispatcher("markscar.jsp");
			rd.forward(req, resp);
		}
		else
		{
			resp.getWriter().print("Please Check the Enterd Date of Birth");
		}
	}
	else
	{
		resp.getWriter().print("No record found, Please enter valid Registar number");
	}
	

	
	
	}
	



}
