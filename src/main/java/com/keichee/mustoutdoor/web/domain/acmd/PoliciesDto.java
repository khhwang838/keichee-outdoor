package com.keichee.mustoutdoor.web.domain.acmd;

public class PoliciesDto {

	private String acmdUid;
	private String chkinTime;
	private String chkoutTime;
	private String immdtCfrmYn;
	private String cfrmReqTime;
	private String cfrmReqTimeMsg;
	private String rsrvAbleDays;
	private String rsrvAbleDaysMsg;
	
	public String getAcmdUid() {
		return acmdUid;
	}
	public void setAcmdUid(String acmdUid) {
		this.acmdUid = acmdUid;
	}
	public String getChkinTime() {
		return chkinTime;
	}
	public void setChkinTime(String chkinTime) {
		this.chkinTime = chkinTime;
	}
	public String getChkoutTime() {
		return chkoutTime;
	}
	public void setChkoutTime(String chkoutTime) {
		this.chkoutTime = chkoutTime;
	}
	public String getImmdtCfrmYn() {
		return immdtCfrmYn;
	}
	public void setImmdtCfrmYn(String immdtCfrmYn) {
		this.immdtCfrmYn = immdtCfrmYn;
	}
	public String getCfrmReqTime() {
		return cfrmReqTime;
	}
	public void setCfrmReqTime(String cfrmReqTime) {
		this.cfrmReqTime = cfrmReqTime;
	}
	public String getCfrmReqTimeMsg() {
		return cfrmReqTimeMsg;
	}
	public void setCfrmReqTimeMsg(String cfrmReqTimeMsg) {
		this.cfrmReqTimeMsg = cfrmReqTimeMsg;
	}
	public String getRsrvAbleDays() {
		return rsrvAbleDays;
	}
	public void setRsrvAbleDays(String rsrvAbleDays) {
		this.rsrvAbleDays = rsrvAbleDays;
	}
	public String getRsrvAbleDaysMsg() {
		return rsrvAbleDaysMsg;
	}
	public void setRsrvAbleDaysMsg(String rsrvAbleDaysMsg) {
		this.rsrvAbleDaysMsg = rsrvAbleDaysMsg;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("PoliciesDto [acmdUid=");
		builder.append(acmdUid);
		builder.append(", chkinTime=");
		builder.append(chkinTime);
		builder.append(", chkoutTime=");
		builder.append(chkoutTime);
		builder.append(", immdtCfrmYn=");
		builder.append(immdtCfrmYn);
		builder.append(", cfrmReqTime=");
		builder.append(cfrmReqTime);
		builder.append(", cfrmReqTimeMsg=");
		builder.append(cfrmReqTimeMsg);
		builder.append(", rsrvAbleDays=");
		builder.append(rsrvAbleDays);
		builder.append(", rsrvAbleDaysMsg=");
		builder.append(rsrvAbleDaysMsg);
		builder.append("]");
		return builder.toString();
	}
	
}
