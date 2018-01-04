package com.keichee.mustoutdoor.web.domain.acmd;

public class RoomTypesDto {

	private String roomTypeUid;
	private String roomTypeName;
	private String roomTypeImg;
	
	public String getRoomTypeUid() {
		return roomTypeUid;
	}
	public void setRoomTypeUid(String roomTypeUid) {
		this.roomTypeUid = roomTypeUid;
	}
	public String getRoomTypeName() {
		return roomTypeName;
	}
	public void setRoomTypeName(String roomTypeName) {
		this.roomTypeName = roomTypeName;
	}
	public String getRoomTypeImg() {
		return roomTypeImg;
	}
	public void setRoomTypeImg(String roomTypeImg) {
		this.roomTypeImg = roomTypeImg;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("RoomTypesDto [roomTypeUid=");
		builder.append(roomTypeUid);
		builder.append(", roomTypeName=");
		builder.append(roomTypeName);
		builder.append(", roomTypeImg=");
		builder.append(roomTypeImg);
		builder.append("]");
		return builder.toString();
	}
}
