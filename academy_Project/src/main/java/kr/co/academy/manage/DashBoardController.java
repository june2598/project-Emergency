package kr.co.academy.manage;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DashBoardController {
		
	@RequestMapping(value="/")
	public ModelAndView DashBoardView(ModelAndView mv, HttpServletRequest request) throws Exception {
		
		System.out.println("쿼리스트링 Key 값 : "+request.getParameter("pageName"));
		mv.setViewName("dashBoard/dashBoard.tiles");
		return mv;
	}
}