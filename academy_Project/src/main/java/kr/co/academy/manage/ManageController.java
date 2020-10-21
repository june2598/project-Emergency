package kr.co.academy.manage;

import java.util.ArrayList;
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
public class ManageController {

   private static final Logger logger = LoggerFactory.getLogger(ManageController.class);

   @Autowired
   ManageService manageService;

   // 출력
   @RequestMapping(value = "manage/managelist", method = RequestMethod.GET)
   public ModelAndView list() {
      logger.info("===List===");
      ModelAndView mav = new ModelAndView();

      List<ManageDTO> list = manageService.list();
      mav.addObject("managelist", list);
      mav.setViewName("managelist");
      return mav;
   }

   // 등록
   @RequestMapping(value = "manage/manageregister", method = RequestMethod.GET)
   public String register() {
      return "manageregister";
   }

   @RequestMapping(value = "manage/manageregister", method = RequestMethod.POST)
   public String register(ManageDTO manageDTO,RedirectAttributes rttr) {
      
	   logger.info("전송 : " + manageDTO);
	   
	   int r = manageService.register(manageDTO);
	   
	   if(r>0) {
			rttr.addFlashAttribute("msg","등록성공");
		}
      return "redirect:managelist";
   }

   //리스트상세보기
   @RequestMapping(value = "manage/managereadlist", method = RequestMethod.GET)
   public String readlist(@RequestParam("smid") int smid, Model model) {
	  ManageDTO manageDTO = manageService.readlist(smid);
      model.addAttribute("manage", manageDTO);

      return "managereadlist";
   }

   // 수정
   @RequestMapping(value = "manage/manageupdate", method = RequestMethod.GET)
   public String update(@RequestParam("smid") int smid, Model model) {
      ManageDTO manageDTO = manageService.readlist(smid);
      model.addAttribute("mange", manageDTO);
      return "manageupdate";
   }

   @RequestMapping(value = "manage/manageupdate", method = RequestMethod.POST)
   public String update(ManageDTO manageDTO, RedirectAttributes attr) {
      int r = manageService.update(manageDTO);
      logger.info("수정 : " + manageDTO);
      // 수정에 성공하면 목록보기로 이동
      if (r > 0) {
         attr.addFlashAttribute("msg", "수정에 성공 하였습니다.");
         return "redirect:managelist";
      }
      // 수정에 실패하면 수정보기 화면으로 이동
      return "redirect:manageupdate?smid=" + manageDTO.getSmid();
   }

   // 삭제
   @RequestMapping(value = "manage/managedelete", method = RequestMethod.GET)
   public String delete(@RequestParam("smid") int smid, RedirectAttributes rttr) {
	  
	   logger.info("삭제 : " + smid);
	   
	  int r = manageService.delete(smid);

      if (r > 0) {
         rttr.addFlashAttribute("msg", "삭제에 성공하였습니다.");
         return "redirect:managelist";
      }
      return "redirect:managelist?mid=" + smid;
   }
   //페이징처리
   @RequestMapping(value = "mange/maagegetBoardList", method = RequestMethod.GET)
   public String getBoardList(Model model, 
		   @RequestParam(required = false, defaultValue = "1") int page,
		   @RequestParam(required = false, defaultValue = "1")int range
		   ) throws Exception {
	   // 전체 게시글 개수
	   int listCnt = manageService.getBoardListCnt();
	   //Pagination 객체 생성
	   	Pagination pagination = new Pagination();
	   	pagination.pageInfo(page, range, listCnt);
	   	
	   	model.addAttribute("pageination",pagination);
	   	model.addAttribute("managelist",manageService.getBoardList(pagination));
	   	return "manageindex";
   }
}	


