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

@WebServlet("/fetchall")
public class Fetchall extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doGet(req, resp);
		
		Dao d=new Dao();
		List<Dto> l=d.fetchall();
		List<Internal> ll=d.fetchinternal();
		
		if(ll!=null) {
		req.setAttribute("Dto", l);
		req.setAttribute("Internal", ll);
		
		RequestDispatcher rd=req.getRequestDispatcher("fetchallvalues.jsp");
		rd.forward(req, resp);
		}
		else
		{
			resp.getWriter().print("Null values");
		}
	}

}
