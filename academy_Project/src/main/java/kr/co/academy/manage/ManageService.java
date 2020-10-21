package kr.co.academy.manage;

import java.util.List;


public interface ManageService {
   // 전체 출력
   public List<ManageDTO> list();
   // 상세 읽기
   public ManageDTO readlist(int smid);   
   // 학생 등록
   public int register(ManageDTO manageDTO);
   // 학생 정보 수정
   public int update(ManageDTO manageDTO);
   // 학생 삭제(개인정보 보안 목적 진짜 삭제)
   public int delete(int smid);
   //검색
   //총 게시글 개수 확인
   public int getBoardListCnt() throws Exception;
   
   public List<ManageDTO> getBoardList(Pagination pagination) throws Exception;
   
   

}