package com.ziyan.entity;

/*
* 公司基本信息表
* */
public class Company {
    private int id;
    private String cName;//公司名称
    private String cNature;//公司性质
    private String cLegalPerson;//法人代表
    private String cAddress;//公司地址
    private String cTel;//公司电话
    private String cEmail;//公司邮箱
    public String getcLegalPerson() {
        return cLegalPerson;
    }
    public void setcLegalPerson(String cLegalPerson) {
        this.cLegalPerson = cLegalPerson;
    }


    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getcName() {
        return cName;
    }
    public void setcName(String cName) {
        this.cName = cName;
    }
    public String getcNature() {
        return cNature;
    }
    public void setcNature(String cNature) {
        this.cNature = cNature;
    }


    public String getcAddress() {
        return cAddress;
    }

    public void setcAddress(String cAddress) {
        this.cAddress = cAddress;
    }
    public String getcTel() {
        return cTel;
    }
    public void setcTel(String cTel) {
        this.cTel = cTel;
    }
    public String getcEmail() {
        return cEmail;
    }
    public void setcEmail(String cEmail) {
        this.cEmail = cEmail;
    }

}
