package com.ziyan.entity;

/*
* 职位设置
* */
public class Postsetting {
	private int id;
	private String pId;//职位编号
	private String dId;//部门编号
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
	public String getdId() {
		return dId;
	}
	public void setdId(String dId) {
		this.dId = dId;
	}

}
