package project_marks_card_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project_marks_card_dao.Dao;

@WebServlet("/deleting")
public class Delete extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		
String usn=req.getParameter("usn");
		
		Dao d=new Dao();
		String msg=d.delete(usn);
		resp.getWriter().print(msg);
	}
}
