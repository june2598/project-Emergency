package kr.co.academy.board;

import java.util.List;

public interface BoardDAO {
	// 게시물 등록
	public int register(BoardDTO boardDTO);
	// 모든 게시물 정보 불러오기
	public List<BoardDTO> listAll(int del);
	// 게시물 1개 정보 불러오기
	public BoardDTO getdetail(int postNum);
	// 게시물 수정
	public int update(BoardDTO boardDTO);
	// 글 삭제 (del= 0(존재) / del=1(삭제))
	public int delete(int postNum);
	// 조회수 증가
	public int readCnt(int postNum);
}
