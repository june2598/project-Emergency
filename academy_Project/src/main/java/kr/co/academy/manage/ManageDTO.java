package kr.co.academy.manage;

public class ManageDTO {
	// 이름은 원하는 단어로 교체 가능! 필요 시 추가 가능!
	// 다른 사람 파트 변경 필요 시 카톡방 연락!

	// 번호
	private int smid;
	// 교육과정
	private String ssub;
	// 아이디
	private String sid;
	// 이름
	private String sname;
	// 전화번호
	private String sphone;
	// 이메일
	private String semail;
	// 게시판
	private int cselect;
	// 삭제 시 0(존재) 1(삭제)
	private int cdel;

	
	
	public int getSmid() {
		return smid;
	}

	public void setSmid(int smid) {
		this.smid = smid;
	}

	public String getSsub() {
		return ssub;
	}

	public void setSsub(String ssub) {
		this.ssub = ssub;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSphone() {
		return sphone;
	}

	public void setSphone(String sphone) {
		this.sphone = sphone;
	}

	public String getSemail() {
		return semail;
	}

	public void setSemail(String semail) {
		this.semail = semail;
	}

	public int getCselect() {
		return cselect;
	}

	public void setCselect(int cselect) {
		this.cselect = cselect;
	}

	public int getCdel() {
		return cdel;
	}

	public void setCdel(int cdel) {
		this.cdel = cdel;
	}

	@Override
	public String toString() {
		return "ManageDTO [smid=" + smid + ", sid=" + sid + ", sname=" + sname + ", sphone=" + sphone + ",semail=" + semail
				+ ", cselect=" + cselect + ", cdel=" + cdel + "]";
	}

}
