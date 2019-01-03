package com.java.bean;

public class Shopcard extends ShopcardExample {
    private Integer cid;

    private Integer bid;

    private Integer scNum;

    private  Books books;

    public Books getBooks() {
        return books;
    }
    public void setBooks(Books books) {
        this.books = books;
    }

    public Shopcard(Integer cid, Integer bid, Integer scNum) {
        this.cid = cid;
        this.bid = bid;
        this.scNum = scNum;
    }

    public Shopcard() {
        super();
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public Integer getScNum() {
        return scNum;
    }

    public void setScNum(Integer scNum) {
        this.scNum = scNum;
    }
}