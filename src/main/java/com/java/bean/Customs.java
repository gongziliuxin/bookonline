package com.java.bean;

public class Customs {
    public Customs(Integer cId, String cTel, String cPw, String cNickname, String cName, String cMail) {
        this.cId = cId;
        this.cTel = cTel;
        this.cPw = cPw;
        this.cNickname = cNickname;
        this.cName = cName;
        this.cMail = cMail;
    }

    public Customs() {
        super();
    }

    private Integer cId;

    private String cTel;

    private String cPw;

    private String cNickname;

    private String cName;

    private String cMail;

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public String getcTel() {
        return cTel;
    }

    public void setcTel(String cTel) {
        this.cTel = cTel == null ? null : cTel.trim();
    }

    public String getcPw() {
        return cPw;
    }

    public void setcPw(String cPw) {
        this.cPw = cPw == null ? null : cPw.trim();
    }

    public String getcNickname() {
        return cNickname;
    }

    public void setcNickname(String cNickname) {
        this.cNickname = cNickname == null ? null : cNickname.trim();
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName == null ? null : cName.trim();
    }

    public String getcMail() {
        return cMail;
    }

    public void setcMail(String cMail) {
        this.cMail = cMail == null ? null : cMail.trim();
    }
}