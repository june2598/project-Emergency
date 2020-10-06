package kr.co.academy.member;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Inject
	private SqlSession sqlSession;
	
	private static final String nameSpace = "kr.co.academy.member";
	
	@Override
	public int login(MemberDTO memberDTO) {

		return sqlSession.selectOne(nameSpace + ".login", memberDTO);
	}
	
	@Override
	public int register(MemberDTO memberDTO) {

		return sqlSession.insert(nameSpace + ".register", memberDTO);
	}
	
}
