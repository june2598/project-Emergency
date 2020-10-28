package kr.co.academy.board;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO{
	@Inject
	private SqlSession sqlSession;

	private static final String namespace = "kr.co.academy.board";

	@Override
	public List<BoardDTO> list(BSearch Bsearch) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace +".list",Bsearch);
	}

	@Override
	public int updateReadCnt(int bno) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace +".updateReadCnt",bno);
	}

	@Override
	public BoardDTO readOne(int bno) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace +".readOne",bno);
	}

	@Override
	public int register(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace + ".register",boardDTO);
	}

	@Override
	public int delete(int bno) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace+ ".delete",bno);
	}

	@Override
	public int update(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace+ ".update",boardDTO);
	}

	@Override
	public int reply(BoardReplyDTO boardReplyDTO) {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace+".reply",boardReplyDTO);
	}

	@Override
	public List<BoardReplyDTO> replyDetail(int bno) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".replyDetail",bno);
	}

	@Override
	public int replyupdate(BoardReplyDTO boardReplyDTO) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace+".replyupdate",boardReplyDTO);
	}

	@Override
	public BoardReplyDTO viewreplyUpdate(int reno) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".viewreplyUpdate",reno);
	}

	@Override
	public int replyDelete(int reno) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace+".replyDelete",reno);
	}

	@Override
	public int countBno() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".countBno");
	}

	@Override
	public int fileRegister(BoardFileDTO bfDTO) {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace + ".fileregister", bfDTO);
	}
	
	@Override
   public int getBoardListCnt(int bselect){
	   // TODO Auto-generated method stub
	   return sqlSession.selectOne(namespace + ".getBoardListCnt",bselect);
   }




}