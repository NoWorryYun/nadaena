package com.nadaena.vo;

public class BoardVo {

	private int userNo;
	private String nickName;
	private int boardNo;
	private int challengeNo;
	private int category;
	private String title;
	private String boardContent;
	private int hit;
	private String boardDate;
	private String boardDate2;

	private String boardPass;

	public BoardVo() {
		super();
	}

	public BoardVo(int userNo, String nickName, int boardNo, int challengeNo, int category, String title, String boardContent, int hit, String boardDate, String boardDate2, String boardPass) {
		super();
		this.userNo = userNo;
		this.nickName = nickName;
		this.boardNo = boardNo;
		this.challengeNo = challengeNo;
		this.category = category;
		this.title = title;
		this.boardContent = boardContent;
		this.hit = hit;
		this.boardDate = boardDate;
		this.boardDate2 = boardDate2;
		this.boardPass = boardPass;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getChallengeNo() {
		return challengeNo;
	}

	public void setChallengeNo(int challengeNo) {
		this.challengeNo = challengeNo;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}

	public String getBoardDate2() {
		return boardDate2;
	}

	public void setBoardDate2(String boardDate2) {
		this.boardDate2 = boardDate2;
	}

	public String getBoardPass() {
		return boardPass;
	}

	public void setBoardPass(String boardPass) {
		this.boardPass = boardPass;
	}

	@Override
	public String toString() {
		return "BoardVo [userNo=" + userNo + ", nickName=" + nickName + ", boardNo=" + boardNo + ", challengeNo=" + challengeNo + ", category=" + category + ", title=" + title + ", boardContent=" + boardContent + ", hit=" + hit + ", boardDate=" + boardDate + ", boardDate2="
				+ boardDate2 + ", boardPass=" + boardPass + "]";
	}

}
