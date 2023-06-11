package project_marks_card_dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="Marks_card_details")
public class Dto {
	
	@Id
	private String USN;
	private String Name;
	private String DOB;
	private String F_Name;
	private String M_Name;
	
	private double Kannada;
	private double Englih;
	private double Hindi;
	private double Mathematics;
	private double Social_science;
	private double Science;
	
	

	private String Percentage;
	public String getUSN() {
		return USN;
	}
	public void setUSN(String uSN) {
		USN = uSN;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public String getF_Name() {
		return F_Name;
	}
	public void setF_Name(String f_Name) {
		F_Name = f_Name;
	}
	public String getM_Name() {
		return M_Name;
	}
	public void setM_Name(String m_Name) {
		M_Name = m_Name;
	}
	public double getKannada() {
		return Kannada;
	}
	public void setKannada(double kannada) {
		Kannada = kannada;
	}
	public double getEnglih() {
		return Englih;
	}
	public void setEnglih(double englih) {
		Englih = englih;
	}
	public double getHindi() {
		return Hindi;
	}
	public void setHindi(double hindi) {
		Hindi = hindi;
	}
	public double getMathematics() {
		return Mathematics;
	}
	public void setMathematics(double mathematics) {
		Mathematics = mathematics;
	}
	public double getSocial_science() {
		return Social_science;
	}
	public void setSocial_science(double social_science) {
		Social_science = social_science;
	}
	public double getScience() {
		return Science;
	}
	public void setScience(double science) {
		Science = science;
	}
	
	public String getPercentage() {
		return Percentage;
	}
	public void setPercentage(String percentage) {
		Percentage = percentage;
	}
	
	
	

}
