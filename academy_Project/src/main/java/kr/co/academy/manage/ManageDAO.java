package kr.co.academy.manage;

import java.util.List;

public interface ManageDAO {
	// 학생 등록
	public int register(ManageDTO manageDTO);
	// 학생 목록 출력
	public List<ManageDTO> listAll();
	// 학생 정보 수정
	public int update(ManageDTO manageDTO);
	// 학생 삭제(개인정보 보안 목적 진짜 삭제)
	public int delete(int manage_num);
}
