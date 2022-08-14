package com.nadaena.vo;

public class MyChallengeVo {
	
	//필드
	int userClgNo;
	int challengeNo;
	int userNo;
	String myChallengeDate;
	int payment;
	int founder;
	int state;
	int achievement;
	
	
	//생성사
	public MyChallengeVo() {
		super();
	}
	
	
	public MyChallengeVo(int userClgNo, int challengeNo, int userNo, String myChallengeDate, int payment, int founder, int state, int achievement) {
		super();
		this.userClgNo = userClgNo;
		this.challengeNo = challengeNo;
		this.userNo = userNo;
		this.myChallengeDate = myChallengeDate;
		this.payment = payment;
		this.founder = founder;
		this.state = state;
		this.achievement = achievement;
	}



	//GS
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



	
	//일반	
	@Override
	public String toString() {
		return "MyChallengeVo [userClgNo=" + userClgNo + ", challengeNo=" + challengeNo + ", userNo=" + userNo + ", myChallengeDate=" + myChallengeDate + ", payment=" + payment + ", founder=" + founder + ", state=" + state + ", achievement=" + achievement + "]";
	}
}
