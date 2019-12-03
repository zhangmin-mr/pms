package com.ziyan.entity;

public class Admins {
    private int id;
    private String aId;
    private String aName;
    private String aPwd;
    private String aTypeId;

    public Admins() {

    }

    public Admins(int id, String aId, String aName, String aPwd, String aTypeId) {
        this.id = id;
        this.aId = aId;
        this.aName = aName;
        this.aPwd = aPwd;
        this.aTypeId = aTypeId;
    }

    public String getaId() {
        return aId;
    }

    public void setaId(String aId) {
        this.aId = aId;
    }

    public String getaTypeId() {
        return aTypeId;
    }
    public void setaTypeId(String aTypeId) {
        this.aTypeId = aTypeId;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getaName() {
        return aName;
    }
    public void setaName(String aName) {
        this.aName = aName;
    }
    public String getaPwd() {
        return aPwd;
    }
    public void setaPwd(String aPwd) {
        this.aPwd = aPwd;
    }
}
