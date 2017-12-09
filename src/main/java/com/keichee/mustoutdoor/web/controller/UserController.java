package com.keichee.mustoutdoor.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.keichee.mustoutdoor.domain.User;
import com.keichee.mustoutdoor.web.service.UserService;

@Controller
@RequestMapping(value = "/user", method = RequestMethod.POST)
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	UserService userService;
	
	/**
	 * 사용자 정보 조회
	 * @param userInfo
	 */
	@RequestMapping(value = "/getUser", method = RequestMethod.POST)
	@ResponseBody
	public User getUser(@RequestBody User userInfo) {
		return userService.getUser(userInfo);
	}
	
	/**
	 * 사용자 등록
	 * @param userInfo
	 */
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	@ResponseBody
	public int addUser(@RequestBody User userInfo) {
		return userService.addUser(userInfo);
	}
	
	/**
	 * 사용자 정보 변경
	 * @param userInfo
	 */
	@RequestMapping(value = "/editUser", method = RequestMethod.POST)
	@ResponseBody
	public int editUser(@RequestBody User userInfo) {
		return userService.editUser(userInfo);
	}
	
	/**
	 * 사용자 삭제
	 * @param userInfo
	 */
	@RequestMapping(value = "/delUser", method = RequestMethod.POST)
	@ResponseBody
	public int delUser(@RequestBody User userInfo) {
		return userService.delUser(userInfo);
	}
	
}
