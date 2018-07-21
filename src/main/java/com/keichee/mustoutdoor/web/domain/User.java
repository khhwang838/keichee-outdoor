package com.keichee.mustoutdoor.web.domain;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class User {

	private String userId;
	private String userName;
	private String password;
	private String profileImgUrl;
	private int passwordErrorCount;
	private LocalDateTime lastLoginDttm;
	private String lockYn;
	private LocalDateTime signUpDttm;
	
}
