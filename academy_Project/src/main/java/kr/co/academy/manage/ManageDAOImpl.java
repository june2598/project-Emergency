package kr.co.academy.manage;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ManageDAOImpl implements ManageDAO{

   @Inject
   private SqlSession sqlSession;
   
   private static final String namespace = "kr.co.academy.manage";
   
   @Override
   public List<ManageDTO> getBoardList(Pagination pagination)  throws Exception{
	// TODO Auto-generated method stub
	return sqlSession.selectList(namespace + ".getBoardList", pagination);
   }

   @Override
   public ManageDTO readlist(int smid) {
      // TODO Auto-generated method stub
      return sqlSession.selectOne(namespace + ".readlist", smid);
   }
   
   @Override
   public int register(ManageDTO manageDTO) {
      // TODO Auto-generated method stub
      return sqlSession.insert(namespace + ".register" ,manageDTO);
   }

   @Override
   public int update(ManageDTO manageDTO) {
      // TODO Auto-generated method stub
      return sqlSession.update(namespace + ".update" ,manageDTO);
   }

   @Override
   public int delete(int smid) {
      // TODO Auto-generated method stub
      return sqlSession.delete(namespace + ".delete" ,smid);
   }

   @Override
   public int getBoardListCnt()  throws Exception{
	   // TODO Auto-generated method stub
	   return sqlSession.selectOne(namespace + ".getBoardListCnt");
   }
 

}
