package kr.co.academy.board;

import java.util.Iterator;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

	@Repository
public class BoardServiceImpl implements BoardService{
	Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);
		
	@Inject
	private BoardDAO boardDAO;

	@Override
	public List<BoardDTO> list(int bselect) {
		// TODO Auto-generated method stub
		return boardDAO.list(bselect);
	}

	@Override
	public int updateReadCnt(int bno) {
		// TODO Auto-generated method stub
		return boardDAO.updateReadCnt(bno);
	}

	@Override
	public BoardDTO readOne(int bno) {
		// TODO Auto-generated method stub
		return boardDAO.readOne(bno);
	}

	@Override
	public void register(BoardDTO boardDTO,HttpServletRequest request) throws Exception{
		// TODO Auto-generated method stub
		boardDAO.register(boardDTO);
	
		MultipartHttpServletRequest multipartHttpServletRequest =
				(MultipartHttpServletRequest)request;
			
		
			Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
			MultipartFile multipartFile = null;
			
			while(iterator.hasNext()) {
				multipartFile = multipartHttpServletRequest.getFile(iterator.next());
				if(multipartFile.isEmpty()==false) {
						logger.info("--------------file start------------");
						logger.info("name : " + multipartFile.getName());
						logger.info("filename : " + multipartFile.getOriginalFilename());
						logger.info("size : " +multipartFile.getSize());
						logger.info("----------------file end--------------------\n");
					
			}
			
				
				
			}
	}
		
		
	
		
		
		
		
		
		
	

	@Override
	public int delete(int bno) {
		// TODO Auto-generated method stub
		return boardDAO.delete(bno);
	}

	@Override
	public int update(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		return boardDAO.update(boardDTO);
	}

}