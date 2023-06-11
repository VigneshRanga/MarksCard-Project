package project_marks_card_controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project_marks_card_dao.Dao;
import project_marks_card_dto.Dto;
import project_marks_card_dto.Internal;

@WebServlet("/external_internalupdate")
public class External_internal_update extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		
		String usn=req.getParameter("usn");
		
		Dao d=new Dao();
		Dto l=d.updatevalidation(usn);
		
		if(l!=null)
		{
			if(l.getUSN().equals(usn))
			{
				Dto ex=d.external(usn);
				Internal in=d.internal(usn);
				
				req.setAttribute("Dto", ex);
				req.setAttribute("Internal", in);
				
				RequestDispatcher rd=req.getRequestDispatcher("external_internal_update.jsp");
				rd.forward(req, resp);
			}
			else
			{
				resp.getWriter().print("Please Enter Correct USN Number");
			}
		}
		else
		{
			resp.getWriter().print("Please Enter Correct USN Number");
		}
		
	}
}
