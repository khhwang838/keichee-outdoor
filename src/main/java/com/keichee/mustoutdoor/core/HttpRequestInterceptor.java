/**
 * Created on 2016. 9. 4. by Keichee
 */
package com.keichee.mustoutdoor.core;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.keichee.mustoutdoor.component.SessionInfo;
import com.keichee.mustoutdoor.constants.IConstants;
import com.keichee.mustoutdoor.utils.GuidUtils;

public class HttpRequestInterceptor extends HandlerInterceptorAdapter {

	private final Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private SessionInfo sessionInfo;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		logger.debug("------------------------------------------------------------------");
		logger.debug(" START : {}, {}", request.getRequestURI(), request.getMethod());
		logger.debug("------------------------------------------------------------------");

		final HttpSession session = request.getSession(false);

		if (session != null && session.getAttribute(IConstants.SESSION_INFO.USER_ID) != null) {
			String guid = (String) session.getAttribute(IConstants.SESSION_INFO.GUID);
			if (guid == null) {
				guid = GuidUtils.instance().createGuid();
			}
			String userId = (String) session.getAttribute(IConstants.SESSION_INFO.USER_ID);
			logger.debug("User {} is still in session.", userId);

			String passwd = (String) session.getAttribute(IConstants.SESSION_INFO.PASSWORD);
			Locale locale = (Locale) session.getAttribute(IConstants.SESSION_INFO.LOCALE);
			sessionInfo.setInfo(guid, userId, passwd, locale);
			logger.debug("SessionInfo: {}", sessionInfo);
		} else {
			logger.debug("No session info exist.");
		}
		return true;

	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		
		response.setHeader("Cache-Control", "no-store");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		if (request.getProtocol().equals("HTTP/1.1")) {
			response.setHeader("Cache-Control", "no-cache");
		}
		logger.debug("------------------------------------------------------------------");
		logger.debug(" END : Request = {}, {}", request.getRequestURI(), request.getMethod());
		logger.debug("------------------------------------------------------------------");
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
		// System.out.println("afterCompletion executed");

	}
}
