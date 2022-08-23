package com.nadaena.vo;

public class ChallengeSubVo {

	//필드

	private int challengeNo;
	private String certifyTitle;
	private int subOn;
	private int subOff;

	//생성자
	public ChallengeSubVo() {
		super();
	}

	public ChallengeSubVo(int challengeNo, String certifyTitle, int subOn, int subOff) {
		super();
		this.challengeNo = challengeNo;
		this.certifyTitle = certifyTitle;
		this.subOn = subOn;
		this.subOff = subOff;
	}

	//GS
	public int getChallengeNo() {
		return challengeNo;
	}

	public void setChallengeNo(int challengeNo) {
		this.challengeNo = challengeNo;
	}

	public String getCertifyTitle() {
		return certifyTitle;
	}

	public void setCertifyTitle(String certifyTitle) {
		this.certifyTitle = certifyTitle;
	}

	public int getSubOff() {
		return subOff;
	}

	public void setSubOff(int subOff) {
		this.subOff = subOff;
	}

	public int getSubOn() {
		return subOn;
	}

	public void setSubOn(int subOn) {
		this.subOn = subOn;
	}

	//일반
	@Override
	public String toString() {
		return "ChallengeSubVo [challengeNo=" + challengeNo + ", certifyTitle=" + certifyTitle + ", subOff=" + subOff + ", subOn=" + subOn + "]";
	}

}
