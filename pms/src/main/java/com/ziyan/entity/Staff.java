package com.ziyan.entity;





import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

/*
 * 员工信息
 * */
public class Staff {
    private int id;
    private String sId;//员工编号
    private String sName;//员工姓名
    private String sSex;//员工性别
    private String sBirthday;//员工出生日期；
    private String sPost;//职位，岗位编号
    private String dId;//部门编号
    private Department sDepartment;//部门
    private Postcategory sPostcategory;//职位
    private String sSalary;//工资
    private Timestamp sEntry;//入职时间
    private String sIdentityId;//身份证号
    private List<Staffchange> staffchanges;


    @Override
    public String toString() {
        return "Staff{" +
                "id=" + id +
                ", sId='" + sId + '\'' +
                ", sName='" + sName + '\'' +
                ", sSex='" + sSex + '\'' +
                ", sBirthday='" + sBirthday + '\'' +
                ", sPost='" + sPost + '\'' +
                ", dId='" + dId + '\'' +
                ", sDepartment=" + sDepartment +
                ", sPostcategory=" + sPostcategory +
                ", sSalary='" + sSalary + '\'' +
                ", sEntry=" + sEntry +
                ", sIdentityId='" + sIdentityId + '\'' +
                ", staffchanges=" + staffchanges +
                '}';
    }

    public Postcategory getsPostcategory() {
        return sPostcategory;
    }

    public void setsPostcategory(Postcategory sPostcategory) {
        this.sPostcategory = sPostcategory;
    }

    public Staff() {
    }

    public Staff(String sId, String sName, String sSex, String sBirthday, String sPost, Department sDepartment   , String sSalary, Timestamp sEntry, String sIdentityId) {
        this.sId = sId;
        this.sName = sName;
        this.sSex = sSex;
        this.sBirthday = sBirthday;
        this.sPost = sPost;
        this.sDepartment=sDepartment;
        this.sSalary = sSalary;
        this.sEntry = sEntry;
        this.sIdentityId = sIdentityId;
    }



    public Staff(String sId, String sName, String sSex, String sBirthday, String sPost, String sDepartment, String sSalary, Timestamp sEntry, String sIdentityId) {
        this.sId = sId;
        this.sName = sName;
        this.sSex = sSex;
        this.sBirthday = sBirthday;
        this.sPost = sPost;
        this.dId=sDepartment;
        this.sSalary = sSalary;
        this.sEntry = sEntry;
        this.sIdentityId = sIdentityId;
    }

    public List<Staffchange> getStaffchanges() {
        return staffchanges;
    }

    public void setStaffchanges(List<Staffchange> staffchanges) {
        this.staffchanges = staffchanges;
    }

    public String getdId() {
        return dId;
    }

    public void setdId(String dId) {
        this.dId = dId;
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

    public Department getsDepartment() {
        return sDepartment;
    }

    public void setsDepartment(Department sDepartment) {
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
