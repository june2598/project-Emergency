package kr.co.academy.board;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

	@Repository
public class BoardServiceImpl implements BoardService{
	
	
	@Inject
	private BoardDAO boardDAO;

	@Override
	public List<BoardDTO> list(int bselect) {
		// TODO Auto-generated method stub
		return boardDAO.list(bselect);
	}

	@Override
	public int updateReadCnt(int bno) {
		// TODO Auto-generated method stub
		return boardDAO.updateReadCnt(bno);
	}

	@Override
	public BoardDTO readOne(int bno) {
		// TODO Auto-generated method stub
		return boardDAO.readOne(bno);
	}

	@Override
	public int register(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		return boardDAO.register(boardDTO);
	}

	@Override
	public int delete(int bno) {
		// TODO Auto-generated method stub
		return boardDAO.delete(bno);
	}

	@Override
	public int update(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		return boardDAO.update(boardDTO);
	}

	@Override

	public int countBno() {
		// TODO Auto-generated method stub
		return boardDAO.countBno();
	}

	@Override
	public int fileRegister(BoardFileDTO bfDTO) {
		// TODO Auto-generated method stub
		return boardDAO.fileRegister(bfDTO);
	}
	public int reply(BoardReply boardReply) {
		// TODO Auto-generated method stub
		return boardDAO.reply(boardReply);
	}

	@Override
	public List<BoardReply> replyDetail(int bno) {
		// TODO Auto-generated method stub
		return boardDAO.replyDetail(bno);
	}

	@Override
	public int replyupdate(BoardReply boardreply) {
		// TODO Auto-generated method stub
		return boardDAO.replyupdate(boardreply);
	}

	@Override
	public BoardReply viewreplyUpdate(int reno) {
		// TODO Auto-generated method stub
		return boardDAO.viewreplyUpdate(reno);
	}

	@Override
	public int replyDelete(int reno) {
		// TODO Auto-generated method stub
		return boardDAO.replyDelete(reno);

	}

}