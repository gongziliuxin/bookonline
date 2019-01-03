package com.java.bean;

public class Admin {
    private Integer adId;

    private String adName;

    private String adPw;

    public Admin(Integer adId, String adName, String adPw) {
        this.adId = adId;
        this.adName = adName;
        this.adPw = adPw;
    }

    public Admin() {
        super();
    }

    public Integer getAdId() {
        return adId;
    }

    public void setAdId(Integer adId) {
        this.adId = adId;
    }

    public String getAdName() {
        return adName;
    }

    public void setAdName(String adName) {
        this.adName = adName == null ? null : adName.trim();
    }

    public String getAdPw() {
        return adPw;
    }

    public void setAdPw(String adPw) {
        this.adPw = adPw == null ? null : adPw.trim();
    }
}