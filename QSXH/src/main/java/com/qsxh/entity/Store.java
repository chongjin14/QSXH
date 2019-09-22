package com.qsxh.entity;

public class Store {

    private String storeid;
    private String sname;
    private String saddress;
    private String sphone;
    private String surl;

    //无参构造
    public Store() {
    }
    //全参构造
    public Store(String storeid, String sname, String saddress, String sphone, String surl) {
        this.storeid = storeid;
        this.sname = sname;
        this.saddress = saddress;
        this.sphone = sphone;
        this.surl = surl;
    }

    public String getStoreid() {
        return storeid;
    }

    public void setStoreid(String storeid) {
        this.storeid = storeid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSaddress() {
        return saddress;
    }

    public void setSaddress(String saddress) {
        this.saddress = saddress;
    }

    public String getSphone() {
        return sphone;
    }

    public void setSphone(String sphone) {
        this.sphone = sphone;
    }

    public String getSurl() {
        return surl;
    }

    public void setSurl(String surl) {
        this.surl = surl;
    }
}
