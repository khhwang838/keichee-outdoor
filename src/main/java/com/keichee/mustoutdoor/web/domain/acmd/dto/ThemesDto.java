package com.keichee.mustoutdoor.web.domain.acmd.dto;

public class ThemesDto {

	private String acmdThemeUid;
	private String acmdUid;
	private String acmdThemeName;
	private String acmdThemeImg;
	
	public String getAcmdThemeUid() {
		return acmdThemeUid;
	}
	public void setAcmdThemeUid(String acmdThemeUid) {
		this.acmdThemeUid = acmdThemeUid;
	}
	public String getAcmdUid() {
		return acmdUid;
	}
	public void setAcmdUid(String acmdUid) {
		this.acmdUid = acmdUid;
	}
	public String getAcmdThemeName() {
		return acmdThemeName;
	}
	public void setAcmdThemeName(String acmdThemeName) {
		this.acmdThemeName = acmdThemeName;
	}
	public String getAcmdThemeImg() {
		return acmdThemeImg;
	}
	public void setAcmdThemeImg(String acmdThemeImg) {
		this.acmdThemeImg = acmdThemeImg;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ThemesDto [acmdThemeUid=");
		builder.append(acmdThemeUid);
		builder.append(", acmdUid=");
		builder.append(acmdUid);
		builder.append(", acmdThemeName=");
		builder.append(acmdThemeName);
		builder.append(", acmdThemeImg=");
		builder.append(acmdThemeImg);
		builder.append("]");
		return builder.toString();
	}
	
}
