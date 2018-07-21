package com.keichee.mustoutdoor.web.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.keichee.mustoutdoor.utils.DateUtils;
import com.keichee.mustoutdoor.web.controller.LoginController;
import com.keichee.mustoutdoor.web.dao.UserInfoDao;
import com.keichee.mustoutdoor.web.domain.User;

@Service
public class UserService {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	UserInfoDao userInfoDao;

	public User validateUser(User userInfo) {
		logger.debug("Validating user, {}", userInfo.getUserId());
		User result = getUser(userInfo.getUserId());
		return result;
	}

	public User getUser(String userId) {
		return userInfoDao.selectUserById(userId);
	}
	
	public List<User> getUsers() {
		return userInfoDao.selectUsers();
	}

	public int addUser(User userInfo) {
		if (userInfo.getUserId() != null) {
			userInfo.setSignUpDttm(DateUtils.instance.getCurrentDttmAsUTC());
			return userInfoDao.insertUser(userInfo);
		}
		throw new RuntimeException("Invalid argument.");
	}

	public int editUser(User userInfo) {
		if (userInfo.getUserId() != null) {
			return userInfoDao.updateUser(userInfo);
		}
		throw new RuntimeException("Invalid argument.");
	}

	public int delUser(String userId) {
		return userInfoDao.deleteUserById(userId);
	}
}
