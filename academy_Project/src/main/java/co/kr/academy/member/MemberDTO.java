package co.kr.academy.member;

public class MemberDTO {
	//이름은 원하는 단어로 교체 가능! 필요 시 추가 가능!
	//다른 사람 파트 변경 필요 시 카톡방 연락!
	
	//id 아이디
	private String memId;
	//pw 비밀번호
	private String memPw;
	//name 이름
	private String memName;
	//tel 전화번호
	private int memTel;
	//adress 주소
	private String memAddress;
	//email	이메일
	private int memEmail;
	//position 부모,수강생=0 / 선생=1 / 관리자=2	=>페이지 작성 쉽게(메뉴구성 등)
	private int memPosition;
	//birth 생년월일
	private int memBirth;
	
	
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPw() {
		return memPw;
	}
	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public int getMemTel() {
		return memTel;
	}
	public void setMemTel(int memTel) {
		this.memTel = memTel;
	}
	public String getMemAddress() {
		return memAddress;
	}
	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}
	public int getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(int memEmail) {
		this.memEmail = memEmail;
	}
	public int getMemPosition() {
		return memPosition;
	}
	public void setMemPosition(int memPosition) {
		this.memPosition = memPosition;
	}
	public int getMemBirth() {
		return memBirth;
	}
	public void setMemBirth(int memBirth) {
		this.memBirth = memBirth;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [memId=" + memId + ", memPw=" + memPw + ", memName=" + memName + ", memTel=" + memTel
				+ ", memAddress=" + memAddress + ", memEmail=" + memEmail + ", memPosition=" + memPosition
				+ ", memBirth=" + memBirth + "]";
	}
	
}
