package com.keichee.mustoutdoor.web.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.keichee.mustoutdoor.component.SessionInfo;
import com.keichee.mustoutdoor.constants.IConstants;
import com.keichee.mustoutdoor.exception.LoginException;

@Controller
@RequestMapping(method = {RequestMethod.GET, RequestMethod.POST})
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	SessionInfo sessionInfo;
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) throws LoginException {
		if (session != null && session.getAttribute(IConstants.SESSION_INFO.USER_ID) != null) {
			logger.debug("Go to home page.");
			// call addAcmd.jsp
			return "/acmd/addAcmd";
		} else {
			logger.debug("Go to login page.");
			return "redirect:/";
		}
	}
}
