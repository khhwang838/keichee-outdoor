package com.keichee.mustoutdoor.web.domain.acmd.dto;

public class RoomsDto {

	private String roomUid;
	private String roomName;
	private String roomDesc;
	private String imgUrl;
	private String siteTypeUid;
	private String roomCnt;
	private String maxPplCnt;
	private String extraPplCnt;
	private String adultExtraPrice;
	private String childExtraPrice;
	private String infantExtraPrice;
	private String minAcmdDays;
	private String bedCnt;
	private String roomSize;
	private String acmdUid;
	private String roomTypeUid;
	
	public String getRoomUid() {
		return roomUid;
	}
	public void setRoomUid(String roomUid) {
		this.roomUid = roomUid;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getRoomDesc() {
		return roomDesc;
	}
	public void setRoomDesc(String roomDesc) {
		this.roomDesc = roomDesc;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public String getSiteTypeUid() {
		return siteTypeUid;
	}
	public void setSiteTypeUid(String siteTypeUid) {
		this.siteTypeUid = siteTypeUid;
	}
	public String getRoomCnt() {
		return roomCnt;
	}
	public void setRoomCnt(String roomCnt) {
		this.roomCnt = roomCnt;
	}
	public String getMaxPplCnt() {
		return maxPplCnt;
	}
	public void setMaxPplCnt(String maxPplCnt) {
		this.maxPplCnt = maxPplCnt;
	}
	public String getExtraPplCnt() {
		return extraPplCnt;
	}
	public void setExtraPplCnt(String extraPplCnt) {
		this.extraPplCnt = extraPplCnt;
	}
	public String getAdultExtraPrice() {
		return adultExtraPrice;
	}
	public void setAdultExtraPrice(String adultExtraPrice) {
		this.adultExtraPrice = adultExtraPrice;
	}
	public String getChildExtraPrice() {
		return childExtraPrice;
	}
	public void setChildExtraPrice(String childExtraPrice) {
		this.childExtraPrice = childExtraPrice;
	}
	public String getInfantExtraPrice() {
		return infantExtraPrice;
	}
	public void setInfantExtraPrice(String infantExtraPrice) {
		this.infantExtraPrice = infantExtraPrice;
	}
	public String getMinAcmdDays() {
		return minAcmdDays;
	}
	public void setMinAcmdDays(String minAcmdDays) {
		this.minAcmdDays = minAcmdDays;
	}
	public String getBedCnt() {
		return bedCnt;
	}
	public void setBedCnt(String bedCnt) {
		this.bedCnt = bedCnt;
	}
	public String getRoomSize() {
		return roomSize;
	}
	public void setRoomSize(String roomSize) {
		this.roomSize = roomSize;
	}
	public String getAcmdUid() {
		return acmdUid;
	}
	public void setAcmdUid(String acmdUid) {
		this.acmdUid = acmdUid;
	}
	public String getRoomTypeUid() {
		return roomTypeUid;
	}
	public void setRoomTypeUid(String roomTypeUid) {
		this.roomTypeUid = roomTypeUid;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("RoomsDto [roomUid=");
		builder.append(roomUid);
		builder.append(", roomName=");
		builder.append(roomName);
		builder.append(", roomDesc=");
		builder.append(roomDesc);
		builder.append(", imgUrl=");
		builder.append(imgUrl);
		builder.append(", siteTypeUid=");
		builder.append(siteTypeUid);
		builder.append(", roomCnt=");
		builder.append(roomCnt);
		builder.append(", maxPplCnt=");
		builder.append(maxPplCnt);
		builder.append(", extraPplCnt=");
		builder.append(extraPplCnt);
		builder.append(", adultExtraPrice=");
		builder.append(adultExtraPrice);
		builder.append(", childExtraPrice=");
		builder.append(childExtraPrice);
		builder.append(", infantExtraPrice=");
		builder.append(infantExtraPrice);
		builder.append(", minAcmdDays=");
		builder.append(minAcmdDays);
		builder.append(", bedCnt=");
		builder.append(bedCnt);
		builder.append(", roomSize=");
		builder.append(roomSize);
		builder.append(", acmdUid=");
		builder.append(acmdUid);
		builder.append(", roomTypeUid=");
		builder.append(roomTypeUid);
		builder.append("]");
		return builder.toString();
	}
	
}
