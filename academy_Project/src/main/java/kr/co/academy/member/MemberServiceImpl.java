package kr.co.academy.member;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

@Repository
public class MemberServiceImpl implements MemberService{

	@Inject
	private MemberDAO memberDAO;
	
	@Override
	public int login(MemberDTO memberDTO) {
		return memberDAO.login(memberDTO);
	}

	@Override
	public int register(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return memberDAO.register(memberDTO);
	}

}
