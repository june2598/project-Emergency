package kr.co.academy.board;

import java.util.List;

public interface BoardDAO {

	//전체목록
	public List<BoardDTO> list();

	public int updateReadCnt(int bno);	//조회수 증가
	public BoardDTO readOne(int bno,int memId);	//글 읽기

	//글쓰기 
	public int register(BoardDTO boardDTO);

	//글삭제
	public int delete(int bno);

	//글 수정
	public int update(BoardDTO boardDTO);

	//댓글 쓰기를 위한 메소드
//	public int reply

	//게시물 번호에 해당하는 댓글 번호를 가져오는 메소드


	//댓글수정

	//댓글 수정 보기

	//댓글삭제 

	//파일 업로드 
}