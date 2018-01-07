package com.keichee.mustoutdoor.web.domain.acmd.dto;

public class RecommendSpotsDto {

	private String acmdUid;
	private String rcmdPlaceUid;
	private String rcmdPlaceName;
	private String rcmdPlaceDesc;
	private String rcmdPlaceImgUrl;
	
	public String getAcmdUid() {
		return acmdUid;
	}
	public void setAcmdUid(String acmdUid) {
		this.acmdUid = acmdUid;
	}
	public String getRcmdPlaceUid() {
		return rcmdPlaceUid;
	}
	public void setRcmdPlaceUid(String rcmdPlaceUid) {
		this.rcmdPlaceUid = rcmdPlaceUid;
	}
	public String getRcmdPlaceName() {
		return rcmdPlaceName;
	}
	public void setRcmdPlaceName(String rcmdPlaceName) {
		this.rcmdPlaceName = rcmdPlaceName;
	}
	public String getRcmdPlaceDesc() {
		return rcmdPlaceDesc;
	}
	public void setRcmdPlaceDesc(String rcmdPlaceDesc) {
		this.rcmdPlaceDesc = rcmdPlaceDesc;
	}
	public String getRcmdPlaceImgUrl() {
		return rcmdPlaceImgUrl;
	}
	public void setRcmdPlaceImgUrl(String rcmdPlaceImgUrl) {
		this.rcmdPlaceImgUrl = rcmdPlaceImgUrl;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("RecommendSpotsDto [acmdUid=");
		builder.append(acmdUid);
		builder.append(", rcmdPlaceUid=");
		builder.append(rcmdPlaceUid);
		builder.append(", rcmdPlaceName=");
		builder.append(rcmdPlaceName);
		builder.append(", rcmdPlaceDesc=");
		builder.append(rcmdPlaceDesc);
		builder.append(", rcmdPlaceImgUrl=");
		builder.append(rcmdPlaceImgUrl);
		builder.append("]");
		return builder.toString();
	}
}
