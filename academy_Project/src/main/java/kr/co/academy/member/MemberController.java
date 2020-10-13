package kr.co.academy.member;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String register(@ModelAttribute MemberDTO memberDTO) {
		logger.info("register form");
		return "register";
	}

	@RequestMapping(value="member/register", method=RequestMethod.POST)
	public String register(@ModelAttribute @Valid MemberDTO memberDTO, BindingResult result) {
		
		if( result.hasErrors() ) {

			// 에러를 List로 저장
			List<ObjectError> list = result.getAllErrors();
			for( ObjectError error : list ) {
				System.out.println(error);
			}
			return "register";
		}
		
		
		memberService.register(memberDTO);
		return "redirect:/";		
	}
	
	@RequestMapping(value="member/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "member/idChk", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String idChk(MemberDTO memberDTO) {
			
		int result=memberService.idChk(memberDTO);
		return Integer.toString(result);
	}	
	
}