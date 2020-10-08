package kr.co.academy.manage;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ChartController {

	@RequestMapping(value="charts")
	public ModelAndView ChartView(ModelAndView mv, HttpServletRequest request) throws Exception {
		System.out.println("쿼리스트링 Key 값 : "+request.getParameter("pageName"));
		mv.setViewName("charts/charts.tiles");
		return mv;
	}
}





