package com.keichee.mustoutdoor.web.domain.acmd.dto;

public class DailyRoomInfoDto {

	private String roomUid;
	private String acmdDate;
	private String roomRsvStatus;
	private String roomPrice;
	private String hotdealYn;
	private String memo;
	public String getRoomUid() {
		return roomUid;
	}
	public void setRoomUid(String roomUid) {
		this.roomUid = roomUid;
	}
	public String getAcmdDate() {
		return acmdDate;
	}
	public void setAcmdDate(String acmdDate) {
		this.acmdDate = acmdDate;
	}
	public String getRoomRsvStatus() {
		return roomRsvStatus;
	}
	public void setRoomRsvStatus(String roomRsvStatus) {
		this.roomRsvStatus = roomRsvStatus;
	}
	public String getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(String roomPrice) {
		this.roomPrice = roomPrice;
	}
	public String getHotdealYn() {
		return hotdealYn;
	}
	public void setHotdealYn(String hotdealYn) {
		this.hotdealYn = hotdealYn;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("DailyRoomInfoDto [roomUid=");
		builder.append(roomUid);
		builder.append(", acmdDate=");
		builder.append(acmdDate);
		builder.append(", roomRsvStatus=");
		builder.append(roomRsvStatus);
		builder.append(", roomPrice=");
		builder.append(roomPrice);
		builder.append(", hotdealYn=");
		builder.append(hotdealYn);
		builder.append(", memo=");
		builder.append(memo);
		builder.append("]");
		return builder.toString();
	}
	
}
