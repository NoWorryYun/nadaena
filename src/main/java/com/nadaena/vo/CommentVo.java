package com.nadaena.vo;

public class CommentVo {

	private int commentNo;
	private String commentDate;
	private String comments;
	private String nickName;
	private int userNo;

	public CommentVo() {
		super();
	}

	public CommentVo(int commentNo, String commentDate, String comments, String nickName, int userNo) {
		super();
		this.commentNo = commentNo;
		this.commentDate = commentDate;
		this.comments = comments;
		this.nickName = nickName;
		this.userNo = userNo;
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public String getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "CommentVo [commentNo=" + commentNo + ", commentDate=" + commentDate + ", comments=" + comments + ", nickName=" + nickName + ", userNo=" + userNo + "]";
	}

}
