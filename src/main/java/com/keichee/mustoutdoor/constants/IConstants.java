/**
 * Created on 2016. 11. 26. by Kihyun Hwang
 */
package com.keichee.mustoutdoor.constants;

import java.util.Locale;

public interface IConstants {

	interface DEFAULT {
		String PWD = "1234";
		int PAGE_SIZE = 10;
		int PAGE_NUMBER = 1;
		Locale LOCALE = Locale.KOREA;
		String PROFILE_IMG_URL = "../images/avatar.png";
	}
	
	interface SESSION_INFO{
		String LOCALE = "locale";
		String ROLE_ID = "roleId";
		String GUID = "guid";
		String USER_ID = "userId";
		String USER_NAME = "userName";
		String PASSWORD = "password";
	}
	
	interface MDC_INFO {
		String GUID = "guid";
		String USER_ID = "userId";
		String ROLE_ID = "roleId";
		String LOCALE = "locale";
	}
}
