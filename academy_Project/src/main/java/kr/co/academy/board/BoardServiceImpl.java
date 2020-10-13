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

}