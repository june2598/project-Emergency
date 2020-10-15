package kr.co.academy.manage;

import java.util.List;

public interface ManageService {
   // 전체 출력
   public List<ManageDTO> list(int cselect);
   // 상세 읽기
   public ManageDTO readlist(int smid);   
   // 학생 등록
   public int register(ManageDTO manageDTO);
   // 학생 정보 수정
   public int update(ManageDTO manageDTO);
   // 학생 삭제(개인정보 보안 목적 진짜 삭제)
   public int delete(int smid);
   
   
}