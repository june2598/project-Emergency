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
	@RequestMapping(value="board/boardlist",method=RequestMethod.GET)
	public ModelAndView list(@RequestParam("bs")int bselect) {
		logger.info("===List===");
		ModelAndView mav = new ModelAndView();
		
		List<BoardDTO> list = boardService.list(bselect);
		mav.addObject("boardlist",list);
		mav.setViewName("boardlist");
		return mav;
	}
	
	//글 쓰기
	@RequestMapping(value="board/boardregister",method=RequestMethod.GET)
	public String register() {
		
		return "boardregister";
	}
	
	@RequestMapping(value="board/boardregister",method=RequestMethod.POST)
	public String register(BoardDTO boardDTO) {
		int r = boardService.register(boardDTO);
		
		return "redirect:boardlist";
	}
	
	//글 상세 보기
	@RequestMapping(value="board/boardreadOne",method=RequestMethod.GET)
	public String readOne(@RequestParam("bno")int bno, Model model) {
		boardService.updateReadCnt(bno);
		BoardDTO boardDTO = boardService.readOne(bno);
		model.addAttribute("board",boardDTO);
		
		return "boardreadone";
	}
	//글 삭제
	@RequestMapping(value="board/boarddelete",method=RequestMethod.GET)
	public String delete(@RequestParam("bno")int bno) {
		int r= boardService.delete(bno);
		
		if(r > 0) {
			return "redirect:boardlist";
	}
	return "redirect:boardreadone?bno=" + bno;
	}
	//글 수정
	@RequestMapping(value="board/boardupdate",method=RequestMethod.GET)
	public String update(@RequestParam("bno")int bno, Model model) {
		BoardDTO board= boardService.readOne(bno);
		model.addAttribute("board",board);
		return "boardupdate";
	}
	@RequestMapping(value="board/boardupdate",method=RequestMethod.POST)
	public String update(BoardDTO boardDTO, RedirectAttributes attr) {
		int r =boardService.update(boardDTO);
		//글 수정하면 목록으로 
		if (r>0){
			return "redirect:boardlist";
		}
		return "redirect:boardupdate?bno=" + boardDTO.getBno();
	}
	
}
