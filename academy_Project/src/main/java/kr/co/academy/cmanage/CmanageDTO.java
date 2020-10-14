package kr.co.academy.cmanage;

public class CmanageDTO {
	//이름은 원하는 단어로 교체 가능! 필요 시 추가 가능!
	//다른 사람 파트 변경 필요 시 카톡방 연락!
	
	private int cNo;
	private String cName;
	private String cAddress;
	private String cCeo;
	private String cNumber;
	private String cTel;
	private String cEmail;
	private String cLogo;
	
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getcAddress() {
		return cAddress;
	}
	public void setcAddress(String cAddress) {
		this.cAddress = cAddress;
	}
	public String getcCeo() {
		return cCeo;
	}
	public void setcCeo(String cCeo) {
		this.cCeo = cCeo;
	}
	public String getcNumber() {
		return cNumber;
	}
	public void setcNumber(String cNumber) {
		this.cNumber = cNumber;
	}
	public String getcTel() {
		return cTel;
	}
	public void setcTel(String cTel) {
		this.cTel = cTel;
	}
	public String getcEmail() {
		return cEmail;
	}
	public void setcEmail(String cEmail) {
		this.cEmail = cEmail;
	}
	public String getcLogo() {
		return cLogo;
	}
	public void setcLogo(String cLogo) {
		this.cLogo = cLogo;
	}
	
	@Override
	public String toString() {
		return "BoardDTO [cNo=" + cNo + ", cName=" + cName + ", cAddress=" + cAddress + ", cCeo=" + cCeo + ", cNumber="
				+ cNumber + ", cTel=" + cTel + ", cEmail=" + cEmail + ", cLogo=" + cLogo + "]";
	}

}
