package com.nadaena.vo;

public class MyVo {
	
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
	private int recruitment;
	private int period;
	private int level;
	private int clgGroup;
	private String startday;
	private String endday;
	private String yesterday;
	public MyVo() {
		super();
	}
	public MyVo(int userClgNo, int challengeNo, int userNo, String myChallengeDate, int payment, int founder, int state, int achievement, String clgTitle, String img, String regDate, int recruitment, int period, int level, int clgGroup, String startday, String endday,
			String yesterday) {
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
		this.clgGroup = clgGroup;
		this.startday = startday;
		this.endday = endday;
		this.yesterday = yesterday;
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
	public int getRecruitment() {
		return recruitment;
	}
	public void setRecruitment(int recruitment) {
		this.recruitment = recruitment;
	}
	public int getPeriod() {
		return period;
	}
	public void setPeriod(int period) {
		this.period = period;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getClgGroup() {
		return clgGroup;
	}
	public void setClgGroup(int clgGroup) {
		this.clgGroup = clgGroup;
	}
	public String getStartday() {
		return startday;
	}
	public void setStartday(String startday) {
		this.startday = startday;
	}
	public String getEndday() {
		return endday;
	}
	public void setEndday(String endday) {
		this.endday = endday;
	}
	public String getYesterday() {
		return yesterday;
	}
	public void setYesterday(String yesterday) {
		this.yesterday = yesterday;
	}
	@Override
	public String toString() {
		return "MyVo [userClgNo=" + userClgNo + ", challengeNo=" + challengeNo + ", userNo=" + userNo + ", myChallengeDate=" + myChallengeDate + ", payment=" + payment + ", founder=" + founder + ", state=" + state + ", achievement=" + achievement + ", clgTitle=" + clgTitle
				+ ", Img=" + Img + ", regDate=" + regDate + ", recruitment=" + recruitment + ", period=" + period + ", level=" + level + ", clgGroup=" + clgGroup + ", startday=" + startday + ", endday=" + endday + ", yesterday=" + yesterday + "]";
	}
	
	
	
	
	
}