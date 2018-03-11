package com.keichee.mustoutdoor.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.keichee.mustoutdoor.constants.IMessageCode;
import com.keichee.mustoutdoor.domain.ErrorFormat;

/**
 * 기본적인 예외 처리를 위한 핸들러
 * @param th
 * @return
 */
@ControllerAdvice
public class DefaultExceptionHandler {

	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	@ExceptionHandler(Throwable.class)
	@ResponseBody
	public ErrorFormat anyException(Throwable th) {
		logger.error(th.getMessage(), th);
		return new ErrorFormat(th);
	}
	
	@ExceptionHandler(LoginException.class)
	@ResponseBody
	public ErrorFormat loginException(Throwable th) {
		logger.error(th.getMessage(), th);
		return new ErrorFormat(th, IMessageCode.ERROR.E0001);
	}

}

