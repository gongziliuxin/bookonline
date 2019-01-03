package com.java.bean;

import java.util.ArrayList;
import java.util.List;

public class CustomsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CustomsExample() {
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

        public Criteria andCIdIsNull() {
            addCriterion("c_id is null");
            return (Criteria) this;
        }

        public Criteria andCIdIsNotNull() {
            addCriterion("c_id is not null");
            return (Criteria) this;
        }

        public Criteria andCIdEqualTo(Integer value) {
            addCriterion("c_id =", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdNotEqualTo(Integer value) {
            addCriterion("c_id <>", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdGreaterThan(Integer value) {
            addCriterion("c_id >", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("c_id >=", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdLessThan(Integer value) {
            addCriterion("c_id <", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdLessThanOrEqualTo(Integer value) {
            addCriterion("c_id <=", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdIn(List<Integer> values) {
            addCriterion("c_id in", values, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdNotIn(List<Integer> values) {
            addCriterion("c_id not in", values, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdBetween(Integer value1, Integer value2) {
            addCriterion("c_id between", value1, value2, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdNotBetween(Integer value1, Integer value2) {
            addCriterion("c_id not between", value1, value2, "cId");
            return (Criteria) this;
        }

        public Criteria andCTelIsNull() {
            addCriterion("c_tel is null");
            return (Criteria) this;
        }

        public Criteria andCTelIsNotNull() {
            addCriterion("c_tel is not null");
            return (Criteria) this;
        }

        public Criteria andCTelEqualTo(String value) {
            addCriterion("c_tel =", value, "cTel");
            return (Criteria) this;
        }

        public Criteria andCTelNotEqualTo(String value) {
            addCriterion("c_tel <>", value, "cTel");
            return (Criteria) this;
        }

        public Criteria andCTelGreaterThan(String value) {
            addCriterion("c_tel >", value, "cTel");
            return (Criteria) this;
        }

        public Criteria andCTelGreaterThanOrEqualTo(String value) {
            addCriterion("c_tel >=", value, "cTel");
            return (Criteria) this;
        }

        public Criteria andCTelLessThan(String value) {
            addCriterion("c_tel <", value, "cTel");
            return (Criteria) this;
        }

        public Criteria andCTelLessThanOrEqualTo(String value) {
            addCriterion("c_tel <=", value, "cTel");
            return (Criteria) this;
        }

        public Criteria andCTelLike(String value) {
            addCriterion("c_tel like", value, "cTel");
            return (Criteria) this;
        }

        public Criteria andCTelNotLike(String value) {
            addCriterion("c_tel not like", value, "cTel");
            return (Criteria) this;
        }

        public Criteria andCTelIn(List<String> values) {
            addCriterion("c_tel in", values, "cTel");
            return (Criteria) this;
        }

        public Criteria andCTelNotIn(List<String> values) {
            addCriterion("c_tel not in", values, "cTel");
            return (Criteria) this;
        }

        public Criteria andCTelBetween(String value1, String value2) {
            addCriterion("c_tel between", value1, value2, "cTel");
            return (Criteria) this;
        }

        public Criteria andCTelNotBetween(String value1, String value2) {
            addCriterion("c_tel not between", value1, value2, "cTel");
            return (Criteria) this;
        }

        public Criteria andCPwIsNull() {
            addCriterion("c_pw is null");
            return (Criteria) this;
        }

        public Criteria andCPwIsNotNull() {
            addCriterion("c_pw is not null");
            return (Criteria) this;
        }

        public Criteria andCPwEqualTo(String value) {
            addCriterion("c_pw =", value, "cPw");
            return (Criteria) this;
        }

        public Criteria andCPwNotEqualTo(String value) {
            addCriterion("c_pw <>", value, "cPw");
            return (Criteria) this;
        }

        public Criteria andCPwGreaterThan(String value) {
            addCriterion("c_pw >", value, "cPw");
            return (Criteria) this;
        }

        public Criteria andCPwGreaterThanOrEqualTo(String value) {
            addCriterion("c_pw >=", value, "cPw");
            return (Criteria) this;
        }

        public Criteria andCPwLessThan(String value) {
            addCriterion("c_pw <", value, "cPw");
            return (Criteria) this;
        }

        public Criteria andCPwLessThanOrEqualTo(String value) {
            addCriterion("c_pw <=", value, "cPw");
            return (Criteria) this;
        }

        public Criteria andCPwLike(String value) {
            addCriterion("c_pw like", value, "cPw");
            return (Criteria) this;
        }

        public Criteria andCPwNotLike(String value) {
            addCriterion("c_pw not like", value, "cPw");
            return (Criteria) this;
        }

        public Criteria andCPwIn(List<String> values) {
            addCriterion("c_pw in", values, "cPw");
            return (Criteria) this;
        }

        public Criteria andCPwNotIn(List<String> values) {
            addCriterion("c_pw not in", values, "cPw");
            return (Criteria) this;
        }

        public Criteria andCPwBetween(String value1, String value2) {
            addCriterion("c_pw between", value1, value2, "cPw");
            return (Criteria) this;
        }

        public Criteria andCPwNotBetween(String value1, String value2) {
            addCriterion("c_pw not between", value1, value2, "cPw");
            return (Criteria) this;
        }

        public Criteria andCNicknameIsNull() {
            addCriterion("c_nickname is null");
            return (Criteria) this;
        }

        public Criteria andCNicknameIsNotNull() {
            addCriterion("c_nickname is not null");
            return (Criteria) this;
        }

        public Criteria andCNicknameEqualTo(String value) {
            addCriterion("c_nickname =", value, "cNickname");
            return (Criteria) this;
        }

        public Criteria andCNicknameNotEqualTo(String value) {
            addCriterion("c_nickname <>", value, "cNickname");
            return (Criteria) this;
        }

        public Criteria andCNicknameGreaterThan(String value) {
            addCriterion("c_nickname >", value, "cNickname");
            return (Criteria) this;
        }

        public Criteria andCNicknameGreaterThanOrEqualTo(String value) {
            addCriterion("c_nickname >=", value, "cNickname");
            return (Criteria) this;
        }

        public Criteria andCNicknameLessThan(String value) {
            addCriterion("c_nickname <", value, "cNickname");
            return (Criteria) this;
        }

        public Criteria andCNicknameLessThanOrEqualTo(String value) {
            addCriterion("c_nickname <=", value, "cNickname");
            return (Criteria) this;
        }

        public Criteria andCNicknameLike(String value) {
            addCriterion("c_nickname like", value, "cNickname");
            return (Criteria) this;
        }

        public Criteria andCNicknameNotLike(String value) {
            addCriterion("c_nickname not like", value, "cNickname");
            return (Criteria) this;
        }

        public Criteria andCNicknameIn(List<String> values) {
            addCriterion("c_nickname in", values, "cNickname");
            return (Criteria) this;
        }

        public Criteria andCNicknameNotIn(List<String> values) {
            addCriterion("c_nickname not in", values, "cNickname");
            return (Criteria) this;
        }

        public Criteria andCNicknameBetween(String value1, String value2) {
            addCriterion("c_nickname between", value1, value2, "cNickname");
            return (Criteria) this;
        }

        public Criteria andCNicknameNotBetween(String value1, String value2) {
            addCriterion("c_nickname not between", value1, value2, "cNickname");
            return (Criteria) this;
        }

        public Criteria andCNameIsNull() {
            addCriterion("c_name is null");
            return (Criteria) this;
        }

        public Criteria andCNameIsNotNull() {
            addCriterion("c_name is not null");
            return (Criteria) this;
        }

        public Criteria andCNameEqualTo(String value) {
            addCriterion("c_name =", value, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameNotEqualTo(String value) {
            addCriterion("c_name <>", value, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameGreaterThan(String value) {
            addCriterion("c_name >", value, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameGreaterThanOrEqualTo(String value) {
            addCriterion("c_name >=", value, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameLessThan(String value) {
            addCriterion("c_name <", value, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameLessThanOrEqualTo(String value) {
            addCriterion("c_name <=", value, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameLike(String value) {
            addCriterion("c_name like", value, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameNotLike(String value) {
            addCriterion("c_name not like", value, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameIn(List<String> values) {
            addCriterion("c_name in", values, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameNotIn(List<String> values) {
            addCriterion("c_name not in", values, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameBetween(String value1, String value2) {
            addCriterion("c_name between", value1, value2, "cName");
            return (Criteria) this;
        }

        public Criteria andCNameNotBetween(String value1, String value2) {
            addCriterion("c_name not between", value1, value2, "cName");
            return (Criteria) this;
        }

        public Criteria andCMailIsNull() {
            addCriterion("c_mail is null");
            return (Criteria) this;
        }

        public Criteria andCMailIsNotNull() {
            addCriterion("c_mail is not null");
            return (Criteria) this;
        }

        public Criteria andCMailEqualTo(String value) {
            addCriterion("c_mail =", value, "cMail");
            return (Criteria) this;
        }

        public Criteria andCMailNotEqualTo(String value) {
            addCriterion("c_mail <>", value, "cMail");
            return (Criteria) this;
        }

        public Criteria andCMailGreaterThan(String value) {
            addCriterion("c_mail >", value, "cMail");
            return (Criteria) this;
        }

        public Criteria andCMailGreaterThanOrEqualTo(String value) {
            addCriterion("c_mail >=", value, "cMail");
            return (Criteria) this;
        }

        public Criteria andCMailLessThan(String value) {
            addCriterion("c_mail <", value, "cMail");
            return (Criteria) this;
        }

        public Criteria andCMailLessThanOrEqualTo(String value) {
            addCriterion("c_mail <=", value, "cMail");
            return (Criteria) this;
        }

        public Criteria andCMailLike(String value) {
            addCriterion("c_mail like", value, "cMail");
            return (Criteria) this;
        }

        public Criteria andCMailNotLike(String value) {
            addCriterion("c_mail not like", value, "cMail");
            return (Criteria) this;
        }

        public Criteria andCMailIn(List<String> values) {
            addCriterion("c_mail in", values, "cMail");
            return (Criteria) this;
        }

        public Criteria andCMailNotIn(List<String> values) {
            addCriterion("c_mail not in", values, "cMail");
            return (Criteria) this;
        }

        public Criteria andCMailBetween(String value1, String value2) {
            addCriterion("c_mail between", value1, value2, "cMail");
            return (Criteria) this;
        }

        public Criteria andCMailNotBetween(String value1, String value2) {
            addCriterion("c_mail not between", value1, value2, "cMail");
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