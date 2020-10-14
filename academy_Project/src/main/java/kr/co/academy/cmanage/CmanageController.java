package kr.co.academy.cmanage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CmanageController {
	
	@Autowired
	CmanageService cmanageService;
	
	//회사정보 등록하기
	@RequestMapping(value="cmanage/cmanagedashBoardregister",method=RequestMethod.GET)
	public String register() {
		
		return "cmanagedashBoardregister";
	}
	
	@RequestMapping(value="cmanage/cmanagedashBoardregister",method=RequestMethod.POST)
	public String register(CmanageDTO cmanageDTO) {
		int r = cmanageService.register(cmanageDTO);
		
		return "redirect:cmanagedashBoardregister";
	}
	
	//회사정보 수정하기
	@RequestMapping(value="cmanage/cmanagedashBoardupdate",method=RequestMethod.GET)
	public String update(@RequestParam("cNo")int cNo, Model model) {
		CmanageDTO cmanage= cmanageService.readOne(cNo);
		model.addAttribute("cmanage",cmanage);
		return "cmanagedashBoardupdate";
	}
	
	@RequestMapping(value="cmanage/cmanagedashBoardupdate",method=RequestMethod.POST)
	public String update(CmanageDTO cmanageDTO, RedirectAttributes attr) {
		int r =cmanageService.update(cmanageDTO);
		//글 수정하면 목록으로 
		if (r>0){
			return "redirect:cmanagedashBoard";
		}
		return "redirect:cmanagedashBoardupdate?cNo=" + cmanageDTO.getcNo();
	}
	
}
