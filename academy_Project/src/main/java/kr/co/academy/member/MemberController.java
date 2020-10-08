package kr.co.academy.member;


import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="member/login", method=RequestMethod.GET)
	public String login() {
		logger.info("login form");
		return "login";
	}
	
	@RequestMapping(value="member/login", method=RequestMethod.POST)
	public String login(@RequestParam Map<String, String> map, HttpSession session) {
		Map user = memberService.login(map);
		
		if(user==null) {
			logger.info("로그인 실패");
			return "redirect:login";
		} else {
			session.setAttribute("user", user);
			logger.info("로그인 성공");
			return "redirect:/";
		}
	}
	
	@RequestMapping(value="member/register", method=RequestMethod.GET)
	public String register() {
		logger.info("register form");
		return "register";
	}

	@RequestMapping(value="member/register", method=RequestMethod.POST)
	public String register(MemberDTO memberDTO) {
		int r = memberService.register(memberDTO);
		
		if(r>0) {
			return "redirect:/";
		} else {
			return "register";
		}
		
	}
	
	@RequestMapping(value="member/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		
		return "redirect:/";
	}
	
	
	
}