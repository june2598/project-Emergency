package kr.co.academy.manage;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.academy.HomeController;

@Controller
public class DashBoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	
	@RequestMapping(value="/dashBoard")
	public ModelAndView DashBoardView(ModelAndView mv, HttpServletRequest request) throws Exception {
		
		System.out.println("쿼리스트링 Key 값 : "+request.getParameter("pageName"));
		mv.setViewName("dashBoard/dashBoard.tiles");
		return mv;
	}
	
	@RequestMapping(value="manage/dashBoard", method = RequestMethod.GET)
	public String curriculum() {
		logger.info("dashBoard");
		return "dashBoard";
	}
}
