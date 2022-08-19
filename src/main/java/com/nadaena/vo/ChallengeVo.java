package com.nadaena.vo;

import org.springframework.web.multipart.MultipartFile;

public class ChallengeVo {

	//필드
	private int challengeNo;
	private int interestNo;
	private String clgTitle;
	private String img;
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
	private int certifyNo;
	private String certifyTitle;
	private int subOn;
	private int subOff;
	private String interestName;
	private int userNo;
	private int payment;
	private MultipartFile imgs;

	//생성자
	public ChallengeVo() {
		super();
	}


	public ChallengeVo(int interestNo, String clgTitle, int recruitment, int period, int certify, int minigame, int upload, int certifyDay, String content, String tag1, String tag2, String tag3, String tag4, String tag5, MultipartFile imgs) {
		super();
		this.interestNo = interestNo;
		this.clgTitle = clgTitle;
		this.recruitment = recruitment;
		this.period = period;
		this.certify = certify;
		this.minigame = minigame;
		this.upload = upload;
		this.certifyDay = certifyDay;
		this.content = content;
		this.tag1 = tag1;
		this.tag2 = tag2;
		this.tag3 = tag3;
		this.tag4 = tag4;
		this.tag5 = tag5;
		this.imgs = imgs;
	}


	public ChallengeVo(int challengeNo, int interestNo, String clgTitle, String img, String regDate, int recruitment, int period, int certify, int minigame, int upload, int certifyDay, String content, String color, String tag1, String tag2, String tag3, String tag4, String tag5,
			int clgLevel, int clgGroup, int certifyNo, String certifyTitle, int subOn, int subOff, String interestName, int userNo, int payment, MultipartFile imgs) {
		super();
		this.challengeNo = challengeNo;
		this.interestNo = interestNo;
		this.clgTitle = clgTitle;
		this.img = img;
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
		this.certifyNo = certifyNo;
		this.certifyTitle = certifyTitle;
		this.subOn = subOn;
		this.subOff = subOff;
		this.interestName = interestName;
		this.userNo = userNo;
		this.payment = payment;
		this.imgs = imgs;
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

	public String getClgTitle() {
		return clgTitle;
	}

	public void setClgTitle(String clgTitle) {
		this.clgTitle = clgTitle;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
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

	public int getCertifyNo() {
		return certifyNo;
	}

	public void setCertifyNo(int certifyNo) {
		this.certifyNo = certifyNo;
	}

	public String getCertifyTitle() {
		return certifyTitle;
	}

	public void setCertifyTitle(String certifyTitle) {
		this.certifyTitle = certifyTitle;
	}

	public int getSubOn() {
		return subOn;
	}

	public void setSubOn(int subOn) {
		this.subOn = subOn;
	}

	public int getSubOff() {
		return subOff;
	}

	public void setSubOff(int subOff) {
		this.subOff = subOff;
	}

	public String getInterestName() {
		return interestName;
	}

	public void setInterestName(String interestName) {
		this.interestName = interestName;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	public MultipartFile getImgs() {
		return imgs;
	}

	public void setImgs(MultipartFile imgs) {
		this.imgs = imgs;
	}

	@Override
	public String toString() {
		return "ChallengeVo [challengeNo=" + challengeNo + ", interestNo=" + interestNo + ", clgTitle=" + clgTitle + ", img=" + img + ", regDate=" + regDate + ", recruitment=" + recruitment + ", period=" + period + ", certify=" + certify + ", minigame=" + minigame + ", upload="
				+ upload + ", certifyDay=" + certifyDay + ", content=" + content + ", color=" + color + ", tag1=" + tag1 + ", tag2=" + tag2 + ", tag3=" + tag3 + ", tag4=" + tag4 + ", tag5=" + tag5 + ", clgLevel=" + clgLevel + ", clgGroup=" + clgGroup + ", certifyNo=" + certifyNo
				+ ", certifyTitle=" + certifyTitle + ", subOn=" + subOn + ", subOff=" + subOff + ", interestName=" + interestName + ", userNo=" + userNo + ", payment=" + payment + ", imgs=" + imgs + "]";
	}

}
