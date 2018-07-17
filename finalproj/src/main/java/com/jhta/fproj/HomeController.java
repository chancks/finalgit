package com.jhta.fproj;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jhta.fproj.model.BoardDAO;
import com.jhta.fproj.model.BoardVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Resource
	BoardDAO dao;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model,HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		model.addAttribute("service", "board");
		model.addAttribute("main", "first");
		session.setAttribute("url", "/mvc/resources/picture/logo.png");
		
		model.addAttribute("data", dao.qnaList());
		model.addAttribute("data2", dao.noticeList());
		model.addAttribute("data3", dao.reviewList());
		
		return "home";
	}
	
	@RequestMapping("../{service}/{main}")
    String home(@PathVariable String service,@PathVariable String main) {
        return "home";
    }
	
}
