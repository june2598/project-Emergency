package kr.co.academy.cmanage;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

	@Repository
public class CmanageServiceImpl implements CmanageService{
	
	
	@Inject
	private CmanageDAO cmanageDAO;

	@Override
	public List<CmanageDTO> list() {
		// TODO Auto-generated method stub
		return cmanageDAO.list();
	}

//	@Override
//	public CmanageDTO cboarddetail(int cNo) {
//		// TODO Auto-generated method stub
//		return cmanageDAO.cboarddetail(cNo);
//	}
	
	@Override
	public CmanageDTO cboarddetail() {
		// TODO Auto-generated method stub
		return cmanageDAO.cboarddetail();
	}

	@Override
	public int cboardupdate(CmanageDTO cmanageDTO) {
		// TODO Auto-generated method stub
		return cmanageDAO.cboardupdate(cmanageDTO);
	}


}