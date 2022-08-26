package com.nadaena.vo;

public class ProductReviewVo {
	
	private int productreviewNo;
    private int orderNo;
    private int userNo;
    private String productreviewIMG;
    private String productreviewContent;
    private String productreviewDate;
    private int productNo;
    private String email;
    
    
	public ProductReviewVo() {
		super();
	}


	public ProductReviewVo(int productreviewNo, int orderNo, int userNo, String productreviewIMG, String productreviewContent, String productreviewDate, int productNo, String email) {
		super();
		this.productreviewNo = productreviewNo;
		this.orderNo = orderNo;
		this.userNo = userNo;
		this.productreviewIMG = productreviewIMG;
		this.productreviewContent = productreviewContent;
		this.productreviewDate = productreviewDate;
		this.productNo = productNo;
		this.email = email;
	}


	public int getProductreviewNo() {
		return productreviewNo;
	}


	public void setProductreviewNo(int productreviewNo) {
		this.productreviewNo = productreviewNo;
	}


	public int getOrderNo() {
		return orderNo;
	}


	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public String getProductreviewIMG() {
		return productreviewIMG;
	}


	public void setProductreviewIMG(String productreviewIMG) {
		this.productreviewIMG = productreviewIMG;
	}


	public String getProductreviewContent() {
		return productreviewContent;
	}


	public void setProductreviewContent(String productreviewContent) {
		this.productreviewContent = productreviewContent;
	}


	public String getProductreviewDate() {
		return productreviewDate;
	}


	public void setProductreviewDate(String productreviewDate) {
		this.productreviewDate = productreviewDate;
	}


	public int getProductNo() {
		return productNo;
	}


	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	@Override
	public String toString() {
		return "ProductReviewVo [productreviewNo=" + productreviewNo + ", orderNo=" + orderNo + ", userNo=" + userNo + ", productreviewIMG=" + productreviewIMG + ", productreviewContent=" + productreviewContent + ", productreviewDate=" + productreviewDate + ", productNo="
				+ productNo + ", email=" + email + "]";
	}


	
    
    

}
