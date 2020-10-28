package kr.co.academy;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value="/introduce", method = RequestMethod.GET)
	public String introduce() {
		logger.info("introduce");
		return "introduce";
	}
	
	@RequestMapping(value="/curriculum", method = RequestMethod.GET)
	public String curriculum() {
		logger.info("curriculum");
		return "curriculum";
	}
	@RequestMapping(value="/prolist", method = RequestMethod.GET)
	public String prolist() {
		logger.info("prolist");
		return "prolist";
	}
	@RequestMapping(value="/prolist2", method = RequestMethod.GET)
	public String prolist2() {
		logger.info("prolist2");
		return "prolist2";
	}
	@RequestMapping(value="/prolist3", method = RequestMethod.GET)
	public String prolist3() {
		logger.info("prolist3");
		return "prolist3";
	}
	@RequestMapping(value="/prolist4", method = RequestMethod.GET)
	public String prolist4() {
		logger.info("prolist4");
		return "prolist4";
	}
	@RequestMapping(value="/mapinfo", method = RequestMethod.GET)
	public String mapinfo() {
		logger.info("mapinfo");
		return "mapinfo";
	}
	
	//스프링 인가 없는 사용자 접근 에러페이지	
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		
		model.addAttribute("msg", "Access Denied");
	}
}
