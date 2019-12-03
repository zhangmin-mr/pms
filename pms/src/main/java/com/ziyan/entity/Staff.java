package com.ziyan.entity;

import java.util.Date;

public class Staff {
	private String id;
	private String sId;
	private String sName;
	private String sSex;
	private String sBirthday;
	private String sPost;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getsId() {
		return sId;
	}
	public void setsId(String sId) {
		this.sId = sId;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsSex() {
		return sSex;
	}
	public void setsSex(String sSex) {
		this.sSex = sSex;
	}
	public String getsBirthday() {
		return sBirthday;
	}
	public void setsBirthday(String sBirthday) {
		this.sBirthday = sBirthday;
	}
	public String getsPost() {
		return sPost;
	}
	public void setsPost(String sPost) {
		this.sPost = sPost;
	}
	public String getsDepartment() {
		return sDepartment;
	}
	public void setsDepartment(String sDepartment) {
		this.sDepartment = sDepartment;
	}
	public String getsSalary() {
		return sSalary;
	}
	public void setsSalary(String sSalary) {
		this.sSalary = sSalary;
	}
	public Date getsEntry() {
		return sEntry;
	}
	public void setsEntry(Date sEntry) {
		this.sEntry = sEntry;
	}
	public String getsIdentityId() {
		return sIdentityId;
	}
	public void setsIdentityId(String sIdentityId) {
		this.sIdentityId = sIdentityId;
	}
	private String sDepartment;
	private String sSalary;
	private Date sEntry;
	private String sIdentityId;
}
