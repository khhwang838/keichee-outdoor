package com.keichee.mustoutdoor.web.domain.acmd.dto;

public class SiteTypesDto {

	private String siteTypeUid;
	private String siteTypeName;
	
	public String getSiteTypeUid() {
		return siteTypeUid;
	}
	public void setSiteTypeUid(String siteTypeUid) {
		this.siteTypeUid = siteTypeUid;
	}
	public String getSiteTypeName() {
		return siteTypeName;
	}
	public void setSiteTypeName(String siteTypeName) {
		this.siteTypeName = siteTypeName;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("SiteTypesDto [siteTypeUid=");
		builder.append(siteTypeUid);
		builder.append(", siteTypeName=");
		builder.append(siteTypeName);
		builder.append("]");
		return builder.toString();
	}
	
	
}
