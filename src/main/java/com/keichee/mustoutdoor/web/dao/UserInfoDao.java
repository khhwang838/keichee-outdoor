package com.keichee.mustoutdoor.web.dao;

import org.apache.ibatis.annotations.Param;

import com.keichee.mustoutdoor.web.domain.User;

public interface UserInfoDao {

	User selectUserById(@Param(value="userId")String userId);
	
	int insertUser(User userInfo);
	
	int updateUser(User userInfo);

	int deleteUserById(@Param(value="userId")String userId);
	
}
