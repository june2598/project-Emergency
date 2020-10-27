package kr.co.academy.board;

import java.util.List;

public interface BoardService {

	//전체목록
	public List<BoardDTO> list(Boardpaging boardpaging);

	public int updateReadCnt(int bno);	//조회수 증가
	public BoardDTO readOne(int bno);	//글 읽기

	//글쓰기 
	public int register(BoardDTO boardDTO);

	//글삭제
	public int delete(int bno);

	//글 수정
	public int update(BoardDTO boardDTO);
	
	//게시글 카운트
	public int countBno();
	
	//파일 등록
	public int fileRegister(BoardFileDTO bfDTO);

	//댓글 쓰기를 위한 메소드
	public int reply(BoardReplyDTO boardReplyDTO);

	//게시물 번호에 해당하는 댓글 번호를 가져오는 메소드
	public List<BoardReplyDTO> replyDetail(int bno);

	//댓글수정
	public int replyupdate(BoardReplyDTO boardreplyDTO);
	//댓글 수정 보기
	public BoardReplyDTO viewreplyUpdate(int reno);
	//댓글삭제 
	public int replyDelete(int reno);
	// 총 게시글 개수 확인
	public int getBoardListCnt(int bselect);
}