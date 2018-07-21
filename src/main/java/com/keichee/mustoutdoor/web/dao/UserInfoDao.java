package com.keichee.mustoutdoor.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.keichee.mustoutdoor.web.domain.User;

public interface UserInfoDao {

	User selectUserById(@Param("userId")String userId);
	
	List<User> selectUsers();
	
	int insertUser(User userInfo);
	
	int updateUser(User userInfo);

	int deleteUserById(@Param("userId")String userId);

	
}
