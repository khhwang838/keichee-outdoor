package com.keichee.mustoutdoor.web.controller;

import java.io.IOException;
import java.text.ParseException;
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

import com.keichee.mustoutdoor.component.SessionInfo;
import com.keichee.mustoutdoor.constants.IConstants;
import com.keichee.mustoutdoor.constants.IMessageCode;
import com.keichee.mustoutdoor.exception.LoginException;
import com.keichee.mustoutdoor.utils.DateUtils;
import com.keichee.mustoutdoor.web.domain.Response;
import com.keichee.mustoutdoor.web.domain.User;
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
			logger.debug("Session is exist. Redirect to home page.");
			return "/home";	// go to home.jsp page
		}
		logger.debug("Redirect to login page.");
		return "/login";	// go to login.jsp page
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public Response<String> login(@RequestBody User userInfo, Locale locale, HttpSession session) throws LoginException, ParseException {
		
		logger.debug("userInfo : {}", userInfo);
		User user = userService.validateUser(userInfo);
		logger.debug("user: {}",user);
		if (user != null) {
			session.setAttribute("signUpMonth", DateUtils.instance.getUtcToLocal(user.getSignUpDttm()).split(" ")[0]);
			session.setAttribute("profileImgUrl", getProfileImgUrl(user.getProfileImgUrl()) );
			session.setAttribute(IConstants.SESSION_INFO.USER_ID, user.getUserId());
			session.setAttribute(IConstants.SESSION_INFO.USER_NAME, user.getUserName());
		} else {
			throw new LoginException("Incorrect username or password.");
		}
		return new Response<String>(IMessageCode.SUCCESS.S0001, "goto home");
	}
	
	private String getProfileImgUrl(String profileImgUrl) {
		if ( profileImgUrl != null && profileImgUrl.length() > 0 ) {
			return profileImgUrl;
		}
		return IConstants.DEFAULT.PROFILE_IMG_URL;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logout(HttpSession session) throws LoginException {
		session.invalidate();
		session = null;
		return "/login";	// go to login.jsp page
	}
	
}
