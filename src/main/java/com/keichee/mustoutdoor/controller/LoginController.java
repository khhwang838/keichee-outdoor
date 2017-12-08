package com.keichee.mustoutdoor.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.keichee.mustoutdoor.component.SessionInfo;
import com.keichee.mustoutdoor.constants.IConstants;
import com.keichee.mustoutdoor.domain.UserInfo;
import com.keichee.mustoutdoor.exception.LoginException;
import com.keichee.utils.GuidUtils;

@Controller
@RequestMapping(method = {RequestMethod.GET, RequestMethod.POST})
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	SessionInfo sessionInfo;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		// check if session is alive, then go to home.
		if ( session != null && session.getAttribute(IConstants.SESSION_INFO.USER_ID) != null ) {
			model.addAttribute("userId", session.getAttribute(IConstants.SESSION_INFO.USER_ID));
			return "home";
		}
		logger.debug("Redirect to login page.");
		return "login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestBody UserInfo userInfo, Locale locale, HttpSession session) throws LoginException {
		
		checkUserInfo(userInfo);
		
		if (session.getAttribute(IConstants.SESSION_INFO.USER_ID) == null &&
				session.getAttribute(IConstants.SESSION_INFO.PASSWORD) == null) {
			logger.debug("Login processing start.");
			String guid = GuidUtils.instance().createGuid();
			String userId = userInfo.getUserId();
			String passwd = userInfo.getPasswd();
			
			if ( checkPassword(userId, passwd) ) {
				String roleId = "";	// 역할 조회해오기
				
				sessionInfo.setInfo(guid, userId, roleId, locale);
				// TODO : 사용자 정보에서 사용자 정보 조회해서 세션에 입력
				session.setAttribute("userName", "황기현");
				session.setAttribute("userId", userId);
				return "redirect:/home";
				
			} else {
				throw new LoginException("Incorrect username or password.");
			}
		} else {
			logger.debug("Session is not null but requested /login api.");
			session = null;
			return "redirect:/";
		}
	}

	private void checkUserInfo(UserInfo userInfo) {
		if ( userInfo == null || userInfo.getUserId().isEmpty() || userInfo.getPasswd().isEmpty() )
			throw new LoginException("User");
	}

	private boolean checkPassword(String userId, String passwd) {
		// TODO : 패스워드 검증
		return true;
	}
	
}
