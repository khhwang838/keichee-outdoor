package com.keichee.mustoutdoor.web.domain.acmd.dto;

public class RoomImagesDto {

	private String imgUid;
	private String roomUid;
	private String imgUrl;
	private String imgTitle;
	
	public String getImgUid() {
		return imgUid;
	}
	public void setImgUid(String imgUid) {
		this.imgUid = imgUid;
	}
	public String getRoomUid() {
		return roomUid;
	}
	public void setRoomUid(String roomUid) {
		this.roomUid = roomUid;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public String getImgTitle() {
		return imgTitle;
	}
	public void setImgTitle(String imgTitle) {
		this.imgTitle = imgTitle;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("RoomImagesDto [imgUid=");
		builder.append(imgUid);
		builder.append(", roomUid=");
		builder.append(roomUid);
		builder.append(", imgUrl=");
		builder.append(imgUrl);
		builder.append(", imgTitle=");
		builder.append(imgTitle);
		builder.append("]");
		return builder.toString();
	}
	
	
}
