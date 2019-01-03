package com.java.bean;

public class Addres {
    private Integer aId;

    private Integer cId;

    private String aName;

    private String aAddr;

    private String aTel;

    private String aDefault;

    public Addres(Integer aId, Integer cId, String aName, String aAddr, String aTel, String aDefault) {
        this.aId = aId;
        this.cId = cId;
        this.aName = aName;
        this.aAddr = aAddr;
        this.aTel = aTel;
        this.aDefault = aDefault;
    }

    public Addres(Integer cId, String aName, String aAddr, String aTel, String aDefault) {
        this.cId = cId;
        this.aName = aName;
        this.aAddr = aAddr;
        this.aTel = aTel;
        this.aDefault = aDefault;
    }

    public Addres() {
        super();
    }

    public Addres(Integer aId) {
        this.aId = aId;
    }

    public Integer getaId() {
        return aId;
    }

    public void setaId(Integer aId) {
        this.aId = aId;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName == null ? null : aName.trim();
    }

    public String getaAddr() {
        return aAddr;
    }

    public void setaAddr(String aAddr) {
        this.aAddr = aAddr == null ? null : aAddr.trim();
    }

    public String getaTel() {
        return aTel;
    }

    public void setaTel(String aTel) {
        this.aTel = aTel == null ? null : aTel.trim();
    }

    public String getaDefault() {
        return aDefault;
    }

    public void setaDefault(String aDefault) {
        this.aDefault = aDefault == null ? null : aDefault.trim();
    }
}