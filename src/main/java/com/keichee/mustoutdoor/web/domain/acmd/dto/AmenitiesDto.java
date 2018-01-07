package com.keichee.mustoutdoor.web.domain.acmd.dto;

public class AmenitiesDto {

	private String amnyUid;
	private String amnyName;
	private String amnyImgUrl;
	
	public String getAmnyUid() {
		return amnyUid;
	}
	public void setAmnyUid(String amnyUid) {
		this.amnyUid = amnyUid;
	}
	public String getAmnyName() {
		return amnyName;
	}
	public void setAmnyName(String amnyName) {
		this.amnyName = amnyName;
	}
	public String getAmnyImgUrl() {
		return amnyImgUrl;
	}
	public void setAmnyImgUrl(String amnyImgUrl) {
		this.amnyImgUrl = amnyImgUrl;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("AmenitiesDto [amnyUid=");
		builder.append(amnyUid);
		builder.append(", amnyName=");
		builder.append(amnyName);
		builder.append(", amnyImgUrl=");
		builder.append(amnyImgUrl);
		builder.append("]");
		return builder.toString();
	}
	
	
}
