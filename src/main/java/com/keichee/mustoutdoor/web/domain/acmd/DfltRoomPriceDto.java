package com.keichee.mustoutdoor.web.domain.acmd;

public class DfltRoomPriceDto {

	private String roomUid;
	private String seasonCatCd;
	private String sunPrice;
	private String monPrice;
	private String tuePrice;
	private String wedPrice;
	private String thuPrice;
	private String friPrice;
	private String satPrice;
	public String getRoomUid() {
		return roomUid;
	}
	public void setRoomUid(String roomUid) {
		this.roomUid = roomUid;
	}
	public String getSeasonCatCd() {
		return seasonCatCd;
	}
	public void setSeasonCatCd(String seasonCatCd) {
		this.seasonCatCd = seasonCatCd;
	}
	public String getSunPrice() {
		return sunPrice;
	}
	public void setSunPrice(String sunPrice) {
		this.sunPrice = sunPrice;
	}
	public String getMonPrice() {
		return monPrice;
	}
	public void setMonPrice(String monPrice) {
		this.monPrice = monPrice;
	}
	public String getTuePrice() {
		return tuePrice;
	}
	public void setTuePrice(String tuePrice) {
		this.tuePrice = tuePrice;
	}
	public String getWedPrice() {
		return wedPrice;
	}
	public void setWedPrice(String wedPrice) {
		this.wedPrice = wedPrice;
	}
	public String getThuPrice() {
		return thuPrice;
	}
	public void setThuPrice(String thuPrice) {
		this.thuPrice = thuPrice;
	}
	public String getFriPrice() {
		return friPrice;
	}
	public void setFriPrice(String friPrice) {
		this.friPrice = friPrice;
	}
	public String getSatPrice() {
		return satPrice;
	}
	public void setSatPrice(String satPrice) {
		this.satPrice = satPrice;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("DfltRoomPriceDto [roomUid=");
		builder.append(roomUid);
		builder.append(", seasonCatCd=");
		builder.append(seasonCatCd);
		builder.append(", sunPrice=");
		builder.append(sunPrice);
		builder.append(", monPrice=");
		builder.append(monPrice);
		builder.append(", tuePrice=");
		builder.append(tuePrice);
		builder.append(", wedPrice=");
		builder.append(wedPrice);
		builder.append(", thuPrice=");
		builder.append(thuPrice);
		builder.append(", friPrice=");
		builder.append(friPrice);
		builder.append(", satPrice=");
		builder.append(satPrice);
		builder.append("]");
		return builder.toString();
	}

}
