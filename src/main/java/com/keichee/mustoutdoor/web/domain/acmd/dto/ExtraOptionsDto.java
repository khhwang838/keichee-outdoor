package com.keichee.mustoutdoor.web.domain.acmd.dto;

public class ExtraOptionsDto {

	private String acmdUid;
	private String extraOptUid;
	private String extraOptName;
	private String extraOptDesc;
	private String extraOptPrice;
	private String choiceMaxCnt;
	private String visitPayYn;
	
	public String getAcmdUid() {
		return acmdUid;
	}
	public void setAcmdUid(String acmdUid) {
		this.acmdUid = acmdUid;
	}
	public String getExtraOptUid() {
		return extraOptUid;
	}
	public void setExtraOptUid(String extraOptUid) {
		this.extraOptUid = extraOptUid;
	}
	public String getExtraOptName() {
		return extraOptName;
	}
	public void setExtraOptName(String extraOptName) {
		this.extraOptName = extraOptName;
	}
	public String getExtraOptDesc() {
		return extraOptDesc;
	}
	public void setExtraOptDesc(String extraOptDesc) {
		this.extraOptDesc = extraOptDesc;
	}
	public String getExtraOptPrice() {
		return extraOptPrice;
	}
	public void setExtraOptPrice(String extraOptPrice) {
		this.extraOptPrice = extraOptPrice;
	}
	public String getChoiceMaxCnt() {
		return choiceMaxCnt;
	}
	public void setChoiceMaxCnt(String choiceMaxCnt) {
		this.choiceMaxCnt = choiceMaxCnt;
	}
	public String getVisitPayYn() {
		return visitPayYn;
	}
	public void setVisitPayYn(String visitPayYn) {
		this.visitPayYn = visitPayYn;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ExtraOptionsDto [acmdUid=");
		builder.append(acmdUid);
		builder.append(", extraOptUid=");
		builder.append(extraOptUid);
		builder.append(", extraOptName=");
		builder.append(extraOptName);
		builder.append(", extraOptDesc=");
		builder.append(extraOptDesc);
		builder.append(", extraOptPrice=");
		builder.append(extraOptPrice);
		builder.append(", choiceMaxCnt=");
		builder.append(choiceMaxCnt);
		builder.append(", visitPayYn=");
		builder.append(visitPayYn);
		builder.append("]");
		return builder.toString();
	}
}
