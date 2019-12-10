package com.ziyan.entity;

/*
* 管理员类型
* */
public class Admintype {
    private int id;
    private int aTypeId;
    private String aTypeName;
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getaTypeId() {
        return aTypeId;
    }
    public void setaTypeId(int aTypeId) {
        this.aTypeId = aTypeId;
    }
    public String getaTypeName() {
        return aTypeName;
    }
    public void setaTypeName(String aTypeName) {
        this.aTypeName = aTypeName;
    }
}
