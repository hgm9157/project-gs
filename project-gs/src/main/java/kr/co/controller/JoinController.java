package kr.co.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.dao.MemberDAO;
import kr.co.dao.MemberDAOImpl;
import kr.co.service.MemberService;
import kr.co.vo.MemberVO;

/**
 * Handles requests for the application home page.
 */
@Controller 
public class JoinController {
	
	@Inject
	MemberService memService;
	
	private static final Logger logger = LoggerFactory.getLogger(JoinController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String about(Locale locale, Model model) {
		logger.info("Welcome join! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "/join";
	}
	
	//가입하긔
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String postJoin(MemberVO vo) throws Exception{
		logger.info("member join!");
		
		memService.insertMember(vo);
		
		return null;
		
	}
	
}
