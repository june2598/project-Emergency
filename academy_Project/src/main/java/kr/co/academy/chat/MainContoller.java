package kr.co.academy.chat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainContoller {
	
	@RequestMapping("/chatlist")
	public ModelAndView chat() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("chatlist");
		return mv;
	}
}