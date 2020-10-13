package kr.co.academy.member;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Inject
	private SqlSession sqlSession;
	
	private static final String nameSpace = "kr.co.academy.member";
	
	@Override
	public Map login(Map<String, String> map) {

		return sqlSession.selectOne(nameSpace + ".login", map);
	}
	
	@Override
	public int register(MemberDTO memberDTO) {

		return sqlSession.insert(nameSpace + ".register", memberDTO);
	}

	@Override
	public int idChk(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".idChk", memberDTO);
	}
	
}
