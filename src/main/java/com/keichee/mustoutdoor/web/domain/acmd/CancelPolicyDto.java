package com.keichee.mustoutdoor.web.domain.acmd;

public class CancelPolicyDto {

	private String cancelPlcyUid;
	private String cancelPlcyName;
	private String cancelPlcyDesc;
	
	public String getCancelPlcyUid() {
		return cancelPlcyUid;
	}
	public void setCancelPlcyUid(String cancelPlcyUid) {
		this.cancelPlcyUid = cancelPlcyUid;
	}
	public String getCancelPlcyName() {
		return cancelPlcyName;
	}
	public void setCancelPlcyName(String cancelPlcyName) {
		this.cancelPlcyName = cancelPlcyName;
	}
	public String getCancelPlcyDesc() {
		return cancelPlcyDesc;
	}
	public void setCancelPlcyDesc(String cancelPlcyDesc) {
		this.cancelPlcyDesc = cancelPlcyDesc;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CancelPolicyDto [cancelPlcyUid=");
		builder.append(cancelPlcyUid);
		builder.append(", cancelPlcyName=");
		builder.append(cancelPlcyName);
		builder.append(", cancelPlcyDesc=");
		builder.append(cancelPlcyDesc);
		builder.append("]");
		return builder.toString();
	}
	
}
