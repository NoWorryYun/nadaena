package com.nadaena.vo;

public class MychallengeVo {
	
	private String clgTitle;
    private String regdate;
    private int period;
    private int payment;
	public MychallengeVo() {
		super();
	}
	public MychallengeVo(String clgTitle, String regdate, int period, int payment) {
		super();
		this.clgTitle = clgTitle;
		this.regdate = regdate;
		this.period = period;
		this.payment = payment;
	}
	public String getClgTitle() {
		return clgTitle;
	}
	public void setClgTitle(String clgTitle) {
		this.clgTitle = clgTitle;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getPeriod() {
		return period;
	}
	public void setPeriod(int period) {
		this.period = period;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	@Override
	public String toString() {
		return "MychallengeVo [clgTitle=" + clgTitle + ", regdate=" + regdate + ", period=" + period + ", payment=" + payment + "]";
	}
    
}
