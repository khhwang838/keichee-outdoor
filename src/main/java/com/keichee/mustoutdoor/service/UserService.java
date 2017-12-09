package com.keichee.mustoutdoor.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.keichee.mustoutdoor.controller.LoginController;
import com.keichee.mustoutdoor.domain.User;

@Service
public class UserService {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	public User validateUser(User user) {
		logger.debug("Validating user, {}", user.getUserId());
		// TODO : 사용자 정보 조회해서 있을 경우 해당 정보 반환
		user.setUserName("황기현");
		return user;
	}
}
