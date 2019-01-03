package com.java.bean;

public class Books {
    public Books(Integer bId, String bIsbn, String bName, String bAuthor, String bPublisher, Double bPrice, String bCoverpic, String bIntroduction, Double bScore, Integer bStorage, Integer bSales, Double bDiscount, String bType) {
        this.bId = bId;
        this.bIsbn = bIsbn;
        this.bName = bName;
        this.bAuthor = bAuthor;
        this.bPublisher = bPublisher;
        this.bPrice = bPrice;
        this.bCoverpic = bCoverpic;
        this.bIntroduction = bIntroduction;
        this.bScore = bScore;
        this.bStorage = bStorage;
        this.bSales = bSales;
        this.bDiscount = bDiscount;
        this.bType = bType;
    }

    public Books() {
        super();
    }

    private Integer bId;

    private String bIsbn;

    private String bName;

    private String bAuthor;

    private String bPublisher;

    private Double bPrice;

    private String bCoverpic;

    private String bIntroduction;

    private Double bScore;

    private Integer bStorage;

    private Integer bSales;

    private Double bDiscount;

    private String bType;

    public Integer getbId() {
        return bId;
    }

    public void setbId(Integer bId) {
        this.bId = bId;
    }

    public String getbIsbn() {
        return bIsbn;
    }

    public void setbIsbn(String bIsbn) {
        this.bIsbn = bIsbn == null ? null : bIsbn.trim();
    }

    public String getbName() {
        return bName;
    }

    public void setbName(String bName) {
        this.bName = bName == null ? null : bName.trim();
    }

    public String getbAuthor() {
        return bAuthor;
    }

    public void setbAuthor(String bAuthor) {
        this.bAuthor = bAuthor == null ? null : bAuthor.trim();
    }

    public String getbPublisher() {
        return bPublisher;
    }

    public void setbPublisher(String bPublisher) {
        this.bPublisher = bPublisher == null ? null : bPublisher.trim();
    }

    public Double getbPrice() {
        return bPrice;
    }

    public void setbPrice(Double bPrice) {
        this.bPrice = bPrice;
    }

    public String getbCoverpic() {
        return bCoverpic;
    }

    public void setbCoverpic(String bCoverpic) {
        this.bCoverpic = bCoverpic == null ? null : bCoverpic.trim();
    }

    public String getbIntroduction() {
        return bIntroduction;
    }

    public void setbIntroduction(String bIntroduction) {
        this.bIntroduction = bIntroduction == null ? null : bIntroduction.trim();
    }

    public Double getbScore() {
        return bScore;
    }

    public void setbScore(Double bScore) {
        this.bScore = bScore;
    }

    public Integer getbStorage() {
        return bStorage;
    }

    public void setbStorage(Integer bStorage) {
        this.bStorage = bStorage;
    }

    public Integer getbSales() {
        return bSales;
    }

    public void setbSales(Integer bSales) {
        this.bSales = bSales;
    }

    public Double getbDiscount() {
        return bDiscount;
    }

    public void setbDiscount(Double bDiscount) {
        this.bDiscount = bDiscount;
    }

    public String getbType() {
        return bType;
    }

    public void setbType(String bType) {
        this.bType = bType == null ? null : bType.trim();
    }
}