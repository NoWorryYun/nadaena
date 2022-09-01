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
	private int pointNo;
	private int pointGroup;
	private int charge;
	private int amount;
	private String pointDate;
	private int challengeSource;
	private int productSource;
	private String pointMemo;
	private int rn;
	private int clgLevel;
	private int achievement;
	private int payment;
	private int sum;
	private int clgCnt;
	public ReviewVo() {
		super();
	}
	public ReviewVo(int reviewNo, int challengeNo, int userNo, MultipartFile file, String reviewContent, String reviewDate, String nickname, String clgTitle, int state, String reviewImg, String saveName, int pointNo, int pointGroup, int charge, int amount, String pointDate,
			int challengeSource, int productSource, String pointMemo, int rn, int clgLevel, int achievement, int payment, int sum, int clgCnt) {
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
		this.pointNo = pointNo;
		this.pointGroup = pointGroup;
		this.charge = charge;
		this.amount = amount;
		this.pointDate = pointDate;
		this.challengeSource = challengeSource;
		this.productSource = productSource;
		this.pointMemo = pointMemo;
		this.rn = rn;
		this.clgLevel = clgLevel;
		this.achievement = achievement;
		this.payment = payment;
		this.sum = sum;
		this.clgCnt = clgCnt;
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
	public int getPointNo() {
		return pointNo;
	}
	public void setPointNo(int pointNo) {
		this.pointNo = pointNo;
	}
	public int getPointGroup() {
		return pointGroup;
	}
	public void setPointGroup(int pointGroup) {
		this.pointGroup = pointGroup;
	}
	public int getCharge() {
		return charge;
	}
	public void setCharge(int charge) {
		this.charge = charge;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getPointDate() {
		return pointDate;
	}
	public void setPointDate(String pointDate) {
		this.pointDate = pointDate;
	}
	public int getChallengeSource() {
		return challengeSource;
	}
	public void setChallengeSource(int challengeSource) {
		this.challengeSource = challengeSource;
	}
	public int getProductSource() {
		return productSource;
	}
	public void setProductSource(int productSource) {
		this.productSource = productSource;
	}
	public String getPointMemo() {
		return pointMemo;
	}
	public void setPointMemo(String pointMemo) {
		this.pointMemo = pointMemo;
	}
	public int getRn() {
		return rn;
	}
	public void setRn(int rn) {
		this.rn = rn;
	}
	public int getClgLevel() {
		return clgLevel;
	}
	public void setClgLevel(int clgLevel) {
		this.clgLevel = clgLevel;
	}
	public int getAchievement() {
		return achievement;
	}
	public void setAchievement(int achievement) {
		this.achievement = achievement;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public int getClgCnt() {
		return clgCnt;
	}
	public void setClgCnt(int clgCnt) {
		this.clgCnt = clgCnt;
	}
	@Override
	public String toString() {
		return "ReviewVo [reviewNo=" + reviewNo + ", challengeNo=" + challengeNo + ", userNo=" + userNo + ", file=" + file + ", reviewContent=" + reviewContent + ", reviewDate=" + reviewDate + ", nickname=" + nickname + ", clgTitle=" + clgTitle + ", state=" + state
				+ ", reviewImg=" + reviewImg + ", saveName=" + saveName + ", pointNo=" + pointNo + ", pointGroup=" + pointGroup + ", charge=" + charge + ", amount=" + amount + ", pointDate=" + pointDate + ", challengeSource=" + challengeSource + ", productSource=" + productSource
				+ ", pointMemo=" + pointMemo + ", rn=" + rn + ", clgLevel=" + clgLevel + ", achievement=" + achievement + ", payment=" + payment + ", sum=" + sum + ", clgCnt=" + clgCnt + "]";
	}
	

	

	
}
