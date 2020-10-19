package kr.co.academy.manage;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ManageDAOImpl implements ManageDAO{

   @Inject
   private SqlSession sqlSession;
   
   private static final String namespace = "kr.co.academy.manage";
   
   @Override
   public List<ManageDTO> list() {
      // TODO Auto-generated method stub
      return sqlSession.selectList(namespace + ".list");
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


}