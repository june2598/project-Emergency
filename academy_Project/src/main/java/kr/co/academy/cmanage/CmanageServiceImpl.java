package kr.co.academy.cmanage;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

	@Repository
public class CmanageServiceImpl implements CmanageService{
	
	
	@Inject
	private CmanageDAO cmanageDAO;

	@Override
	public CmanageDTO readOne(int cNo) {
		// TODO Auto-generated method stub
		return cmanageDAO.readOne(cNo);
	}

	@Override
	public int register(CmanageDTO cmanageDTO) {
		// TODO Auto-generated method stub
		return cmanageDAO.register(cmanageDTO);
	}

	@Override
	public int update(CmanageDTO cmanageDTO) {
		// TODO Auto-generated method stub
		return cmanageDAO.update(cmanageDTO);
	}

	@Override
	public int cmdCheck(CmanageDTO cmanageDTO) {
		// TODO Auto-generated method stub
		return cmanageDAO.cmdCheck(cmanageDTO);
	}

}