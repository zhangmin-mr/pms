package com.ziyan.entity;
/*
* 公司银行账户
* */
public class Companybank {
	private int id;
	private String bId;//银行账号
	private String cBankType;//银行账户类型
	private String cBankName;//开户行
	private String cRemark;//备注
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getbId() {
		return bId;
	}
	public void setbId(String bId) {
		this.bId = bId;
	}
	public String getcBankType() {
		return cBankType;
	}
	public void setcBankType(String cBankType) {
		this.cBankType = cBankType;
	}
	public String getcBankName() {
		return cBankName;
	}
	public void setcBankName(String cBankName) {
		this.cBankName = cBankName;
	}
	public String getcRemark() {
		return cRemark;
	}
	public void setcRemark(String cRemark) {
		this.cRemark = cRemark;
	}
}
