package com.keichee.mustoutdoor.web.domain.acmd;

public class FacilitiesDto {

	private String fcltUid;
	private String fcltName;
	private String fcltImg;
	
	public String getFcltUid() {
		return fcltUid;
	}
	public void setFcltUid(String fcltUid) {
		this.fcltUid = fcltUid;
	}
	public String getFcltName() {
		return fcltName;
	}
	public void setFcltName(String fcltName) {
		this.fcltName = fcltName;
	}
	public String getFcltImg() {
		return fcltImg;
	}
	public void setFcltImg(String fcltImg) {
		this.fcltImg = fcltImg;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("FacilitiesDto [fcltUid=");
		builder.append(fcltUid);
		builder.append(", fcltName=");
		builder.append(fcltName);
		builder.append(", fcltImg=");
		builder.append(fcltImg);
		builder.append("]");
		return builder.toString();
	}
	
}
