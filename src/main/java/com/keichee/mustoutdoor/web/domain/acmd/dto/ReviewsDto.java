package com.keichee.mustoutdoor.web.domain.acmd.dto;

public class ReviewsDto {

	private String reviewUid;
	private String acmdUid;
	private String reviewCtnt;
	private String userId;
	private String writeDttm;
	private String reviewScore;
	
	public String getReviewUid() {
		return reviewUid;
	}
	public void setReviewUid(String reviewUid) {
		this.reviewUid = reviewUid;
	}
	public String getAcmdUid() {
		return acmdUid;
	}
	public void setAcmdUid(String acmdUid) {
		this.acmdUid = acmdUid;
	}
	public String getReviewCtnt() {
		return reviewCtnt;
	}
	public void setReviewCtnt(String reviewCtnt) {
		this.reviewCtnt = reviewCtnt;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getWriteDttm() {
		return writeDttm;
	}
	public void setWriteDttm(String writeDttm) {
		this.writeDttm = writeDttm;
	}
	public String getReviewScore() {
		return reviewScore;
	}
	public void setReviewScore(String reviewScore) {
		this.reviewScore = reviewScore;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ReviewsDto [reviewUid=");
		builder.append(reviewUid);
		builder.append(", acmdUid=");
		builder.append(acmdUid);
		builder.append(", reviewCtnt=");
		builder.append(reviewCtnt);
		builder.append(", userId=");
		builder.append(userId);
		builder.append(", writeDttm=");
		builder.append(writeDttm);
		builder.append(", reviewScore=");
		builder.append(reviewScore);
		builder.append("]");
		return builder.toString();
	}
}
