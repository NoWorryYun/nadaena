package com.nadaena.vo;

public class SearchVo {

	private String keyword;
	private int interestNo;
	private String orderType;
	
	
	private int startRnum;
	private int endRnum;
	
	
	public SearchVo() {
		super();
	}
	public SearchVo(String keyword, int interestNo, String orderType, int startRnum, int endRnum) {
		super();
		this.keyword = keyword;
		this.interestNo = interestNo;
		this.orderType = orderType;
		this.startRnum = startRnum;
		this.endRnum = endRnum;
	}
	
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getInterestNo() {
		return interestNo;
	}
	public void setInterestNo(int interestNo) {
		this.interestNo = interestNo;
	}
	public String getOrderType() {
		return orderType;
	}
	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}
	public int getStartRnum() {
		return startRnum;
	}
	public void setStartRnum(int startRnum) {
		this.startRnum = startRnum;
	}
	public int getEndRnum() {
		return endRnum;
	}
	public void setEndRnum(int endRnum) {
		this.endRnum = endRnum;
	}
	
	
	@Override
	public String toString() {
		return "SearchVo [keyword=" + keyword + ", interestNo=" + interestNo + ", orderType=" + orderType + ", startRnum=" + startRnum + ", endRnum=" + endRnum + "]";
	}

	
	
		
}