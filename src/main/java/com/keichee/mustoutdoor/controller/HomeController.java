package com.keichee.mustoutdoor.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView home(Locale locale, Model model, HttpSession session) throws LoginException {
		if (session != null && session.getAttribute(IConstants.SESSION_INFO.USER_ID) != null) {
			
			logger.debug("Go to home, {}", (String)session.getAttribute(IConstants.SESSION_INFO.USER_ID));
			ModelAndView mav = null;
			mav = new ModelAndView("home");
			mav.addObject("langCd", sessionInfo.getLangCd());
			return mav;
		} else {
			logger.debug("Go to login");
			return new ModelAndView("redirect:/");
		}
	}
}
