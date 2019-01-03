package com.java.bean;

import java.util.ArrayList;
import java.util.List;

public class BooksExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BooksExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andBIdIsNull() {
            addCriterion("b_id is null");
            return (Criteria) this;
        }

        public Criteria andBIdIsNotNull() {
            addCriterion("b_id is not null");
            return (Criteria) this;
        }

        public Criteria andBIdEqualTo(Integer value) {
            addCriterion("b_id =", value, "bId");
            return (Criteria) this;
        }

        public Criteria andBIdNotEqualTo(Integer value) {
            addCriterion("b_id <>", value, "bId");
            return (Criteria) this;
        }

        public Criteria andBIdGreaterThan(Integer value) {
            addCriterion("b_id >", value, "bId");
            return (Criteria) this;
        }

        public Criteria andBIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("b_id >=", value, "bId");
            return (Criteria) this;
        }

        public Criteria andBIdLessThan(Integer value) {
            addCriterion("b_id <", value, "bId");
            return (Criteria) this;
        }

        public Criteria andBIdLessThanOrEqualTo(Integer value) {
            addCriterion("b_id <=", value, "bId");
            return (Criteria) this;
        }

        public Criteria andBIdIn(List<Integer> values) {
            addCriterion("b_id in", values, "bId");
            return (Criteria) this;
        }

        public Criteria andBIdNotIn(List<Integer> values) {
            addCriterion("b_id not in", values, "bId");
            return (Criteria) this;
        }

        public Criteria andBIdBetween(Integer value1, Integer value2) {
            addCriterion("b_id between", value1, value2, "bId");
            return (Criteria) this;
        }

        public Criteria andBIdNotBetween(Integer value1, Integer value2) {
            addCriterion("b_id not between", value1, value2, "bId");
            return (Criteria) this;
        }

        public Criteria andBIsbnIsNull() {
            addCriterion("b_isbn is null");
            return (Criteria) this;
        }

        public Criteria andBIsbnIsNotNull() {
            addCriterion("b_isbn is not null");
            return (Criteria) this;
        }

        public Criteria andBIsbnEqualTo(String value) {
            addCriterion("b_isbn =", value, "bIsbn");
            return (Criteria) this;
        }

        public Criteria andBIsbnNotEqualTo(String value) {
            addCriterion("b_isbn <>", value, "bIsbn");
            return (Criteria) this;
        }

        public Criteria andBIsbnGreaterThan(String value) {
            addCriterion("b_isbn >", value, "bIsbn");
            return (Criteria) this;
        }

        public Criteria andBIsbnGreaterThanOrEqualTo(String value) {
            addCriterion("b_isbn >=", value, "bIsbn");
            return (Criteria) this;
        }

        public Criteria andBIsbnLessThan(String value) {
            addCriterion("b_isbn <", value, "bIsbn");
            return (Criteria) this;
        }

        public Criteria andBIsbnLessThanOrEqualTo(String value) {
            addCriterion("b_isbn <=", value, "bIsbn");
            return (Criteria) this;
        }

        public Criteria andBIsbnLike(String value) {
            addCriterion("b_isbn like", value, "bIsbn");
            return (Criteria) this;
        }

        public Criteria andBIsbnNotLike(String value) {
            addCriterion("b_isbn not like", value, "bIsbn");
            return (Criteria) this;
        }

        public Criteria andBIsbnIn(List<String> values) {
            addCriterion("b_isbn in", values, "bIsbn");
            return (Criteria) this;
        }

        public Criteria andBIsbnNotIn(List<String> values) {
            addCriterion("b_isbn not in", values, "bIsbn");
            return (Criteria) this;
        }

        public Criteria andBIsbnBetween(String value1, String value2) {
            addCriterion("b_isbn between", value1, value2, "bIsbn");
            return (Criteria) this;
        }

        public Criteria andBIsbnNotBetween(String value1, String value2) {
            addCriterion("b_isbn not between", value1, value2, "bIsbn");
            return (Criteria) this;
        }

        public Criteria andBNameIsNull() {
            addCriterion("b_name is null");
            return (Criteria) this;
        }

        public Criteria andBNameIsNotNull() {
            addCriterion("b_name is not null");
            return (Criteria) this;
        }

        public Criteria andBNameEqualTo(String value) {
            addCriterion("b_name =", value, "bName");
            return (Criteria) this;
        }

        public Criteria andBNameNotEqualTo(String value) {
            addCriterion("b_name <>", value, "bName");
            return (Criteria) this;
        }

        public Criteria andBNameGreaterThan(String value) {
            addCriterion("b_name >", value, "bName");
            return (Criteria) this;
        }

        public Criteria andBNameGreaterThanOrEqualTo(String value) {
            addCriterion("b_name >=", value, "bName");
            return (Criteria) this;
        }

        public Criteria andBNameLessThan(String value) {
            addCriterion("b_name <", value, "bName");
            return (Criteria) this;
        }

        public Criteria andBNameLessThanOrEqualTo(String value) {
            addCriterion("b_name <=", value, "bName");
            return (Criteria) this;
        }

        public Criteria andBNameLike(String value) {
            addCriterion("b_name like", value, "bName");
            return (Criteria) this;
        }

        public Criteria andBNameNotLike(String value) {
            addCriterion("b_name not like", value, "bName");
            return (Criteria) this;
        }

        public Criteria andBNameIn(List<String> values) {
            addCriterion("b_name in", values, "bName");
            return (Criteria) this;
        }

        public Criteria andBNameNotIn(List<String> values) {
            addCriterion("b_name not in", values, "bName");
            return (Criteria) this;
        }

        public Criteria andBNameBetween(String value1, String value2) {
            addCriterion("b_name between", value1, value2, "bName");
            return (Criteria) this;
        }

        public Criteria andBNameNotBetween(String value1, String value2) {
            addCriterion("b_name not between", value1, value2, "bName");
            return (Criteria) this;
        }

        public Criteria andBAuthorIsNull() {
            addCriterion("b_author is null");
            return (Criteria) this;
        }

        public Criteria andBAuthorIsNotNull() {
            addCriterion("b_author is not null");
            return (Criteria) this;
        }

        public Criteria andBAuthorEqualTo(String value) {
            addCriterion("b_author =", value, "bAuthor");
            return (Criteria) this;
        }

        public Criteria andBAuthorNotEqualTo(String value) {
            addCriterion("b_author <>", value, "bAuthor");
            return (Criteria) this;
        }

        public Criteria andBAuthorGreaterThan(String value) {
            addCriterion("b_author >", value, "bAuthor");
            return (Criteria) this;
        }

        public Criteria andBAuthorGreaterThanOrEqualTo(String value) {
            addCriterion("b_author >=", value, "bAuthor");
            return (Criteria) this;
        }

        public Criteria andBAuthorLessThan(String value) {
            addCriterion("b_author <", value, "bAuthor");
            return (Criteria) this;
        }

        public Criteria andBAuthorLessThanOrEqualTo(String value) {
            addCriterion("b_author <=", value, "bAuthor");
            return (Criteria) this;
        }

        public Criteria andBAuthorLike(String value) {
            addCriterion("b_author like", value, "bAuthor");
            return (Criteria) this;
        }

        public Criteria andBAuthorNotLike(String value) {
            addCriterion("b_author not like", value, "bAuthor");
            return (Criteria) this;
        }

        public Criteria andBAuthorIn(List<String> values) {
            addCriterion("b_author in", values, "bAuthor");
            return (Criteria) this;
        }

        public Criteria andBAuthorNotIn(List<String> values) {
            addCriterion("b_author not in", values, "bAuthor");
            return (Criteria) this;
        }

        public Criteria andBAuthorBetween(String value1, String value2) {
            addCriterion("b_author between", value1, value2, "bAuthor");
            return (Criteria) this;
        }

        public Criteria andBAuthorNotBetween(String value1, String value2) {
            addCriterion("b_author not between", value1, value2, "bAuthor");
            return (Criteria) this;
        }

        public Criteria andBPublisherIsNull() {
            addCriterion("b_publisher is null");
            return (Criteria) this;
        }

        public Criteria andBPublisherIsNotNull() {
            addCriterion("b_publisher is not null");
            return (Criteria) this;
        }

        public Criteria andBPublisherEqualTo(String value) {
            addCriterion("b_publisher =", value, "bPublisher");
            return (Criteria) this;
        }

        public Criteria andBPublisherNotEqualTo(String value) {
            addCriterion("b_publisher <>", value, "bPublisher");
            return (Criteria) this;
        }

        public Criteria andBPublisherGreaterThan(String value) {
            addCriterion("b_publisher >", value, "bPublisher");
            return (Criteria) this;
        }

        public Criteria andBPublisherGreaterThanOrEqualTo(String value) {
            addCriterion("b_publisher >=", value, "bPublisher");
            return (Criteria) this;
        }

        public Criteria andBPublisherLessThan(String value) {
            addCriterion("b_publisher <", value, "bPublisher");
            return (Criteria) this;
        }

        public Criteria andBPublisherLessThanOrEqualTo(String value) {
            addCriterion("b_publisher <=", value, "bPublisher");
            return (Criteria) this;
        }

        public Criteria andBPublisherLike(String value) {
            addCriterion("b_publisher like", value, "bPublisher");
            return (Criteria) this;
        }

        public Criteria andBPublisherNotLike(String value) {
            addCriterion("b_publisher not like", value, "bPublisher");
            return (Criteria) this;
        }

        public Criteria andBPublisherIn(List<String> values) {
            addCriterion("b_publisher in", values, "bPublisher");
            return (Criteria) this;
        }

        public Criteria andBPublisherNotIn(List<String> values) {
            addCriterion("b_publisher not in", values, "bPublisher");
            return (Criteria) this;
        }

        public Criteria andBPublisherBetween(String value1, String value2) {
            addCriterion("b_publisher between", value1, value2, "bPublisher");
            return (Criteria) this;
        }

        public Criteria andBPublisherNotBetween(String value1, String value2) {
            addCriterion("b_publisher not between", value1, value2, "bPublisher");
            return (Criteria) this;
        }

        public Criteria andBPriceIsNull() {
            addCriterion("b_price is null");
            return (Criteria) this;
        }

        public Criteria andBPriceIsNotNull() {
            addCriterion("b_price is not null");
            return (Criteria) this;
        }

        public Criteria andBPriceEqualTo(Double value) {
            addCriterion("b_price =", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceNotEqualTo(Double value) {
            addCriterion("b_price <>", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceGreaterThan(Double value) {
            addCriterion("b_price >", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("b_price >=", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceLessThan(Double value) {
            addCriterion("b_price <", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceLessThanOrEqualTo(Double value) {
            addCriterion("b_price <=", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceIn(List<Double> values) {
            addCriterion("b_price in", values, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceNotIn(List<Double> values) {
            addCriterion("b_price not in", values, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceBetween(Double value1, Double value2) {
            addCriterion("b_price between", value1, value2, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceNotBetween(Double value1, Double value2) {
            addCriterion("b_price not between", value1, value2, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBCoverpicIsNull() {
            addCriterion("b_coverPic is null");
            return (Criteria) this;
        }

        public Criteria andBCoverpicIsNotNull() {
            addCriterion("b_coverPic is not null");
            return (Criteria) this;
        }

        public Criteria andBCoverpicEqualTo(String value) {
            addCriterion("b_coverPic =", value, "bCoverpic");
            return (Criteria) this;
        }

        public Criteria andBCoverpicNotEqualTo(String value) {
            addCriterion("b_coverPic <>", value, "bCoverpic");
            return (Criteria) this;
        }

        public Criteria andBCoverpicGreaterThan(String value) {
            addCriterion("b_coverPic >", value, "bCoverpic");
            return (Criteria) this;
        }

        public Criteria andBCoverpicGreaterThanOrEqualTo(String value) {
            addCriterion("b_coverPic >=", value, "bCoverpic");
            return (Criteria) this;
        }

        public Criteria andBCoverpicLessThan(String value) {
            addCriterion("b_coverPic <", value, "bCoverpic");
            return (Criteria) this;
        }

        public Criteria andBCoverpicLessThanOrEqualTo(String value) {
            addCriterion("b_coverPic <=", value, "bCoverpic");
            return (Criteria) this;
        }

        public Criteria andBCoverpicLike(String value) {
            addCriterion("b_coverPic like", value, "bCoverpic");
            return (Criteria) this;
        }

        public Criteria andBCoverpicNotLike(String value) {
            addCriterion("b_coverPic not like", value, "bCoverpic");
            return (Criteria) this;
        }

        public Criteria andBCoverpicIn(List<String> values) {
            addCriterion("b_coverPic in", values, "bCoverpic");
            return (Criteria) this;
        }

        public Criteria andBCoverpicNotIn(List<String> values) {
            addCriterion("b_coverPic not in", values, "bCoverpic");
            return (Criteria) this;
        }

        public Criteria andBCoverpicBetween(String value1, String value2) {
            addCriterion("b_coverPic between", value1, value2, "bCoverpic");
            return (Criteria) this;
        }

        public Criteria andBCoverpicNotBetween(String value1, String value2) {
            addCriterion("b_coverPic not between", value1, value2, "bCoverpic");
            return (Criteria) this;
        }

        public Criteria andBIntroductionIsNull() {
            addCriterion("b_introduction is null");
            return (Criteria) this;
        }

        public Criteria andBIntroductionIsNotNull() {
            addCriterion("b_introduction is not null");
            return (Criteria) this;
        }

        public Criteria andBIntroductionEqualTo(String value) {
            addCriterion("b_introduction =", value, "bIntroduction");
            return (Criteria) this;
        }

        public Criteria andBIntroductionNotEqualTo(String value) {
            addCriterion("b_introduction <>", value, "bIntroduction");
            return (Criteria) this;
        }

        public Criteria andBIntroductionGreaterThan(String value) {
            addCriterion("b_introduction >", value, "bIntroduction");
            return (Criteria) this;
        }

        public Criteria andBIntroductionGreaterThanOrEqualTo(String value) {
            addCriterion("b_introduction >=", value, "bIntroduction");
            return (Criteria) this;
        }

        public Criteria andBIntroductionLessThan(String value) {
            addCriterion("b_introduction <", value, "bIntroduction");
            return (Criteria) this;
        }

        public Criteria andBIntroductionLessThanOrEqualTo(String value) {
            addCriterion("b_introduction <=", value, "bIntroduction");
            return (Criteria) this;
        }

        public Criteria andBIntroductionLike(String value) {
            addCriterion("b_introduction like", value, "bIntroduction");
            return (Criteria) this;
        }

        public Criteria andBIntroductionNotLike(String value) {
            addCriterion("b_introduction not like", value, "bIntroduction");
            return (Criteria) this;
        }

        public Criteria andBIntroductionIn(List<String> values) {
            addCriterion("b_introduction in", values, "bIntroduction");
            return (Criteria) this;
        }

        public Criteria andBIntroductionNotIn(List<String> values) {
            addCriterion("b_introduction not in", values, "bIntroduction");
            return (Criteria) this;
        }

        public Criteria andBIntroductionBetween(String value1, String value2) {
            addCriterion("b_introduction between", value1, value2, "bIntroduction");
            return (Criteria) this;
        }

        public Criteria andBIntroductionNotBetween(String value1, String value2) {
            addCriterion("b_introduction not between", value1, value2, "bIntroduction");
            return (Criteria) this;
        }

        public Criteria andBScoreIsNull() {
            addCriterion("b_score is null");
            return (Criteria) this;
        }

        public Criteria andBScoreIsNotNull() {
            addCriterion("b_score is not null");
            return (Criteria) this;
        }

        public Criteria andBScoreEqualTo(Integer value) {
            addCriterion("b_score =", value, "bScore");
            return (Criteria) this;
        }

        public Criteria andBScoreNotEqualTo(Integer value) {
            addCriterion("b_score <>", value, "bScore");
            return (Criteria) this;
        }

        public Criteria andBScoreGreaterThan(Integer value) {
            addCriterion("b_score >", value, "bScore");
            return (Criteria) this;
        }

        public Criteria andBScoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("b_score >=", value, "bScore");
            return (Criteria) this;
        }

        public Criteria andBScoreLessThan(Integer value) {
            addCriterion("b_score <", value, "bScore");
            return (Criteria) this;
        }

        public Criteria andBScoreLessThanOrEqualTo(Integer value) {
            addCriterion("b_score <=", value, "bScore");
            return (Criteria) this;
        }

        public Criteria andBScoreIn(List<Integer> values) {
            addCriterion("b_score in", values, "bScore");
            return (Criteria) this;
        }

        public Criteria andBScoreNotIn(List<Integer> values) {
            addCriterion("b_score not in", values, "bScore");
            return (Criteria) this;
        }

        public Criteria andBScoreBetween(Integer value1, Integer value2) {
            addCriterion("b_score between", value1, value2, "bScore");
            return (Criteria) this;
        }

        public Criteria andBScoreNotBetween(Integer value1, Integer value2) {
            addCriterion("b_score not between", value1, value2, "bScore");
            return (Criteria) this;
        }

        public Criteria andBStorageIsNull() {
            addCriterion("b_storage is null");
            return (Criteria) this;
        }

        public Criteria andBStorageIsNotNull() {
            addCriterion("b_storage is not null");
            return (Criteria) this;
        }

        public Criteria andBStorageEqualTo(Integer value) {
            addCriterion("b_storage =", value, "bStorage");
            return (Criteria) this;
        }

        public Criteria andBStorageNotEqualTo(Integer value) {
            addCriterion("b_storage <>", value, "bStorage");
            return (Criteria) this;
        }

        public Criteria andBStorageGreaterThan(Integer value) {
            addCriterion("b_storage >", value, "bStorage");
            return (Criteria) this;
        }

        public Criteria andBStorageGreaterThanOrEqualTo(Integer value) {
            addCriterion("b_storage >=", value, "bStorage");
            return (Criteria) this;
        }

        public Criteria andBStorageLessThan(Integer value) {
            addCriterion("b_storage <", value, "bStorage");
            return (Criteria) this;
        }

        public Criteria andBStorageLessThanOrEqualTo(Integer value) {
            addCriterion("b_storage <=", value, "bStorage");
            return (Criteria) this;
        }

        public Criteria andBStorageIn(List<Integer> values) {
            addCriterion("b_storage in", values, "bStorage");
            return (Criteria) this;
        }

        public Criteria andBStorageNotIn(List<Integer> values) {
            addCriterion("b_storage not in", values, "bStorage");
            return (Criteria) this;
        }

        public Criteria andBStorageBetween(Integer value1, Integer value2) {
            addCriterion("b_storage between", value1, value2, "bStorage");
            return (Criteria) this;
        }

        public Criteria andBStorageNotBetween(Integer value1, Integer value2) {
            addCriterion("b_storage not between", value1, value2, "bStorage");
            return (Criteria) this;
        }

        public Criteria andBSalesIsNull() {
            addCriterion("b_sales is null");
            return (Criteria) this;
        }

        public Criteria andBSalesIsNotNull() {
            addCriterion("b_sales is not null");
            return (Criteria) this;
        }

        public Criteria andBSalesEqualTo(Integer value) {
            addCriterion("b_sales =", value, "bSales");
            return (Criteria) this;
        }

        public Criteria andBSalesNotEqualTo(Integer value) {
            addCriterion("b_sales <>", value, "bSales");
            return (Criteria) this;
        }

        public Criteria andBSalesGreaterThan(Integer value) {
            addCriterion("b_sales >", value, "bSales");
            return (Criteria) this;
        }

        public Criteria andBSalesGreaterThanOrEqualTo(Integer value) {
            addCriterion("b_sales >=", value, "bSales");
            return (Criteria) this;
        }

        public Criteria andBSalesLessThan(Integer value) {
            addCriterion("b_sales <", value, "bSales");
            return (Criteria) this;
        }

        public Criteria andBSalesLessThanOrEqualTo(Integer value) {
            addCriterion("b_sales <=", value, "bSales");
            return (Criteria) this;
        }

        public Criteria andBSalesIn(List<Integer> values) {
            addCriterion("b_sales in", values, "bSales");
            return (Criteria) this;
        }

        public Criteria andBSalesNotIn(List<Integer> values) {
            addCriterion("b_sales not in", values, "bSales");
            return (Criteria) this;
        }

        public Criteria andBSalesBetween(Integer value1, Integer value2) {
            addCriterion("b_sales between", value1, value2, "bSales");
            return (Criteria) this;
        }

        public Criteria andBSalesNotBetween(Integer value1, Integer value2) {
            addCriterion("b_sales not between", value1, value2, "bSales");
            return (Criteria) this;
        }

        public Criteria andBDiscountIsNull() {
            addCriterion("b_discount is null");
            return (Criteria) this;
        }

        public Criteria andBDiscountIsNotNull() {
            addCriterion("b_discount is not null");
            return (Criteria) this;
        }

        public Criteria andBDiscountEqualTo(Double value) {
            addCriterion("b_discount =", value, "bDiscount");
            return (Criteria) this;
        }

        public Criteria andBDiscountNotEqualTo(Double value) {
            addCriterion("b_discount <>", value, "bDiscount");
            return (Criteria) this;
        }

        public Criteria andBDiscountGreaterThan(Double value) {
            addCriterion("b_discount >", value, "bDiscount");
            return (Criteria) this;
        }

        public Criteria andBDiscountGreaterThanOrEqualTo(Double value) {
            addCriterion("b_discount >=", value, "bDiscount");
            return (Criteria) this;
        }

        public Criteria andBDiscountLessThan(Double value) {
            addCriterion("b_discount <", value, "bDiscount");
            return (Criteria) this;
        }

        public Criteria andBDiscountLessThanOrEqualTo(Double value) {
            addCriterion("b_discount <=", value, "bDiscount");
            return (Criteria) this;
        }

        public Criteria andBDiscountIn(List<Double> values) {
            addCriterion("b_discount in", values, "bDiscount");
            return (Criteria) this;
        }

        public Criteria andBDiscountNotIn(List<Double> values) {
            addCriterion("b_discount not in", values, "bDiscount");
            return (Criteria) this;
        }

        public Criteria andBDiscountBetween(Double value1, Double value2) {
            addCriterion("b_discount between", value1, value2, "bDiscount");
            return (Criteria) this;
        }

        public Criteria andBDiscountNotBetween(Double value1, Double value2) {
            addCriterion("b_discount not between", value1, value2, "bDiscount");
            return (Criteria) this;
        }

        public Criteria andBTypeIsNull() {
            addCriterion("b_type is null");
            return (Criteria) this;
        }

        public Criteria andBTypeIsNotNull() {
            addCriterion("b_type is not null");
            return (Criteria) this;
        }

        public Criteria andBTypeEqualTo(String value) {
            addCriterion("b_type =", value, "bType");
            return (Criteria) this;
        }

        public Criteria andBTypeNotEqualTo(String value) {
            addCriterion("b_type <>", value, "bType");
            return (Criteria) this;
        }

        public Criteria andBTypeGreaterThan(String value) {
            addCriterion("b_type >", value, "bType");
            return (Criteria) this;
        }

        public Criteria andBTypeGreaterThanOrEqualTo(String value) {
            addCriterion("b_type >=", value, "bType");
            return (Criteria) this;
        }

        public Criteria andBTypeLessThan(String value) {
            addCriterion("b_type <", value, "bType");
            return (Criteria) this;
        }

        public Criteria andBTypeLessThanOrEqualTo(String value) {
            addCriterion("b_type <=", value, "bType");
            return (Criteria) this;
        }

        public Criteria andBTypeLike(String value) {
            addCriterion("b_type like", value, "bType");
            return (Criteria) this;
        }

        public Criteria andBTypeNotLike(String value) {
            addCriterion("b_type not like", value, "bType");
            return (Criteria) this;
        }

        public Criteria andBTypeIn(List<String> values) {
            addCriterion("b_type in", values, "bType");
            return (Criteria) this;
        }

        public Criteria andBTypeNotIn(List<String> values) {
            addCriterion("b_type not in", values, "bType");
            return (Criteria) this;
        }

        public Criteria andBTypeBetween(String value1, String value2) {
            addCriterion("b_type between", value1, value2, "bType");
            return (Criteria) this;
        }

        public Criteria andBTypeNotBetween(String value1, String value2) {
            addCriterion("b_type not between", value1, value2, "bType");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}