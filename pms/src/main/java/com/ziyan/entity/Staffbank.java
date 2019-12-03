package com.ziyan.entity;

public class Staffbank {
	private int id;
	private String sId;
	public String getsId() {
		return sId;
	}
	public void setsId(String sId) {
		this.sId = sId;
	}
	private String bId;
	private String sBankName;
	private String sBankType;
	private String sRemark;
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
	public String getsBankName() {
		return sBankName;
	}
	public void setsBankName(String sBankName) {
		this.sBankName = sBankName;
	}
	public String getsBankType() {
		return sBankType;
	}
	public void setsBankType(String sBankType) {
		this.sBankType = sBankType;
	}
	public String getsRemark() {
		return sRemark;
	}
	public void setsRemark(String sRemark) {
		this.sRemark = sRemark;
	}
}
