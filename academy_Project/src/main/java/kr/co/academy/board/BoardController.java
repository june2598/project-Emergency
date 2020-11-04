package kr.co.academy.board;


import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
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
	public String list(@RequestParam("bs")String bsel,
				Model model
			  ,@RequestParam( defaultValue = "1") int page
			  ,@RequestParam(required = false, defaultValue = "1")int range
			  ,@RequestParam(required = false, defaultValue = "btitle") String searchType
			  ,@RequestParam(required = false) String keyword
			  ,@ModelAttribute("Bsearch") BSearch Bsearch
				)	throws Exception {
		
		logger.info("==Bsearch==");
		
		int bselect = Integer.parseInt(bsel);
		
		//검색
		model.addAttribute("Bsearch",Bsearch);
		Bsearch.setSearchType(searchType);
		Bsearch.setKeyword(keyword);
				
				
				
				
		logger.info("===List===");
		//bselect값 입력
		Bsearch.setBselect(bselect);
		//전체 게시글 개수
		int listCnt = boardService.getBoardListCnt(Bsearch);
		
		//검색
		Bsearch.pageInfo(page, range, listCnt);
		
		//페이징처리
		model.addAttribute("boardpaging", Bsearch);
		//게시물 화면출력
		model.addAttribute("boardlist",boardService.list(Bsearch));
		
		
		
		return "boardlist";
	}
	
	//글 쓰기
	@RequestMapping(value="board/boardregister",method=RequestMethod.GET)
	public String register() {
		
		return "boardregister";
	}
	
	@RequestMapping(value="board/boardregister",method=RequestMethod.POST)
	public String register(BoardDTO boardDTO, @RequestParam("bs") String bs, MultipartHttpServletRequest mtfRequest) {
		
		logger.info("register post page");
		System.out.println("bs : " + bs);
		
		
		boardService.register(boardDTO);
		
		
		List<MultipartFile> fileList = mtfRequest.getFiles("file");
		
		int bfilefrom = boardService.countBno();
		int bfselect = Integer.parseInt(bs);
		
		String realpath = "D:\\git5\\academy_Project\\src\\main\\webapp\\resources\\upload\\";
		String viewpath = "../resource/upload/";
		
		for(MultipartFile mf : fileList) {
			
			String originFileName = mf.getOriginalFilename();
			long filesize = mf.getSize();
			
			System.out.println("originFileName : " + originFileName);
			System.out.println("filesize : " + filesize);
			
			String bfilerealpath = realpath + System.currentTimeMillis() + originFileName; //실제 경로 + 현재 시간 + 파일이름 으로 데이터 중복 방지
            String bfileviewpath = viewpath + System.currentTimeMillis() + originFileName; //상대 경로 + 현재 시간 + 파일이름
            try {
				mf.transferTo(new File(bfilerealpath)); //  realpath 경로에 파일 생성
			} catch (IOException e) {
				e.printStackTrace();
			}
            
            System.out.println("저장할 파일의 실제 경로는 : " + bfilerealpath);
            
            BoardFileDTO bfDTO = new BoardFileDTO(bfselect, bfilefrom, bfilerealpath, bfileviewpath);
            boardService.fileRegister(bfDTO);
            
            
		}
		
		return "redirect:list?bs=" + bs;
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
	public String delete(@RequestParam("bno")int bno,@RequestParam("bs")int bselect) {
		int r= boardService.delete(bno);
		
		if(r > 0) {
			return "redirect:list?bs=" + bselect;
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
	public String update(BoardDTO boardDTO, RedirectAttributes attr,@RequestParam("bs")int bselect) {
		int r =boardService.update(boardDTO);
		//글 수정하면 목록으로 
		if (r>0){
			return "redirect:list?bs=" + bselect;
		}
		return "redirect:boardupdate?bno=" + boardDTO.getBno();
	}
	

	//댓글쓰기
	@ResponseBody
	@RequestMapping(value="board/reply",method=RequestMethod.POST)
	public int reply(BoardReplyDTO boardReplyDTO) {
		return boardService.reply(boardReplyDTO);
	}

	
	//댓글수정
	@ResponseBody
	@RequestMapping(value="board/replyupdate",method=RequestMethod.POST)
	public Map<String,Object> replyupdate(BoardReplyDTO boardReplyDTO){
		Map<String,Object> result = new HashMap<String,Object>();
		
		try {
			boardService.replyupdate(boardReplyDTO);
			result.put("status","ok");
		}
		catch (Exception e) {
			e.printStackTrace();
			result.put("status", "fail");
			
		}
		return result;
	}
	
	
	//댓글 구현
	@ResponseBody
	@RequestMapping(value="board/replylist",method=RequestMethod.POST)
	public List<BoardReplyDTO> replylist(@RequestParam("bno")int bno){
		logger.info("===List===");
		return boardService.replyDetail(bno);
	}
	
	//댓글삭제
	@ResponseBody
	@RequestMapping(value="board/replyDelete",method=RequestMethod.POST)
	
	public Map<String,Object> replyDelete(@RequestParam("reno")int reno){
		Map<String, Object> result = new HashMap<String,Object>();
		
		try {
			boardService.replyDelete(reno);
			result.put("status", "ok");
			
		} catch (Exception e) {
			e.printStackTrace();
			result.put("stauts", "fail");
		}
		return result;
	}
	
	
	
}

