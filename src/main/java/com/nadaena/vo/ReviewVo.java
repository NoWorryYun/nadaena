package com.nadaena.vo;

import org.springframework.web.multipart.MultipartFile;

public class ReviewVo {
	
	private int reviewNo;
	private int challengeNo;
	private int userNo;
	private MultipartFile file;
	private String reviewContent;
	private String reviewDate;
	private String nickname;
	private String clgTitle;
	private int state;
	private String reviewImg;
	private String saveName;
	public ReviewVo(int reviewNo, int challengeNo, int userNo, MultipartFile file, String reviewContent, String reviewDate, String nickname, String clgTitle, int state, String reviewImg, String saveName) {
		super();
		this.reviewNo = reviewNo;
		this.challengeNo = challengeNo;
		this.userNo = userNo;
		this.file = file;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
		this.nickname = nickname;
		this.clgTitle = clgTitle;
		this.state = state;
		this.reviewImg = reviewImg;
		this.saveName = saveName;
	}
	public ReviewVo() {
		super();
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
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
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
	public String getReviewImg() {
		return reviewImg;
	}
	public void setReviewImg(String reviewImg) {
		this.reviewImg = reviewImg;
	}
	public String getSaveName() {
		return saveName;
	}
	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}
	@Override
	public String toString() {
		return "ReviewVo [reviewNo=" + reviewNo + ", challengeNo=" + challengeNo + ", userNo=" + userNo + ", file=" + file + ", reviewContent=" + reviewContent + ", reviewDate=" + reviewDate + ", nickname=" + nickname + ", clgTitle=" + clgTitle + ", state=" + state
				+ ", reviewImg=" + reviewImg + ", saveName=" + saveName + "]";
	}
	
}
