package com.nadaena.vo;

import org.springframework.web.multipart.MultipartFile;

public class ReviewVo {
	
	private int reviewNo;
	private int challengeNo;
	private int userNo;
	private MultipartFile reviewImg;
	private String reviewContent;
	private String reviewDate;
	private String nickname;
	private String clgTitle;
	private int state;
	
	public ReviewVo() {
		super();
	}
	
	public ReviewVo(int reviewNo, int challengeNo, int userNo, MultipartFile reviewImg, String reviewContent, String reviewDate, String nickname, String clgTitle, int state) {
		super();
		this.reviewNo = reviewNo;
		this.challengeNo = challengeNo;
		this.userNo = userNo;
		this.reviewImg = reviewImg;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
		this.nickname = nickname;
		this.clgTitle = clgTitle;
		this.state = state;
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
	public MultipartFile getReviewImg() {
		return reviewImg;
	}
	public void setReviewImg(MultipartFile reviewImg) {
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
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "ReviewVo [reviewNo=" + reviewNo + ", challengeNo=" + challengeNo + ", userNo=" + userNo + ", reviewImg=" + reviewImg + ", reviewContent=" + reviewContent + ", reviewDate=" + reviewDate + ", nickname=" + nickname + ", clgTitle=" + clgTitle + ", state=" + state + "]";
	}
	
	
	
}
