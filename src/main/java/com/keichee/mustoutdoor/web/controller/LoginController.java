package com.keichee.mustoutdoor.web.controller;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.keichee.mustoutdoor.component.SessionInfo;
import com.keichee.mustoutdoor.constants.IConstants;
import com.keichee.mustoutdoor.domain.User;
import com.keichee.mustoutdoor.exception.LoginException;
import com.keichee.mustoutdoor.web.service.UserService;

@Controller
@RequestMapping(method = {RequestMethod.GET, RequestMethod.POST})
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	SessionInfo sessionInfo;
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request, ServletResponse resp, Locale locale, Model model, HttpSession session) throws ServletException, IOException {
		// check if session is alive, then go to home.
		if ( session != null && session.getAttribute(IConstants.SESSION_INFO.USER_ID) != null ) {
			model.addAttribute("userId", session.getAttribute(IConstants.SESSION_INFO.USER_ID));
			logger.debug("Session is exist. Redirect to /home");
			return "/home";
		}
		logger.debug("Redirect to /login");
		return "/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestBody User userInfo, Locale locale, HttpSession session) throws LoginException {
		
		logger.debug("userInfo : {}", userInfo);
		ModelAndView mav = null;
		User user = userService.validateUser(userInfo);
		if (null != user) {
			mav = new ModelAndView("home");
			session.setAttribute("userId", userInfo.getUserId());
			session.setAttribute("userName", user.getUserName());
		} else {
			mav = new ModelAndView("login");
			mav.addObject("message", "Incorrect username or password.");
		}
		System.out.println(locale.getLanguage());
		return mav;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logout(HttpSession session) throws LoginException {
		session.invalidate();
		return "/login";
	}
	
}
