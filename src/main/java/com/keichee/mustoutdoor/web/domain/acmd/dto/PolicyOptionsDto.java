package com.keichee.mustoutdoor.web.domain.acmd.dto;

public class PolicyOptionsDto {

	private String plcyOptUid;
	private String plcyOptName;
	private String plcyOptDesc;
	
	public String getPlcyOptUid() {
		return plcyOptUid;
	}
	public void setPlcyOptUid(String plcyOptUid) {
		this.plcyOptUid = plcyOptUid;
	}
	public String getPlcyOptName() {
		return plcyOptName;
	}
	public void setPlcyOptName(String plcyOptName) {
		this.plcyOptName = plcyOptName;
	}
	public String getPlcyOptDesc() {
		return plcyOptDesc;
	}
	public void setPlcyOptDesc(String plcyOptDesc) {
		this.plcyOptDesc = plcyOptDesc;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("PolicyOptionsDto [plcyOptUid=");
		builder.append(plcyOptUid);
		builder.append(", plcyOptName=");
		builder.append(plcyOptName);
		builder.append(", plcyOptDesc=");
		builder.append(plcyOptDesc);
		builder.append("]");
		return builder.toString();
	}
}
