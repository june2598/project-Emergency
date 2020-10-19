package kr.co.academy.cmanage;


public interface CmanageService {

	//회사정보 읽기
	public CmanageDTO readOne(int cNo);

	//회사정보 등록 
	public int register(CmanageDTO cmanageDTO);

	//회사정보 수정
	public int update(CmanageDTO cmanageDTO);
	
	//회사 등록정보 유무 확인
	public int cmdCheck(CmanageDTO cmanageDTO);


}