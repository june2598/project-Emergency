package kr.co.academy.member;

public interface MemberDAO {
	// 로그인 구현
	public String login(String id, String pw);
	// 회원가입 구현
	public int register(MemberDTO memberDTO);
}
