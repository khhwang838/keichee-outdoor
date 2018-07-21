package com.keichee.mustoutdoor.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.keichee.mustoutdoor.web.domain.User;
import com.keichee.mustoutdoor.web.service.UserService;

@RestController
@RequestMapping(value = "/user")
public class UserController {

	@Autowired
	UserService userService;
	
	/**
	 * 사용자 정보 조회
	 * @param userInfo
	 */
	@GetMapping("/{userId}")
	public User getUser(@PathVariable String userId) {
		return userService.getUser(userId);
	}
	
	@GetMapping
	public List<User> getUsers() {
		return userService.getUsers();
	}
	
	/**
	 * 사용자 등록
	 * @param userInfo
	 */
	@PostMapping
	public int addUser(@RequestBody User userInfo) {
		return userService.addUser(userInfo);
	}
	
	/**
	 * 사용자 정보 변경
	 * @param userInfo
	 */
	@PatchMapping
	public int editUser(@RequestBody User userInfo) {
		return userService.editUser(userInfo);
	}
	
	/**
	 * 사용자 삭제
	 * @param userInfo
	 */
	@DeleteMapping("/{userId}")
	public int delUser(@PathVariable String userId) {
		return userService.delUser(userId);
	}
	
}
