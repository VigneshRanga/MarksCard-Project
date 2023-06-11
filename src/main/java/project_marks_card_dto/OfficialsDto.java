package project_marks_card_dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="officers")
public class OfficialsDto {
	
	@Id
	private String email;
	private int pwd;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPwd() {
		return pwd;
	}
	public void setPwd(int pwd) {
		this.pwd = pwd;
	}

}
