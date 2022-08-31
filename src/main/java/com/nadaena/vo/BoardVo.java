package com.nadaena.vo;

public class BoardVo {
	
	private int boardNo;
	private int challengeNo;
	private int userNo;
	private String nickName;
	private int category;
	private String title;
	private String boardContent;
	private int hit;
	private String boardDate;
	private int commentNo;
	private String commentDate;
	private String comments;
	private String email;
	private String nickname;
	private String pasword;
	private String name;
	private String birth;
	private String hp;
	private String postNo;
	private String address1;
	private String address2;
	private int interestNo;
	private String clgTitle;
	private String Img;
	private String regDate;
	private int recruitment;
	private int period;
	private int certify;
	private int minigame;
	private int upload;
	private int certifyDay;
	private String content;
	private String color;
	private String tag1;
	private String tag2;
	private String tag3;
	private String tag4;
	private String tag5;
	private int clgLevel;
	private int clgGroup;
	private String boardDate2;
	private String keyword;
	public BoardVo() {
		super();
	}
	public BoardVo(int boardNo, int challengeNo, int userNo, String nickName, int category, String title, String boardContent, int hit, String boardDate, int commentNo, String commentDate, String comments, String email, String nickname2, String pasword, String name, String birth,
			String hp, String postNo, String address1, String address2, int interestNo, String clgTitle, String img, String regDate, int recruitment, int period, int certify, int minigame, int upload, int certifyDay, String content, String color, String tag1, String tag2,
			String tag3, String tag4, String tag5, int clgLevel, int clgGroup, String boardDate2, String keyword) {
		super();
		this.boardNo = boardNo;
		this.challengeNo = challengeNo;
		this.userNo = userNo;
		this.nickName = nickName;
		this.category = category;
		this.title = title;
		this.boardContent = boardContent;
		this.hit = hit;
		this.boardDate = boardDate;
		this.commentNo = commentNo;
		this.commentDate = commentDate;
		this.comments = comments;
		this.email = email;
		nickname = nickname2;
		this.pasword = pasword;
		this.name = name;
		this.birth = birth;
		this.hp = hp;
		this.postNo = postNo;
		this.address1 = address1;
		this.address2 = address2;
		this.interestNo = interestNo;
		this.clgTitle = clgTitle;
		Img = img;
		this.regDate = regDate;
		this.recruitment = recruitment;
		this.period = period;
		this.certify = certify;
		this.minigame = minigame;
		this.upload = upload;
		this.certifyDay = certifyDay;
		this.content = content;
		this.color = color;
		this.tag1 = tag1;
		this.tag2 = tag2;
		this.tag3 = tag3;
		this.tag4 = tag4;
		this.tag5 = tag5;
		this.clgLevel = clgLevel;
		this.clgGroup = clgGroup;
		this.boardDate2 = boardDate2;
		this.keyword = keyword;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPasword() {
		return pasword;
	}
	public void setPasword(String pasword) {
		this.pasword = pasword;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getPostNo() {
		return postNo;
	}
	public void setPostNo(String postNo) {
		this.postNo = postNo;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public int getInterestNo() {
		return interestNo;
	}
	public void setInterestNo(int interestNo) {
		this.interestNo = interestNo;
	}
	public String getClgTitle() {
		return clgTitle;
	}
	public void setClgTitle(String clgTitle) {
		this.clgTitle = clgTitle;
	}
	public String getImg() {
		return Img;
	}
	public void setImg(String img) {
		Img = img;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public int getRecruitment() {
		return recruitment;
	}
	public void setRecruitment(int recruitment) {
		this.recruitment = recruitment;
	}
	public int getPeriod() {
		return period;
	}
	public void setPeriod(int period) {
		this.period = period;
	}
	public int getCertify() {
		return certify;
	}
	public void setCertify(int certify) {
		this.certify = certify;
	}
	public int getMinigame() {
		return minigame;
	}
	public void setMinigame(int minigame) {
		this.minigame = minigame;
	}
	public int getUpload() {
		return upload;
	}
	public void setUpload(int upload) {
		this.upload = upload;
	}
	public int getCertifyDay() {
		return certifyDay;
	}
	public void setCertifyDay(int certifyDay) {
		this.certifyDay = certifyDay;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getTag1() {
		return tag1;
	}
	public void setTag1(String tag1) {
		this.tag1 = tag1;
	}
	public String getTag2() {
		return tag2;
	}
	public void setTag2(String tag2) {
		this.tag2 = tag2;
	}
	public String getTag3() {
		return tag3;
	}
	public void setTag3(String tag3) {
		this.tag3 = tag3;
	}
	public String getTag4() {
		return tag4;
	}
	public void setTag4(String tag4) {
		this.tag4 = tag4;
	}
	public String getTag5() {
		return tag5;
	}
	public void setTag5(String tag5) {
		this.tag5 = tag5;
	}
	public int getClgLevel() {
		return clgLevel;
	}
	public void setClgLevel(int clgLevel) {
		this.clgLevel = clgLevel;
	}
	public int getClgGroup() {
		return clgGroup;
	}
	public void setClgGroup(int clgGroup) {
		this.clgGroup = clgGroup;
	}
	public String getBoardDate2() {
		return boardDate2;
	}
	public void setBoardDate2(String boardDate2) {
		this.boardDate2 = boardDate2;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
	public String toString() {
		return "BoardVo [boardNo=" + boardNo + ", challengeNo=" + challengeNo + ", userNo=" + userNo + ", nickName=" + nickName + ", category=" + category + ", title=" + title + ", boardContent=" + boardContent + ", hit=" + hit + ", boardDate=" + boardDate + ", commentNo="
				+ commentNo + ", commentDate=" + commentDate + ", comments=" + comments + ", email=" + email + ", nickname=" + nickname + ", pasword=" + pasword + ", name=" + name + ", birth=" + birth + ", hp=" + hp + ", postNo=" + postNo + ", address1=" + address1
				+ ", address2=" + address2 + ", interestNo=" + interestNo + ", clgTitle=" + clgTitle + ", Img=" + Img + ", regDate=" + regDate + ", recruitment=" + recruitment + ", period=" + period + ", certify=" + certify + ", minigame=" + minigame + ", upload=" + upload
				+ ", certifyDay=" + certifyDay + ", content=" + content + ", color=" + color + ", tag1=" + tag1 + ", tag2=" + tag2 + ", tag3=" + tag3 + ", tag4=" + tag4 + ", tag5=" + tag5 + ", clgLevel=" + clgLevel + ", clgGroup=" + clgGroup + ", boardDate2=" + boardDate2
				+ ", keyword=" + keyword + "]";
	}
	
	
	
}
