package com.ziyan.entity;

/*
* 职位类别
* */
public class Postcategory {
	private int id;
	private String pId;//职位编号
	private String pName;//职位名称
	private String pSalary;//职位工资
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getpId() {
		return pId;
	}
	public void setpId(String pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpSalary() {
		return pSalary;
	}
	public void setpSalary(String pSalary) {
		this.pSalary = pSalary;
	}
}
