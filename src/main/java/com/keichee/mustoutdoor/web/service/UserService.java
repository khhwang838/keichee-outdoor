package com.keichee.mustoutdoor.web.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.keichee.mustoutdoor.utils.DateUtils;
import com.keichee.mustoutdoor.web.controller.LoginController;
import com.keichee.mustoutdoor.web.dao.UserDao;
import com.keichee.mustoutdoor.web.domain.User;

@Service
public class UserService {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	UserDao userDao;
	
	public User validateUser(User userInfo) {
		logger.debug("Validating user, {}", userInfo.getUserId());
		User result = getUser(userInfo);
		return result;
	}

	public User getUser(User userInfo) {
		if ( userInfo.getUserId() != null && !userInfo.getUserId().isEmpty() ) {
			return userDao.selectUserById(userInfo.getUserId());
		}
		throw new RuntimeException("Invalid argument.");
	}

	public int addUser(User userInfo) {
		if ( userInfo.getUserId() != null ) {
			userInfo.setSignUpDttm(DateUtils.instance.getCurrentDttmAsUTC());
			return userDao.insertUser(userInfo);
		}
		throw new RuntimeException("Invalid argument.");
	}

	public int editUser(User userInfo) {
		if ( userInfo.getUserId() != null ) {
			return userDao.updateUser(userInfo);
		}
		throw new RuntimeException("Invalid argument.");
	}

	public int delUser(User userInfo) {
		if ( userInfo.getUserId() != null ) {
			return userDao.deleteUserById(userInfo.getUserId());
		}
		throw new RuntimeException("Invalid argument.");
	}
}
