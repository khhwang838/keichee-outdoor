package com.keichee.mustoutdoor.web.domain;

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
	private String lastLoginDttm;
	private String lockYn;
	private String signUpDttm;
	
}
