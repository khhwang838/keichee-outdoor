package com.keichee.mustoutdoor.constants;

/**
 * 다국어 처리를 위한 메시지 코드
 * @author Kihyun
 * @created   2017-12-16
 */
public interface IMessageCode {

	interface GENERAL {
		String LOGIN = "LOGIN";
	}
	
	interface SUCCESS {
		String S0001 = "S0001";
	}
	
	interface ERROR {
		String E0000 = "E0000";	// Server Error, catch하지 않은 예외 (unexpected exceptions)
		String E0001 = "E0001";	// Server Error, catch하여 원인 파악이 되는 예외 
		String E0002 = "E0002"; // 필수 파라미터 없음
	}
}
