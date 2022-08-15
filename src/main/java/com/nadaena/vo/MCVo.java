package com.nadaena.vo;

public class MCVo {
	
	//필드
	private int userClgNo;
	private int challengeNo;
	private int userNo;
	private String myChallengeDate;
	private int payment;
	private int founder;
	private int state;
	private int achievement;
	private String clgTitle;
	private String Img;
	private String regDate;
	private String recruitment;
	private String period;
	private String level;
	public MCVo() {
		super();
	}
	public MCVo(int userClgNo, int challengeNo, int userNo, String myChallengeDate, int payment, int founder, int state, int achievement, String clgTitle, String img, String regDate, String recruitment, String period, String level) {
		super();
		this.userClgNo = userClgNo;
		this.challengeNo = challengeNo;
		this.userNo = userNo;
		this.myChallengeDate = myChallengeDate;
		this.payment = payment;
		this.founder = founder;
		this.state = state;
		this.achievement = achievement;
		this.clgTitle = clgTitle;
		Img = img;
		this.regDate = regDate;
		this.recruitment = recruitment;
		this.period = period;
		this.level = level;
	}
	public int getUserClgNo() {
		return userClgNo;
	}
	public void setUserClgNo(int userClgNo) {
		this.userClgNo = userClgNo;
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
	public String getMyChallengeDate() {
		return myChallengeDate;
	}
	public void setMyChallengeDate(String myChallengeDate) {
		this.myChallengeDate = myChallengeDate;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public int getFounder() {
		return founder;
	}
	public void setFounder(int founder) {
		this.founder = founder;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getAchievement() {
		return achievement;
	}
	public void setAchievement(int achievement) {
		this.achievement = achievement;
	}
	public String getClgTitle() {
		return clgTitle;
	}
	public void setClgTitle(String clgTitle) {
		this.clgTitle = clgTitle;
	}
	public String getImg() {
		return Img;
	}
	public void setImg(String img) {
		Img = img;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getRecruitment() {
		return recruitment;
	}
	public void setRecruitment(String recruitment) {
		this.recruitment = recruitment;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	@Override
	public String toString() {
		return "MCVo [userClgNo=" + userClgNo + ", challengeNo=" + challengeNo + ", userNo=" + userNo + ", myChallengeDate=" + myChallengeDate + ", payment=" + payment + ", founder=" + founder + ", state=" + state + ", achievement=" + achievement + ", clgTitle=" + clgTitle
				+ ", Img=" + Img + ", regDate=" + regDate + ", recruitment=" + recruitment + ", period=" + period + ", level=" + level + "]";
	}
	
	
	
	
	
}
