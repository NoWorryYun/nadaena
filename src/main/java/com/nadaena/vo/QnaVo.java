package com.nadaena.vo;

public class QnaVo {
	
	private int qnaNo;
	private int productNo;
	private int userNo;
	private String productQuestion;
    private String productAnswer;
    private String email;
    private String mskEmail;
    private String questionDate;
    private String answerDate;
    
    
	public QnaVo() {
		super();
	}


	public QnaVo(int qnaNo, int productNo, int userNo, String productQuestion, String productAnswer, String email, String mskEmail, String questionDate, String answerDate) {
		super();
		this.qnaNo = qnaNo;
		this.productNo = productNo;
		this.userNo = userNo;
		this.productQuestion = productQuestion;
		this.productAnswer = productAnswer;
		this.email = email;
		this.mskEmail = mskEmail;
		this.questionDate = questionDate;
		this.answerDate = answerDate;
	}


	public int getQnaNo() {
		return qnaNo;
	}


	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
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


	public String getProductQuestion() {
		return productQuestion;
	}


	public void setProductQuestion(String productQuestion) {
		this.productQuestion = productQuestion;
	}


	public String getProductAnswer() {
		return productAnswer;
	}


	public void setProductAnswer(String productAnswer) {
		this.productAnswer = productAnswer;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getMskEmail() {
		return mskEmail;
	}


	public void setMskEmail(String mskEmail) {
		this.mskEmail = mskEmail;
	}


	public String getQuestionDate() {
		return questionDate;
	}


	public void setQuestionDate(String questionDate) {
		this.questionDate = questionDate;
	}


	public String getAnswerDate() {
		return answerDate;
	}


	public void setAnswerDate(String answerDate) {
		this.answerDate = answerDate;
	}


	@Override
	public String toString() {
		return "QnaVo [qnaNo=" + qnaNo + ", productNo=" + productNo + ", userNo=" + userNo + ", productQuestion=" + productQuestion + ", productAnswer=" + productAnswer + ", email=" + email + ", mskEmail=" + mskEmail + ", questionDate=" + questionDate + ", answerDate="
				+ answerDate + "]";
	}



}
