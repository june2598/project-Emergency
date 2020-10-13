package kr.co.academy.member;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

@Repository
public class MemberServiceImpl implements MemberService{

	@Inject
	private MemberDAO memberDAO;
	
	@Override
	public Map login(Map<String, String> map) {
		return memberDAO.login(map);
	}

	@Override
	public int register(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return memberDAO.register(memberDTO);
	}

	@Override
	public int idChk(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return memberDAO.idChk(memberDTO);
	}

}
