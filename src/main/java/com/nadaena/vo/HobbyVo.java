package com.nadaena.vo;

public class HobbyVo {
	
	private int myinterestNo; 
	private int userNo;
	private int interestNo;

	public HobbyVo() {
		super();
	}

	public HobbyVo(int myinterestNo, int userNo,int interestNo) {
		super();
		this.myinterestNo = myinterestNo;
		this.userNo = userNo;
		this.interestNo = interestNo;
	}

	public int getMyinterestNo() {
		return myinterestNo;
	}

	public void setMyinterestNo(int myinterestNo) {
		this.myinterestNo = myinterestNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getInterestNo() {
		return interestNo;
	}

	public void setInterestNo(int interestNo) {
		this.interestNo = interestNo;
	}

	

}
