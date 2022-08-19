package com.nadaena.vo;

public class ProductVo {
	
	private int productNo;
	private String productName;
	private int productCategory;
	private String productContent;
	private String policy;
	private String thumbnail;
	private int optionNo;
	private String optionName;
	private int optionPrice;
	private int countOption;
	
	
	
	public ProductVo() {
		super();
	}



	public ProductVo(int productNo, String productName, int productCategory, String productContent, String policy, String thumbnail, int optionNo, String optionName, int optionPrice, int countOption) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.productCategory = productCategory;
		this.productContent = productContent;
		this.policy = policy;
		this.thumbnail = thumbnail;
		this.optionNo = optionNo;
		this.optionName = optionName;
		this.optionPrice = optionPrice;
		this.countOption = countOption;
	}



	public int getProductNo() {
		return productNo;
	}



	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}



	public String getProductName() {
		return productName;
	}



	public void setProductName(String productName) {
		this.productName = productName;
	}



	public int getProductCategory() {
		return productCategory;
	}



	public void setProductCategory(int productCategory) {
		this.productCategory = productCategory;
	}



	public String getProductContent() {
		return productContent;
	}



	public void setProductContent(String productContent) {
		this.productContent = productContent;
	}



	public String getPolicy() {
		return policy;
	}



	public void setPolicy(String policy) {
		this.policy = policy;
	}



	public String getThumbnail() {
		return thumbnail;
	}



	public void setThumbnail(String thumbnail) {
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



	public int getCountOption() {
		return countOption;
	}



	public void setCountOption(int countOption) {
		this.countOption = countOption;
	}



	@Override
	public String toString() {
		return "ProductVo [productNo=" + productNo + ", productName=" + productName + ", productCategory=" + productCategory + ", productContent=" + productContent + ", policy=" + policy + ", thumbnail=" + thumbnail + ", optionNo=" + optionNo + ", optionName=" + optionName
				+ ", optionPrice=" + optionPrice + ", countOption=" + countOption + "]";
	}
	
	

}
