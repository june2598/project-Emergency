package kr.co.academy.board;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardService boardService;
	
	//전체 조회
	@RequestMapping(value="board/list",method=RequestMethod.GET)
	public ModelAndView list() {
		logger.info("===List===");
		ModelAndView mav = new ModelAndView();
		
		List<BoardDTO> list = boardService.list();
		mav.addObject("boardlist",list);
		mav.setViewName("boardlist");
		return mav;
	}
	
	//글 쓰기
	@RequestMapping(value="board/register",method=RequestMethod.GET)
	public String register() {
		
		return "boardregister";
	}
	
	@RequestMapping(value="board/register",method=RequestMethod.POST)
	public String register(BoardDTO boardDTO) {
		int r = boardService.register(boardDTO);
		
		return "redirect:boardlist";
	}
	
	//글 상세 보기
	@RequestMapping(value="board/readOne",method=RequestMethod.GET)
	public String readOne(@RequestParam("bno")int bno, Model model) {
		boardService.updateReadCnt(bno);
		BoardDTO boardDTO = boardService.readOne(bno);
		model.addAttribute("board",boardDTO);
		
		return "boardreadone";
	}
}
