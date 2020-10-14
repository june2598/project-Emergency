package kr.co.academy.member;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

public class MemberDTO {
	//이름은 원하는 단어로 교체 가능! 필요 시 추가 가능!
	//다른 사람 파트 변경 필요 시 카톡방 연락!
	
	//id 아이디(4~15글자, 숫자, 영문 대소문자)
	@NotEmpty
	@Length(min=4, max=15)
	@Pattern(regexp="^[a-zA-Z0-9]*$")
	private String memId;

	//pw 비밀번호(6~16글자, 숫자, 영문 대소문자, 특수문자)
	@NotEmpty
	@Length(min=6, max=16)
	@Pattern(regexp="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[`~!@#$%^&*()-_=+])[A-Za-z\\d`~!@#$%^&*()-_=+]*$")
	private String memPw;
	
	//name 이름
	@NotEmpty
	private String memName;
	//tel 전화번호
	@NotEmpty
	private String memTel;
	//adress 주소
	@NotEmpty
	private String memAddress;
	//email	이메일
	@NotEmpty
	@Email
	private String memEmail;
	//position 부모,수강생=0 / 선생=1 / 관리자=2	=>페이지 작성 쉽게(메뉴구성 등)
	private int memPosition;
	//birth 생년월일
	@NotEmpty
	private String memBirth;
	//regdate 등록일
	private String memRegdate;
	
	
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
	public String getMemTel() {
		return memTel;
	}
	public void setMemTel(String memTel) {
		this.memTel = memTel;
	}
	public String getMemAddress() {
		return memAddress;
	}
	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public int getMemPosition() {
		return memPosition;
	}
	public void setMemPosition(int memPosition) {
		this.memPosition = memPosition;
	}
	public String getMemBirth() {
		return memBirth;
	}
	public void setMemBirth(String memBirth) {
		this.memBirth = memBirth;
	}
	public String getMemRegdate() {
		return memRegdate;
	}
	public void setMemRegdate(String memRegdate) {
		this.memRegdate = memRegdate;
	}
	@Override
	public String toString() {
		return "MemberDTO [memId=" + memId + ", memPw=" + memPw + ", memName=" + memName + ", memTel=" + memTel
				+ ", memAddress=" + memAddress + ", memEmail=" + memEmail + ", memPosition=" + memPosition
				+ ", memBirth=" + memBirth + ", memRegdate=" + memRegdate + "]";
	}
	
	
}
