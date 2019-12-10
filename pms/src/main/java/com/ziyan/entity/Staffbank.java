package com.ziyan.entity;

/*
 * 员工银行账户
 * */
public class Staffbank {
    private int id;
    private String sId;//员工编号

	private String bId;//银行账户
	private String sBankName;//银行账户类型
	private String sBankType;//开户行
	private String sRemark;//备注

    public String getsId() {
        return sId;
    }

    public void setsId(String sId) {
        this.sId = sId;
    }

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
