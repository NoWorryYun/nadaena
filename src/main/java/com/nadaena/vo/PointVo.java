package com.nadaena.vo;

public class PointVo {
	
	//필드
	private int pointNo;
	private int userNo;
	private int pointGroup;
	private int charge;
	private int amount;
	private String pointDate;
	private String challengeSource;
	private String productSource;
	private String pointMemo;
	private int rn;
	public PointVo() {
		super();
	}
	public PointVo(int pointNo, int userNo, int pointGroup, int charge, int amount, String pointDate, String challengeSource, String productSource, String pointMemo, int rn) {
		super();
		this.pointNo = pointNo;
		this.userNo = userNo;
		this.pointGroup = pointGroup;
		this.charge = charge;
		this.amount = amount;
		this.pointDate = pointDate;
		this.challengeSource = challengeSource;
		this.productSource = productSource;
		this.pointMemo = pointMemo;
		this.rn = rn;
	}
	public int getPointNo() {
		return pointNo;
	}
	public void setPointNo(int pointNo) {
		this.pointNo = pointNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
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
	public String getChallengeSource() {
		return challengeSource;
	}
	public void setChallengeSource(String challengeSource) {
		this.challengeSource = challengeSource;
	}
	public String getProductSource() {
		return productSource;
	}
	public void setProductSource(String productSource) {
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
	@Override
	public String toString() {
		return "PointVo [pointNo=" + pointNo + ", userNo=" + userNo + ", pointGroup=" + pointGroup + ", charge=" + charge + ", amount=" + amount + ", pointDate=" + pointDate + ", challengeSource=" + challengeSource + ", productSource=" + productSource + ", pointMemo=" + pointMemo
				+ ", rn=" + rn + "]";
	}
	
}
