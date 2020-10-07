package kr.co.academy.board;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO{
	@Inject
	private SqlSession sqlSession;

	private static final String namespace = "kr.co.academy";

	@Override
	public List<BoardDTO> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace +".list");
	}

	@Override
	public int updateReadCnt(int bno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BoardDTO readOne(int bno, int memId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int register(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int bno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		return 0;
	}




}