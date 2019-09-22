package com.qsxh.entity;

public class Require {

    private String reqid;
    private String rsex;
    private String ragemin;
    private String ragemax;
    private String raddress;
    private String redu;
    private String rincome;
    private String userid;

    //无参构造
    public Require() {
    }
    //全参构造
    public Require(String reqid, String rsex, String ragemin, String ragemax,
                   String raddress, String redu, String rincome, String userid) {
        this.reqid = reqid;
        this.rsex = rsex;
        this.ragemin = ragemin;
        this.ragemax = ragemax;
        this.raddress = raddress;
        this.redu = redu;
        this.rincome = rincome;
        this.userid = userid;
    }

    public String getReqid() {
        return reqid;
    }

    public void setReqid(String reqid) {
        this.reqid = reqid;
    }

    public String getRsex() {
        return rsex;
    }

    public void setRsex(String rsex) {
        this.rsex = rsex;
    }

    public String getRagemin() {
        return ragemin;
    }

    public void setRagemin(String ragemin) {
        this.ragemin = ragemin;
    }

    public String getRagemax() {
        return ragemax;
    }

    public void setRagemax(String ragemax) {
        this.ragemax = ragemax;
    }

    public String getRaddress() {
        return raddress;
    }

    public void setRaddress(String raddress) {
        this.raddress = raddress;
    }

    public String getRedu() {
        return redu;
    }

    public void setRedu(String redu) {
        this.redu = redu;
    }

    public String getRincome() {
        return rincome;
    }

    public void setRincome(String rincome) {
        this.rincome = rincome;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }
}
