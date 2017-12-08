package com.keichee.mustoutdoor.controller;

import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.keichee.mustoutdoor.exception.LoginException;

@Controller
@RequestMapping(method = {RequestMethod.GET, RequestMethod.POST})
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) throws LoginException {
		
		model.addAttribute("serverTime", new Date());
		return "home";
	}
}
