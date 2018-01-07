package com.keichee.mustoutdoor.web.domain.acmd.dto;

public class SpecialAmenitiesDto {

	private String roomUid;
	private String specialAmnyName;
	private String specialAmnyDesc;
	
	public String getRoomUid() {
		return roomUid;
	}
	public void setRoomUid(String roomUid) {
		this.roomUid = roomUid;
	}
	public String getSpecialAmnyName() {
		return specialAmnyName;
	}
	public void setSpecialAmnyName(String specialAmnyName) {
		this.specialAmnyName = specialAmnyName;
	}
	public String getSpecialAmnyDesc() {
		return specialAmnyDesc;
	}
	public void setSpecialAmnyDesc(String specialAmnyDesc) {
		this.specialAmnyDesc = specialAmnyDesc;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("SpecialAmenitiesDto [roomUid=");
		builder.append(roomUid);
		builder.append(", specialAmnyName=");
		builder.append(specialAmnyName);
		builder.append(", specialAmnyDesc=");
		builder.append(specialAmnyDesc);
		builder.append("]");
		return builder.toString();
	}
	
	
}
