package com.ziyan.entity;





import java.sql.Timestamp;
import java.util.Date;

/*
 * 员工信息
 * */
public class Staff {
    private int id;
    private String sId;//员工编号
    private String sName;//员工姓名
    private String sSex;//员工性别
    private String sBirthday;//员工出生日期；
    private String sPost;//职位，岗位
    private String sDepartment;//部门
    private String sSalary;//工资
    private Timestamp sEntry;//入职时间
    private String sIdentityId;//身份证号

    public Staff() {
    }

    public Staff(String sId, String sName, String sSex, String sBirthday, String sPost, String sDepartment, String sSalary, Timestamp sEntry, String sIdentityId) {
        this.sId = sId;
        this.sName = sName;
        this.sSex = sSex;
        this.sBirthday = sBirthday;
        this.sPost = sPost;
        this.sDepartment = sDepartment;
        this.sSalary = sSalary;
        this.sEntry = sEntry;
        this.sIdentityId = sIdentityId;
    }


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

    public String getsBirthday() {
        return sBirthday;
    }

    public void setsBirthday(String sBirthday) {
        this.sBirthday = sBirthday;
    }

    public Timestamp getsEntry() {
        return sEntry;
    }

    public void setsEntry(Timestamp sEntry) {
        this.sEntry = sEntry;
    }

    public String getsIdentityId() {
        return sIdentityId;
    }

    public void setsIdentityId(String sIdentityId) {
        this.sIdentityId = sIdentityId;
    }

}
