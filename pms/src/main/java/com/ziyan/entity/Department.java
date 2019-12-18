package com.ziyan.entity;

import java.util.List;

/*
* 部门信息
* */
public class Department {
	private int id;
	private String dId;//部门编号
	private String dName;//部门名称
	private String dFunction;//部门职能
	private String dLeader;//部门领导（经理）
	private List<Staff> staffList;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getdId() {
		return dId;
	}
	public void setdId(String dId) {
		this.dId = dId;
	}
	public String getdName() {
		return dName;
	}
	public void setdName(String dName) {
		this.dName = dName;
	}
	public String getdFunction() {
		return dFunction;
	}
	public void setdFunction(String dFunction) {
		this.dFunction = dFunction;
	}
	public String getdLeader() {
		return dLeader;
	}
	public void setdLeader(String dLeader) {
		this.dLeader = dLeader;
	}

	public List<Staff> getStaffList() {
		return staffList;
	}

	public void setStaffList(List<Staff> staffList) {
		this.staffList = staffList;
	}
}
