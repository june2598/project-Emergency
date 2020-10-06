package kr.co.academy.member;

public interface MemberDAO {
	// 로그인 구현
	public int login(MemberDTO memberDTO);
	// 회원가입 구현
	public int register(MemberDTO memberDTO);
	// 아이디 찾기
	
	// 비밀번호 찾기
}
