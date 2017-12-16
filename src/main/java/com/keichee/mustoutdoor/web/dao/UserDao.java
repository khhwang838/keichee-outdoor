package com.keichee.mustoutdoor.web.dao;

import org.apache.ibatis.annotations.Param;

import com.keichee.mustoutdoor.web.domain.User;

public interface UserDao {

	public User selectUserById(@Param(value="userId")String userId);
	
	public int insertUser(User userInfo);
	
	public int updateUser(User userInfo);

	public int deleteUserById(@Param(value="userId")String userId);
	
}
