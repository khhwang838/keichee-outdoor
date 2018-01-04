package com.keichee.mustoutdoor.web.domain.acmd;

public class AccommodationImagesDto {

	private String acmdUid;
	private String imgUrl;
	private String imgTitle;
	private int imgNo;
	
	public String getAcmdUid() {
		return acmdUid;
	}
	public void setAcmdUid(String acmdUid) {
		this.acmdUid = acmdUid;
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
	public int getImgNo() {
		return imgNo;
	}
	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("AccommodationImagesDto [acmdUid=");
		builder.append(acmdUid);
		builder.append(", imgUrl=");
		builder.append(imgUrl);
		builder.append(", imgTitle=");
		builder.append(imgTitle);
		builder.append(", imgNo=");
		builder.append(imgNo);
		builder.append("]");
		return builder.toString();
	}
	
	
}
