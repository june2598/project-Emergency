package kr.co.academy.member;

import java.util.Map;

public interface MemberDAO {
	// 로그인 구현
	public Map login(Map<String, String> map);
	// 회원가입 구현
	public int register(MemberDTO memberDTO);
	// 아이디 중복검사
	public int idChk(MemberDTO memberDTO);
	
	// 아이디 찾기
	
	// 비밀번호 찾기
}
