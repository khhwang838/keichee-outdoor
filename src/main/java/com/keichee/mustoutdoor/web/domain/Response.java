package com.keichee.mustoutdoor.web.domain;

import java.util.List;

public class Response<T> {

	private String respCode;
	private String respMsg;
	private List<T> respData;
	
	public Response() {};
	public Response(String respCode, String respMsg) {
		this.respCode = respCode;
		this.respMsg = respMsg;
	}
	public String getRespCode() {
		return respCode;
	}
	public void setRespCode(String respCode) {
		this.respCode = respCode;
	}
	public String getRespMsg() {
		return respMsg;
	}
	public void setRespMsg(String respMsg) {
		this.respMsg = respMsg;
	}
	public List<T> getRespData() {
		return respData;
	}
	public void setRespData(List<T> respData) {
		this.respData = respData;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Response [respCode=");
		builder.append(respCode);
		builder.append(", respMsg=");
		builder.append(respMsg);
		builder.append(", respData=");
		builder.append(respData);
		builder.append("]");
		return builder.toString();
	}
	
}
