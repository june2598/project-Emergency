package kr.co.academy.cmanage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.academy.member.MemberController;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CmanageController {
	
	private static final Logger logger = LoggerFactory.getLogger(CmanageController.class);
		
	@Autowired
	CmanageService cmanageService;
	
	
	@RequestMapping(value="cmanage/cmdBoard", method = RequestMethod.GET)
	public String managedashBoard(CmanageDTO cmanageDTO) {
		logger.info("cmdBoard");
		
		int result = cmanageService.cmdCheck(cmanageDTO);
		return "cmdBoard?cmdres=" + result;
	}
	
	@RequestMapping(value="/managelist", method = RequestMethod.GET)
	public String managelist() {
		logger.info("manageregister");
		return "managelist";
	}

	//회사정보 등록하기
	@RequestMapping(value="cmanage/cmdBoardregister",method=RequestMethod.GET)
	public String register() {
		
		return "cmdBoardregister";
	}
	
	@RequestMapping(value="cmanage/cmdBoardregister",method=RequestMethod.POST)
	public String register(CmanageDTO cmanageDTO) {
		int r = cmanageService.register(cmanageDTO);
		
		return "redirect:cmdBoardregister";
	}
	
	//회사정보 수정하기
	@RequestMapping(value="cmanage/cmdBoardupdate",method=RequestMethod.GET)
	public String update(@RequestParam("cNo")int cNo, Model model) {
		CmanageDTO cmanage= cmanageService.readOne(cNo);
		model.addAttribute("cmanage",cmanage);
		return "cmdBoardupdate";
	}
	
	@RequestMapping(value="cmanage/cmdBoardupdate",method=RequestMethod.POST)
	public String update(CmanageDTO cmanageDTO, RedirectAttributes attr) {
		int r =cmanageService.update(cmanageDTO);
		//글 수정하면 목록으로 
		if (r>0){
			return "redirect:cmdBoard";
		}
		return "redirect:cmdBoardupdate?cNo=" + cmanageDTO.getcNo();
	}
	
}
