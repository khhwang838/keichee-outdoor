package com.keichee.mustoutdoor.web.domain.acmd;

public class DiscountRatesDto {

	private String roomUid;
	private String discountTypeCd;
	private int discountRate;
	private String discountStartDate;
	private String discountEndDate;
	private String discountApplyWeekDay;
	
	public String getRoomUid() {
		return roomUid;
	}
	public void setRoomUid(String roomUid) {
		this.roomUid = roomUid;
	}
	public String getDiscountTypeCd() {
		return discountTypeCd;
	}
	public void setDiscountTypeCd(String discountTypeCd) {
		this.discountTypeCd = discountTypeCd;
	}
	public int getDiscountRate() {
		return discountRate;
	}
	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}
	public String getDiscountStartDate() {
		return discountStartDate;
	}
	public void setDiscountStartDate(String discountStartDate) {
		this.discountStartDate = discountStartDate;
	}
	public String getDiscountEndDate() {
		return discountEndDate;
	}
	public void setDiscountEndDate(String discountEndDate) {
		this.discountEndDate = discountEndDate;
	}
	public String getDiscountApplyWeekDay() {
		return discountApplyWeekDay;
	}
	public void setDiscountApplyWeekDay(String discountApplyWeekDay) {
		this.discountApplyWeekDay = discountApplyWeekDay;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("DiscountRatesDto [roomUid=");
		builder.append(roomUid);
		builder.append(", discountTypeCd=");
		builder.append(discountTypeCd);
		builder.append(", discountRate=");
		builder.append(discountRate);
		builder.append(", discountStartDate=");
		builder.append(discountStartDate);
		builder.append(", discountEndDate=");
		builder.append(discountEndDate);
		builder.append(", discountApplyWeekDay=");
		builder.append(discountApplyWeekDay);
		builder.append("]");
		return builder.toString();
	}
	
}
