package kr.co.academy.cmanage;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CmanageDAOImpl implements CmanageDAO{
	
	@Inject
	private SqlSession sqlSession;

	private static final String namespace = "kr.co.academy.cmanage";

	@Override
	public List<CmanageDTO> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".list");
	}

	@Override
	public CmanageDTO cboarddetail() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".cboarddetail");
	}

	@Override
	public int cboardupdate(CmanageDTO cmanageDTO) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + ".cboardupdate", cmanageDTO);
	}

	

}