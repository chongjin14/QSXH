package com.qsxh.entity;

public class Account {
    private int accountid;
    private String adate;
    private String agold;
    private String atype;
    private String rmb;
    private String userid;

    private Param param;

    public Param getParam() {
        return param;
    }

    public void setParam(Param param) {
        this.param = param;
    }

    public Account() {

    }

    public Account(int accountid, String adate, String agold, String atype, String rmb, String userid) {
        this.accountid = accountid;
        this.adate = adate;
        this.agold = agold;
        this.atype = atype;
        this.rmb = rmb;
        this.userid = userid;
    }
    public Account(String adate, String agold, String atype, String rmb, String userid) {
        this.adate = adate;
        this.agold = agold;
        this.atype = atype;
        this.rmb = rmb;
        this.userid = userid;
    }

    public int getAccountid() {
        return accountid;
    }

    public void setAccountid(int accountid) {
        this.accountid = accountid;
    }

    public String getAdate() {
        return adate;
    }

    public void setAdate(String adate) {
        this.adate = adate;
    }

    public String getAgold() {
        return agold;
    }

    public void setAgold(String agold) {
        this.agold = agold;
    }

    public String getAtype() {
        return atype;
    }

    public void setAtype(String atype) {
        this.atype = atype;
    }

    public String getRmb() {
        return rmb;
    }

    public void setRmb(String rmb) {
        this.rmb = rmb;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }
}
