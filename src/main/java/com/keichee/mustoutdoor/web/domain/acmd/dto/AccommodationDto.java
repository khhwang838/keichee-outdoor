package com.keichee.mustoutdoor.web.domain.acmd.dto;

import com.keichee.mustoutdoor.web.domain.acmd.UIAccommodation;

public class AccommodationDto {

	private String acmdUid;
	private String acmdName;
	private String acmdDesc;
	private String email;
	private String contact;
	private String imgUrl;
	private String acmdAddr;
	private String acmdAltd;
	private String acmdLgtd;
	private String direction;
	private String acmdAvgScore;
	private String cityUid;
	private String crcNationCd;
	private String cancelPlcyUid;
	
	public AccommodationDto() {}
	public AccommodationDto(UIAccommodation ui) {
		this.acmdUid = ui.getAcmd().getAcmdUid();
		this.acmdName = ui.getAcmd().getAcmdName();
		this.acmdDesc = ui.getAcmd().getAcmdDesc();
		this.email = ui.getAcmd().getEmail();
		this.contact = ui.getAcmd().getContact();
		this.acmdAddr = ui.getAcmd().getAcmdAddr();
		this.acmdAltd = ui.getAcmd().getAcmdAltd();
		this.acmdLgtd = ui.getAcmd().getAcmdLgtd();
		this.direction = ui.getAcmd().getDirection();
		this.crcNationCd = ui.getAcmd().getCrcNationCd();
	}
	public String getAcmdUid() {
		return acmdUid;
	}
	public void setAcmdUid(String acmdUid) {
		this.acmdUid = acmdUid;
	}
	public String getAcmdName() {
		return acmdName;
	}
	public void setAcmdName(String acmdName) {
		this.acmdName = acmdName;
	}
	public String getAcmdDesc() {
		return acmdDesc;
	}
	public void setAcmdDesc(String acmdDesc) {
		this.acmdDesc = acmdDesc;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public String getAcmdAddr() {
		return acmdAddr;
	}
	public void setAcmdAddr(String acmdAddr) {
		this.acmdAddr = acmdAddr;
	}
	public String getAcmdAltd() {
		return acmdAltd;
	}
	public void setAcmdAltd(String acmdAltd) {
		this.acmdAltd = acmdAltd;
	}
	public String getAcmdLgtd() {
		return acmdLgtd;
	}
	public void setAcmdLgtd(String acmdLgtd) {
		this.acmdLgtd = acmdLgtd;
	}
	public String getDirection() {
		return direction;
	}
	public void setDirection(String direction) {
		this.direction = direction;
	}
	public String getAcmdAvgScore() {
		return acmdAvgScore;
	}
	public void setAcmdAvgScore(String acmdAvgScore) {
		this.acmdAvgScore = acmdAvgScore;
	}
	public String getCityUid() {
		return cityUid;
	}
	public void setCityUid(String cityUid) {
		this.cityUid = cityUid;
	}
	public String getCrcNationCd() {
		return crcNationCd;
	}
	public void setCrcNationCd(String crcNationCd) {
		this.crcNationCd = crcNationCd;
	}
	public String getCancelPlcyUid() {
		return cancelPlcyUid;
	}
	public void setCancelPlcyUid(String cancelPlcyUid) {
		this.cancelPlcyUid = cancelPlcyUid;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("AccommodationDto [acmdUid=");
		builder.append(acmdUid);
		builder.append(", acmdName=");
		builder.append(acmdName);
		builder.append(", acmdDesc=");
		builder.append(acmdDesc);
		builder.append(", email=");
		builder.append(email);
		builder.append(", contact=");
		builder.append(contact);
		builder.append(", imgUrl=");
		builder.append(imgUrl);
		builder.append(", acmdAddr=");
		builder.append(acmdAddr);
		builder.append(", acmdAltd=");
		builder.append(acmdAltd);
		builder.append(", acmdLgtd=");
		builder.append(acmdLgtd);
		builder.append(", direction=");
		builder.append(direction);
		builder.append(", acmdAvgScore=");
		builder.append(acmdAvgScore);
		builder.append(", cityUid=");
		builder.append(cityUid);
		builder.append(", crcNationCd=");
		builder.append(crcNationCd);
		builder.append(", cancelPlcyUid=");
		builder.append(cancelPlcyUid);
		builder.append("]");
		return builder.toString();
	}
	
}
