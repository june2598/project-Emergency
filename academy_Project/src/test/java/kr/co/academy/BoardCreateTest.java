package kr.co.academy;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.academy.board.BoardDAO;
import kr.co.academy.board.BoardDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/spring/**/root-context.xml")
public class BoardCreateTest {
	@Inject
	private BoardDAO boardDAO;
	
	@Test
	public void testInsert() throws Exception{
		BoardDTO boardDTO;
		
		for(int i=1; i<150; i++) {
			boardDTO = new BoardDTO();
			boardDTO.setBtitle("Test Title [" + i + "]");
			boardDTO.setBcontent("Test");
			boardDTO.setBselect(0);
			boardDTO.setId("test" + i);
			
			boardDAO.register(boardDTO);
			
			Thread.sleep(1000);
		}
		
	}
}
