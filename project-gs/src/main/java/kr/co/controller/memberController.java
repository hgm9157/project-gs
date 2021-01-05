package kr.co.controller;


import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class memberController {
	private static final Logger logger = LoggerFactory.getLogger(memberController.class);
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String register(Locale locale, Model model) {
		logger.info("GS LOGIN FORM");
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate);
		
		return "/login";
		
	}
	
}