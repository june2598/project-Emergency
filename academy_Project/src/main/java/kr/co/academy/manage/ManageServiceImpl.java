package kr.co.academy.manage;

import java.util.List;


import javax.inject.Inject;

import org.springframework.stereotype.Repository;

@Repository
public class ManageServiceImpl implements ManageService{

   @Inject
   private ManageDAO manageDAO;
   
   @Override
   public List<ManageDTO> getBoardList(Search search) throws Exception{
	// TODO Auto-generated method stub
	   return manageDAO.getBoardList(search);
   }
   
   @Override
   public ManageDTO readlist(int smid) {
      // TODO Auto-generated method stub
      return manageDAO.readlist(smid);
   }

   @Override
   public int register(ManageDTO manageDTO) {
      // TODO Auto-generated method stub
      return manageDAO.register(manageDTO);
   }

   @Override
   public int update(ManageDTO manageDTO) {
      // TODO Auto-generated method stub
      return manageDAO.update(manageDTO);
   }

   @Override 
   public int delete(int smid) {
      // TODO Auto-generated method stub
      return manageDAO.delete(smid);
   }

   @Override
   public int getBoardListCnt(Search search) throws Exception{
	   // TODO Auto-generated method stub
	   return manageDAO.getBoardListCnt(search);
   }



}

