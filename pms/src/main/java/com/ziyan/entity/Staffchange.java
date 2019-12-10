package com.ziyan.entity;

/*
* 员工调动
* */
public class Staffchange {
	private int id;
	private String sId;//员工编号
	private String pIdOld;//原职位编号
	private String pIdNew;//调任职位编号
	private String dIdOld;//原部门编号
	private String dIdNew;//调任部门编号
	private String sNature;//性质(长期或短期)
	private String sRemark;//备注
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getsId() {
		return sId;
	}
	public void setsId(String sId) {
		this.sId = sId;
	}
	public String getpIdOld() {
		return pIdOld;
	}
	public void setpIdOld(String pIdOld) {
		this.pIdOld = pIdOld;
	}
	public String getpIdNew() {
		return pIdNew;
	}
	public void setpIdNew(String pIdNew) {
		this.pIdNew = pIdNew;
	}
	public String getdIdOld() {
		return dIdOld;
	}
	public void setdIdOld(String dIdOld) {
		this.dIdOld = dIdOld;
	}
	public String getdIdNew() {
		return dIdNew;
	}
	public void setdIdNew(String dIdNew) {
		this.dIdNew = dIdNew;
	}
	public String getsNature() {
		return sNature;
	}
	public void setsNature(String sNature) {
		this.sNature = sNature;
	}
	public String getsRemark() {
		return sRemark;
	}
	public void setsRemark(String sRemark) {
		this.sRemark = sRemark;
	}
}
