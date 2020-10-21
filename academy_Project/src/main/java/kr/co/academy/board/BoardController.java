package kr.co.academy.board;


import java.io.File;
import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
		
		return "redirect:boardlist?bs=" + bs;
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
			return "redirect:boardlist?bs=" + bselect;
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
			return "redirect:boardlist?bs=" + bselect;
		}
		return "redirect:boardupdate?bno=" + boardDTO.getBno();
	}
	
	

	@RequestMapping(value="board/test", method=RequestMethod.GET)
	public String test() {
		return "uploadTest";
	}
	
	@GetMapping("/uploadAjax")
	public void uploadAjax() {
		logger.info("upload ajax");
	}
	
	@PostMapping("/uploadAjaxAction")
	public void uploadAjaxPost(MultipartFile[] uploadFile) {
		logger.info("update ajax Post.............");
		
		String uploadFolder="D:\\upload";
		
		for(MultipartFile multipartFile : uploadFile) {
			logger.debug("--------------------------------------------");
			logger.debug("upload file name : " + multipartFile.getOriginalFilename() );
			logger.debug("upload file size : " + multipartFile.getSize());
			
			String uploadFileName = multipartFile.getOriginalFilename();
			
			// IE has file path
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
			logger.debug("only file name: " + uploadFileName);
			
			File saveFile = new File(uploadFolder, uploadFileName);
			
			try {
				multipartFile.transferTo(saveFile);
			}catch (Exception e) {
				logger.error(e.getMessage());
			}
			
		}
		
	}


	//댓글 쓰기
	@RequestMapping(value="board/reply",method=RequestMethod.GET)
	public String reply(){
		return "reply";
	}
	@RequestMapping(value="board/reply",method=RequestMethod.POST)
	public String reply(BoardReplyDTO boardReplyDTO) {
		int r = boardService.reply(boardReplyDTO);
		
		if(r>0) {
			return"redirect:boardreadOne?bno=" +boardReplyDTO.getBno();
		}
	return "reply";
	}
	
	
	
}

