package project_marks_card_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project_marks_card_dao.Dao;
import project_marks_card_dto.OfficialsDto;

@WebServlet("/validation")
public class officers_validation extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		
		String email=req.getParameter("email");
		String pwd=req.getParameter("pwd");
		
		int pwdd=Integer.parseInt(pwd);
		
		Dao d=new Dao();
		OfficialsDto f=d.validation(email);
		
		if(f!=null)
		{
			if(f.getPwd()==pwdd&&f.getPwd()>0)
			{
               resp.sendRedirect("kseeb.html");
			}
			else
			{
				resp.getWriter().print("Please enter correct password");
			}
		}
		else
		{
			resp.getWriter().print("No record found please enter email");
		}
		
	}
}
