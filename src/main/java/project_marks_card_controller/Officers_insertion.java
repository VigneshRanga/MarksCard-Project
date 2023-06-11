package project_marks_card_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project_marks_card_dao.Dao;
import project_marks_card_dto.OfficialsDto;

@WebServlet("/officers")
public class Officers_insertion extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		
		String email=req.getParameter("email");
		String pwd=req.getParameter("pwd");
		
		int pwdd=Integer.parseInt(pwd);
		
		OfficialsDto d=new OfficialsDto();
		d.setEmail(email);
		d.setPwd(pwdd);
		
		Dao dd=new Dao();
		dd.officersinsert(d);
	}

}
