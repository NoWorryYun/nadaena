package com.nadaena.vo;

public class UserVo {

	private int userNo;
	private String email;
	private String nickName;
	private String pasword;
	private String name;
	private String birth;
	private String hp;
	private String postNo;
	private String address1;
	private String address2;

	public UserVo() {
	}

	public UserVo(int userNo, String email, String nickName, String pasword, String name, String birth, String hp, String postNo, String address1, String address2) {
		super();
		this.userNo = userNo;
		this.email = email;
		this.nickName = nickName;
		this.pasword = pasword;
		this.name = name;
		this.birth = birth;
		this.hp = hp;
		this.postNo = postNo;
		this.address1 = address1;
		this.address2 = address2;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
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

	@Override
	public String toString() {
		return "UserVo [userNo=" + userNo + ", email=" + email + ", nickName=" + nickName + ", pasword=" + pasword + ", name=" + name + ", birth=" + birth + ", hp=" + hp + ", postNo=" + postNo + ", address1=" + address1 + ", address2=" + address2 + "]";
	}

}
