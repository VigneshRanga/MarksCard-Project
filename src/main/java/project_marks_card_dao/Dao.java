package project_marks_card_dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.mysql.cj.x.protobuf.MysqlxCrud.Insert;

import project_marks_card_controller.Officers_insertion;
import project_marks_card_controller.officers_validation;
import project_marks_card_dto.Dto;
import project_marks_card_dto.Internal;
import project_marks_card_dto.OfficialsDto;

public class Dao {
	
	EntityManagerFactory emf=Persistence.createEntityManagerFactory("dev");
	EntityManager em=emf.createEntityManager();
	EntityTransaction et=em.getTransaction();
	
//	For validation
	public OfficialsDto validation(String email)
	{
		OfficialsDto f=em.find(OfficialsDto.class, email);
		return f;
		

	}
	
//	Inserting officers
	public void officersinsert(OfficialsDto d)
	{
		et.begin();
		em.persist(d);
		et.commit();
	}
	
	
//	For inserting the details
	public String insert(Dto d,String usn)
	{
		Dto f=em.find(Dto.class, usn);
		if(usn!=null) {
		et.begin();
		em.persist(d);
		et.commit();
		return "Student Details are inserted successfully";
		}
		else
		{
			return "Enter Student Detials";
		}
	}
//	Inserting internal marks
	public void internalinsert(Internal i)
	{
		et.begin();
		em.persist(i);
		et.commit();
	}
	
	
	
	
//	For update_fetching
	public List<Dto> up_fetch()
	{
	Query q=em.createQuery("select data from Marks_card_details data");	
	List<Dto> l=q.getResultList();
	return l;
	}
	
//	For external+internal update
	public Dto external(String usn)
	{
		Dto d=em.find(Dto.class, usn);
		return d;
	}

	public Internal internal(String usnn)
	{
		Internal l=em.find(Internal.class, usnn);
		return l;
	}
//	update validation
	public Dto updatevalidation(String usn)
	{
		Dto l=em.find(Dto.class, usn);
		return l;
	}
//	For updating
	public String update(String us,String name,String dob,String ff,String m,double k,
			double e,double h,double maths,double ss,double s,int kk,int ee,int hh,int mm,int sssc,int gs)
	{
		Dto d=em.find(Dto.class, us);
		if(d.getUSN()!=null)
		{
			   
			    d.setName(name);
			    d.setDOB(dob);
			    d.setF_Name(ff);
			    d.setM_Name(m);
			    d.setKannada(k);
			    d.setEnglih(e);
			    d.setHindi(h);
			    d.setMathematics(maths);
			    d.setSocial_science(ss);
			    d.setScience(s);
			 Internal i= em.find(Internal.class, us);
			    i.setKannadainternal(kk);
			    i.setEnglishinternal(ee);
			    i.setHindiinternal(hh);
			    i.setMathsinternal(mm);
			    i.setSscienceinternal(sssc);
			    i.setScienceinternal(gs);
			    
			    i.setKtotal(kk+(int)k);
			    i.setEtotal(ee+(int)e);
			    i.setHtotal(hh+(int)h);
			    i.setMtotal(mm+(int)maths);
			    i.setSstotal(sssc+(int)ss);
			    i.setStotal(gs+(int)s);
			et.begin();
			em.merge(d);
			et.commit();
			return "Values are updated";
		}
		else if(d.getUSN()!=us)
		{
			return "please enter correct USN";
		}
		else {
			return "please enter USN";
		}
	}
	
//	For deleting
	public String delete(String s)
	{
		Dto d=em.find(Dto.class, s);
		if(d!=null)
		{
			if(d.getUSN().equals(s)) {
				Internal ss=em.find(Internal.class, s);
			et.begin();
			em.remove(ss);
			em.remove(d);
			et.commit();
			return "Data is deleted";
			}
			else
			{
				return "Please Enter Correct USN number";
			}
		}
		
		else
		{
			return "Please Enter Correct USN Number";
		}
		
	}
	
//	For Viewing all the students detials
	public List<Dto> fetchall()
	{
	Query q=em.createQuery("select data from Marks_card_details data");	
	List<Dto> l=q.getResultList();
	return l;
	}	
	
	
	public List<Internal> fetchinternal()
	{
	Query q=em.createQuery("select data from Internal data");	
	List<Internal> l=q.getResultList();
	return l;
	}	
	
	
	
//	For Student Marks Card
	public Dto student_marks(String usn)
	{
		Dto d=em.find(Dto.class, usn);
		return d;
	}

	public Internal fecthinternal(String usnn)
	{
		Internal l=em.find(Internal.class, usnn);
		return l;
	}
	

}
