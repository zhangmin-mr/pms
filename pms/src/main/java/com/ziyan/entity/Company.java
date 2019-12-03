package com.ziyan.entity;

public class Company {
    private int id;
    private String cName;
    private String cNature;
    private String cLegalPerson;
    public String getcLegalPerson() {
        return cLegalPerson;
    }
    public void setcLegalPerson(String cLegalPerson) {
        this.cLegalPerson = cLegalPerson;
    }
    private String cAddress;
    private String cTel;
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
    private String cEmail;
}
