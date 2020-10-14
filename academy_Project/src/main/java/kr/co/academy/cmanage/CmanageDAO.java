package kr.co.academy.cmanage;


public interface CmanageDAO {

	//회사정보 읽기
	public CmanageDTO readOne(int cNo);

	//회사정보 등록 
	public int register(CmanageDTO cmanageDTO);

	//회사정보 수정
	public int update(CmanageDTO cmanageDTO);


}