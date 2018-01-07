package com.keichee.mustoutdoor.web.domain.acmd.dto;

public class SpecialFacilitiesDto {

	private String acmdUid;
	private String specialFcltName;
	private String specialFcltDesc;
	
	public String getAcmdUid() {
		return acmdUid;
	}
	public void setAcmdUid(String acmdUid) {
		this.acmdUid = acmdUid;
	}
	public String getSpecialFcltName() {
		return specialFcltName;
	}
	public void setSpecialFcltName(String specialFcltName) {
		this.specialFcltName = specialFcltName;
	}
	public String getSpecialFcltDesc() {
		return specialFcltDesc;
	}
	public void setSpecialFcltDesc(String specialFcltDesc) {
		this.specialFcltDesc = specialFcltDesc;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("SpecialFacilitiesDto [acmdUid=");
		builder.append(acmdUid);
		builder.append(", specialFcltName=");
		builder.append(specialFcltName);
		builder.append(", specialFcltDesc=");
		builder.append(specialFcltDesc);
		builder.append("]");
		return builder.toString();
	}
	
}
