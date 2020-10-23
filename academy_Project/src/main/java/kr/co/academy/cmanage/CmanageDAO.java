package kr.co.academy.cmanage;

import java.util.List;

public interface CmanageDAO {

	   // 전체 출력
	   public List<CmanageDTO> list();
	   // 상세 읽기
	   public CmanageDTO cboarddetail();   
	   // 학생 정보 수정
	   public int cboardupdate(CmanageDTO cmanageDTO);


}