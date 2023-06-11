package project_marks_card_dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Internal {
	
	@Id
	String usnn;
	public String getUsnn() {
		return usnn;
	}
	public void setUsnn(String usnn) {
		this.usnn = usnn;
	}
	private int kannadainternal;
	private int englishinternal;
	private int hindiinternal;
	private int mathsinternal;
	private int sscienceinternal;
	private int scienceinternal;
	
	private int ktotal;
	private int etotal;
	private int htotal;
	private int mtotal;
	private int sstotal;
	private int stotal;
	
	
	public int getKtotal() {
		return ktotal;
	}
	public void setKtotal(int ktotal) {
		this.ktotal = ktotal;
	}
	public int getEtotal() {
		return etotal;
	}
	public void setEtotal(int etotal) {
		this.etotal = etotal;
	}
	public int getHtotal() {
		return htotal;
	}
	public void setHtotal(int htotal) {
		this.htotal = htotal;
	}
	public int getMtotal() {
		return mtotal;
	}
	public void setMtotal(int mtotal) {
		this.mtotal = mtotal;
	}
	public int getSstotal() {
		return sstotal;
	}
	public void setSstotal(int sstotal) {
		this.sstotal = sstotal;
	}
	public int getStotal() {
		return stotal;
	}
	public void setStotal(int stotal) {
		this.stotal = stotal;
	}
	public int getKannadainternal() {
		return kannadainternal;
	}
	public void setKannadainternal(int kannadainternal) {
		this.kannadainternal = kannadainternal;
	}
	public int getEnglishinternal() {
		return englishinternal;
	}
	public void setEnglishinternal(int englishinternal) {
		this.englishinternal = englishinternal;
	}
	public int getHindiinternal() {
		return hindiinternal;
	}
	public void setHindiinternal(int hindiinternal) {
		this.hindiinternal = hindiinternal;
	}
	public int getMathsinternal() {
		return mathsinternal;
	}
	public void setMathsinternal(int mathsinternal) {
		this.mathsinternal = mathsinternal;
	}
	public int getSscienceinternal() {
		return sscienceinternal;
	}
	public void setSscienceinternal(int sscienceinternal) {
		this.sscienceinternal = sscienceinternal;
	}
	public int getScienceinternal() {
		return scienceinternal;
	}
	public void setScienceinternal(int scienceinternal) {
		this.scienceinternal = scienceinternal;
	}
	
	
	

}
