package com.nadaena.vo;

public class MRVo {
	
	private int reviewNo;
	private int challengeNo;
	private int userNo;
	private String reviewImg;
	private String reviewContent;
	private String reviewDate;
	private String nickname;
	private String clgTitle;
	public MRVo() {
		super();
	}
	public MRVo(int reviewNo, int challengeNo, int userNo, String reviewImg, String reviewContent, String reviewDate, String nickname, String clgTitle) {
		super();
		this.reviewNo = reviewNo;
		this.challengeNo = challengeNo;
		this.userNo = userNo;
		this.reviewImg = reviewImg;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
		this.nickname = nickname;
		this.clgTitle = clgTitle;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public int getChallengeNo() {
		return challengeNo;
	}
	public void setChallengeNo(int challengeNo) {
		this.challengeNo = challengeNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getReviewImg() {
		return reviewImg;
	}
	public void setReviewImg(String reviewImg) {
		this.reviewImg = reviewImg;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public String getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getClgTitle() {
		return clgTitle;
	}
	public void setClgTitle(String clgTitle) {
		this.clgTitle = clgTitle;
	}
	@Override
	public String toString() {
		return "MRVo [reviewNo=" + reviewNo + ", challengeNo=" + challengeNo + ", userNo=" + userNo + ", reviewImg=" + reviewImg + ", reviewContent=" + reviewContent + ", reviewDate=" + reviewDate + ", nickname=" + nickname + ", clgTitle=" + clgTitle + "]";
	}
	
	
}