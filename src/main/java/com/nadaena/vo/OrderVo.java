package com.nadaena.vo;

public class OrderVo {
	
	private int optionNo;
	private String optionName;
	private int optionPrice;
	private int orderNo;
	private int productNo;
	private int userNo;
	private int orderQuantity;
	private int orderPay;
	private String orderDate;
	private String useDate;
	private String refundDate;
	private String productName;
	private String thumbnail;
	
	
	public OrderVo() {
		super();
	}


	public OrderVo(int optionNo, String optionName, int optionPrice, int orderNo, int productNo, int userNo, int orderQuantity, int orderPay, String orderDate, String useDate, String refundDate, String productName, String thumbnail) {
		super();
		this.optionNo = optionNo;
		this.optionName = optionName;
		this.optionPrice = optionPrice;
		this.orderNo = orderNo;
		this.productNo = productNo;
		this.userNo = userNo;
		this.orderQuantity = orderQuantity;
		this.orderPay = orderPay;
		this.orderDate = orderDate;
		this.useDate = useDate;
		this.refundDate = refundDate;
		this.productName = productName;
		this.thumbnail = thumbnail;
	}


	public int getOptionNo() {
		return optionNo;
	}


	public void setOptionNo(int optionNo) {
		this.optionNo = optionNo;
	}


	public String getOptionName() {
		return optionName;
	}


	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}


	public int getOptionPrice() {
		return optionPrice;
	}


	public void setOptionPrice(int optionPrice) {
		this.optionPrice = optionPrice;
	}


	public int getOrderNo() {
		return orderNo;
	}


	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}


	public int getProductNo() {
		return productNo;
	}


	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public int getOrderQuantity() {
		return orderQuantity;
	}


	public void setOrderQuantity(int orderQuantity) {
		this.orderQuantity = orderQuantity;
	}


	public int getOrderPay() {
		return orderPay;
	}


	public void setOrderPay(int orderPay) {
		this.orderPay = orderPay;
	}


	public String getOrderDate() {
		return orderDate;
	}


	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}


	public String getUseDate() {
		return useDate;
	}


	public void setUseDate(String useDate) {
		this.useDate = useDate;
	}


	public String getRefundDate() {
		return refundDate;
	}


	public void setRefundDate(String refundDate) {
		this.refundDate = refundDate;
	}


	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}


	public String getThumbnail() {
		return thumbnail;
	}


	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}


	@Override
	public String toString() {
		return "OrderVo [optionNo=" + optionNo + ", optionName=" + optionName + ", optionPrice=" + optionPrice + ", orderNo=" + orderNo + ", productNo=" + productNo + ", userNo=" + userNo + ", orderQuantity=" + orderQuantity + ", orderPay=" + orderPay + ", orderDate=" + orderDate
				+ ", useDate=" + useDate + ", refundDate=" + refundDate + ", productName=" + productName + ", thumbnail=" + thumbnail + "]";
	}
	
	
	


}
