package com.keichee.mustoutdoor.web.domain.acmd.dto;

public class SeasonDto {

	private String acmdUid;
	private String seasonCd;
	private String seasonStartDate;
	private String seasonEndDate;
	
	public String getAcmdUid() {
		return acmdUid;
	}
	public void setAcmdUid(String acmdUid) {
		this.acmdUid = acmdUid;
	}
	public String getSeasonCd() {
		return seasonCd;
	}
	public void setSeasonCd(String seasonCd) {
		this.seasonCd = seasonCd;
	}
	public String getSeasonStartDate() {
		return seasonStartDate;
	}
	public void setSeasonStartDate(String seasonStartDate) {
		this.seasonStartDate = seasonStartDate;
	}
	public String getSeasonEndDate() {
		return seasonEndDate;
	}
	public void setSeasonEndDate(String seasonEndDate) {
		this.seasonEndDate = seasonEndDate;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("SeasonDto [acmdUid=");
		builder.append(acmdUid);
		builder.append(", seasonCd=");
		builder.append(seasonCd);
		builder.append(", seasonStartDate=");
		builder.append(seasonStartDate);
		builder.append("]");
		return builder.toString();
	}
	
	
}
