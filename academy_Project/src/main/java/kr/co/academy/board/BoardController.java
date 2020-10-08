package kr.co.academy.board;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value="board/list",method=RequestMethod.GET)
	public ModelAndView list() {
		logger.info("===List===");
		ModelAndView mav = new ModelAndView();
		
		List<BoardDTO> list = boardService.list();
		mav.addObject("boardlist",list);
		mav.setViewName("boardlist");
		return mav;
	}
}
