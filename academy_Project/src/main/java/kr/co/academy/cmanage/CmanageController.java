package kr.co.academy.cmanage;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CmanageController {
	
	private static final Logger logger = LoggerFactory.getLogger(CmanageController.class);
		
	@Autowired
	CmanageService cmanageService;
	
	@RequestMapping(value="cmanage/cboardlist", method=RequestMethod.GET)
	public ModelAndView list() {
		logger.info("==== List ====");
		ModelAndView mav = new ModelAndView();
		
		List<CmanageDTO> list = cmanageService.list();
		mav.addObject("cboardlist", list);
		mav.setViewName("cboardlist");
		
		return mav;
	}
	
	@RequestMapping(value="cmanage/cboarddetail", method=RequestMethod.GET)
	public String cboarddetail(@RequestParam("cNo") int cNo, Model model) {
		
		CmanageDTO cmanageDTO = cmanageService.cboarddetail(cNo);
		model.addAttribute("cmanage", cmanageDTO);
		
		return "cboarddetail";
	}
	
	@RequestMapping(value="cmanage/cboardupdate", method=RequestMethod.GET)
	public String cboardupdate(@RequestParam("cNo") int cNo, Model model) {
		
		CmanageDTO cmanageDTO = cmanageService.cboarddetail(cNo);
		model.addAttribute("cmanage", cmanageDTO);
		
		return "cboardupdate";
	}
	
	@RequestMapping(value="cmanage/cboardupdate", method=RequestMethod.POST)
	public String cboardupdate(CmanageDTO cmanageDTO, RedirectAttributes attr) {
		int r = cmanageService.cboardupdate(cmanageDTO);
		
		//수정 성공하면 cboarddetail로
		if(r>0) {
			attr.addFlashAttribute("msg", "수정 성공");
			return "redirect:cboarddetail?cNo=" + cmanageDTO.getcNo();
		}
		//수정 실패시 다시 돌아오기
		return "redirect:cboardupdate?cNo=" + cmanageDTO.getcNo();
	}
}
