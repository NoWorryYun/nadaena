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
	private int clgLevel;
	private int clgGroup;
	private String startday;
	private String endday;
	private String yesterday;
	private String bookmarkNo;
	private String bookmarkDate;
	private String nickname;
	private int clgCnt;
	public MyVo() {
		super();
	}
	public MyVo(int userClgNo, int challengeNo, int userNo, String myChallengeDate, int payment, int founder, int state, int achievement, String clgTitle, String img, String regDate, int recruitment, int period, int clgLevel, int clgGroup, String startday, String endday,
			String yesterday, String bookmarkNo, String bookmarkDate, String nickname, int clgCnt) {
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
		this.clgLevel = clgLevel;
		this.clgGroup = clgGroup;
		this.startday = startday;
		this.endday = endday;
		this.yesterday = yesterday;
		this.bookmarkNo = bookmarkNo;
		this.bookmarkDate = bookmarkDate;
		this.nickname = nickname;
		this.clgCnt = clgCnt;
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
	public int getClgLevel() {
		return clgLevel;
	}
	public void setClgLevel(int clgLevel) {
		this.clgLevel = clgLevel;
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
	public String getBookmarkNo() {
		return bookmarkNo;
	}
	public void setBookmarkNo(String bookmarkNo) {
		this.bookmarkNo = bookmarkNo;
	}
	public String getBookmarkDate() {
		return bookmarkDate;
	}
	public void setBookmarkDate(String bookmarkDate) {
		this.bookmarkDate = bookmarkDate;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getClgCnt() {
		return clgCnt;
	}
	public void setClgCnt(int clgCnt) {
		this.clgCnt = clgCnt;
	}
	@Override
	public String toString() {
		return "MyVo [userClgNo=" + userClgNo + ", challengeNo=" + challengeNo + ", userNo=" + userNo + ", myChallengeDate=" + myChallengeDate + ", payment=" + payment + ", founder=" + founder + ", state=" + state + ", achievement=" + achievement + ", clgTitle=" + clgTitle
				+ ", Img=" + Img + ", regDate=" + regDate + ", recruitment=" + recruitment + ", period=" + period + ", clgLevel=" + clgLevel + ", clgGroup=" + clgGroup + ", startday=" + startday + ", endday=" + endday + ", yesterday=" + yesterday + ", bookmarkNo=" + bookmarkNo
				+ ", bookmarkDate=" + bookmarkDate + ", nickname=" + nickname + ", clgCnt=" + clgCnt + "]";
	}

	
}