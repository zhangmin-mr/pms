package com.ziyan.entity;

import java.util.List;

/*
* 职位类别
* */
public class Postcategory {
	private int id;
	private String pId;//职位编号
	private String pName;//职位名称
	private String pSalary;//职位工资
	private List<Department> departmentList;
	private List<Staff> staffList;

	public List<Staff> getStaffList() {
		return staffList;
	}

	public void setStaffList(List<Staff> staffList) {
		this.staffList = staffList;
	}

	public List<Department> getDepartmentList() {
		return departmentList;
	}

	public void setDepartmentList(List<Department> departmentList) {
		this.departmentList = departmentList;
	}

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
