package kr.co.academy.cmanage;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CmanageDAOImpl implements CmanageDAO{
	
	@Inject
	private SqlSession sqlSession;

	private static final String namespace = "kr.co.academy.cmanage";


	@Override
	public CmanageDTO readOne(int cNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace +".readOne",cNo);
	}

	@Override
	public int register(CmanageDTO cmanageDTO) {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace + ".register",cmanageDTO);
	}

	@Override
	public int update(CmanageDTO cmanageDTO) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + ".update",cmanageDTO);
	}

	@Override
	public int cmdCheck(CmanageDTO cmanageDTO) {
		
		return sqlSession.selectOne(namespace + ".cmdCheck");
	}




}