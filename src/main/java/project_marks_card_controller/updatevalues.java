package project_marks_card_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project_marks_card_dao.Dao;
import project_marks_card_dto.Dto;

@WebServlet("/update_the_values")
public class updatevalues extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		
		String usn=req.getParameter("usn");
		String name=req.getParameter("name");
		String dob=req.getParameter("dob");
		String father=req.getParameter("father");
		String mother =req.getParameter("mother");
		String kannada= req.getParameter("kannada");
		String english=req.getParameter("english");
		String hindi=req.getParameter("hindi");
		String maths=req.getParameter("maths");
		String ss=req.getParameter("ss");
		String science=req.getParameter("science");
		
		
		
		
		
	    double kannadaa =Double.parseDouble(kannada);
	    double englishh=Double.parseDouble(english);
	    double hindii=Double.parseDouble(hindi);
	    double mathss=Double.parseDouble(maths);
	    double sss=Double.parseDouble(ss);
	    double sciencee=Double.parseDouble(science);
	    
	    
	    
	    String k=req.getParameter("k");
	    String e=req.getParameter("e");
	    String h=req.getParameter("h");
	    String m=req.getParameter("m");
	    String sscience=req.getParameter("sscience");
	    String s=req.getParameter("s");
	    
	    int kk=Integer.parseInt(k);
	    int ee=Integer.parseInt(e);
	    int hh=Integer.parseInt(h);
	    int mm=Integer.parseInt(m);
	    int sssc=Integer.parseInt(sscience);
	    int gs=Integer.parseInt(s);
		   
		    
		    Dao dd=new Dao();
		    String msg=dd.update(usn,name,dob,father,mother,kannadaa,englishh,hindii,mathss,sss,sciencee,kk,ee,hh,mm,sssc,gs);
		    resp.getWriter().print(msg);
		    
	}

}
