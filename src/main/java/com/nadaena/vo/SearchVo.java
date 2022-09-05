package com.nadaena.vo;

public class SearchVo {

	private String keyword;
	private String category;

	private int challengeNo;
	private int interestNo;
	private String orderType;

	private int crtPage = 1;
	private int startRnum;
	private int endRnum;

	public SearchVo() {
		super();
	}

	public SearchVo(String keyword, String category, int challengeNo, int interestNo, String orderType, int crtPage, int startRnum, int endRnum) {
		super();
		this.keyword = keyword;
		this.category = category;
		this.challengeNo = challengeNo;
		this.interestNo = interestNo;
		this.orderType = orderType;
		this.crtPage = crtPage;
		this.startRnum = startRnum;
		this.endRnum = endRnum;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getChallengeNo() {
		return challengeNo;
	}

	public void setChallengeNo(int challengeNo) {
		this.challengeNo = challengeNo;
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

	public int getCrtPage() {
		return crtPage;
	}

	public void setCrtPage(int crtPage) {
		this.crtPage = crtPage;
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
		return "SearchVo [keyword=" + keyword + ", category=" + category + ", challengeNo=" + challengeNo + ", interestNo=" + interestNo + ", orderType=" + orderType + ", crtPage=" + crtPage + ", startRnum=" + startRnum + ", endRnum=" + endRnum + "]";
	}

}