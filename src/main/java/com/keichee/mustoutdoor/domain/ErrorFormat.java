package com.keichee.mustoutdoor.domain;

import com.keichee.mustoutdoor.constants.IMessageCode;

public class ErrorFormat {

	private String errMsg;
	private String errCode;
	
	public ErrorFormat(Throwable th, String code) {
		this.errMsg = th.getMessage();
		this.errCode = code;
	}
	public ErrorFormat(Throwable th) {
		this.errMsg = th.getMessage();
		this.errCode = IMessageCode.ERROR.E0001;
	}
	public String getErrMsg() {
		return errMsg;
	}
	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}
	public String getErrCode() {
		return errCode;
	}
	public void setErrCode(String errCode) {
		this.errCode = errCode;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ErrorFormat [errMsg=");
		builder.append(errMsg);
		builder.append(", errCode=");
		builder.append(errCode);
		builder.append("]");
		return builder.toString();
	}
	
	
}
