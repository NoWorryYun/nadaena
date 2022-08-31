package com.nadaena.vo;

public class InterestVo {
	private int interestNo;
	private String interestName;
	
	public InterestVo() {
		super();
	} 
	
	public InterestVo(int interestNo, String interestName) {
		this.interestNo=interestNo;
		this.interestName=interestName;
	}

	public int getInterestNo() {
		return interestNo;
	}

	public void setInterestNo(int interestNo) {
		this.interestNo = interestNo;
	}

	public String getInterestName() {
		return interestName;
	}

	public void setInterestName(String interestName) {
		this.interestName = interestName;
	}
	
	
}
