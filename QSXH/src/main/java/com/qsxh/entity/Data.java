package com.qsxh.entity;

public class Data {

    private String userid;
    private String usex;
    private String ubirthday;
    private String uwechat;
    private String uaddress;
    private String uheight;
    private String uweight;
    private String uedu;
    private String umerried;
    private String ublood;
    private String uschool;
    private String ucharm;
    private String uinstro;
    private String ugold;
    private String uincome;

    //无参构造
    public Data() {
    }

    //全参构造
    public Data(String userid, String usex, String ubirthday, String uwechat,
                String uaddress, String uheight, String uweight, String uedu,
                String umerried, String ublood, String uschool, String ucharm,
                String uinstro, String ugold, String uincome) {
        this.userid = userid;
        this.usex = usex;
        this.ubirthday = ubirthday;
        this.uwechat = uwechat;
        this.uaddress = uaddress;
        this.uheight = uheight;
        this.uweight = uweight;
        this.uedu = uedu;
        this.umerried = umerried;
        this.ublood = ublood;
        this.uschool = uschool;
        this.ucharm = ucharm;
        this.uinstro = uinstro;
        this.ugold = ugold;
        this.uincome = uincome;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUsex() {
        return usex;
    }

    public void setUsex(String usex) {
        this.usex = usex;
    }

    public String getUbirthday() {
        return ubirthday;
    }

    public void setUbirthday(String ubirthday) {
        this.ubirthday = ubirthday;
    }

    public String getUwechat() {
        return uwechat;
    }

    public void setUwechat(String uwechat) {
        this.uwechat = uwechat;
    }

    public String getUaddress() {
        return uaddress;
    }

    public void setUaddress(String uaddress) {
        this.uaddress = uaddress;
    }

    public String getUheight() {
        return uheight;
    }

    public void setUheight(String uheight) {
        this.uheight = uheight;
    }

    public String getUweight() {
        return uweight;
    }

    public void setUweight(String uweight) {
        this.uweight = uweight;
    }

    public String getUedu() {
        return uedu;
    }

    public void setUedu(String uedu) {
        this.uedu = uedu;
    }

    public String getUmerried() {
        return umerried;
    }

    public void setUmerried(String umerried) {
        this.umerried = umerried;
    }

    public String getUblood() {
        return ublood;
    }

    public void setUblood(String ublood) {
        this.ublood = ublood;
    }

    public String getUschool() {
        return uschool;
    }

    public void setUschool(String uschool) {
        this.uschool = uschool;
    }

    public String getUcharm() {
        return ucharm;
    }

    public void setUcharm(String ucharm) {
        this.ucharm = ucharm;
    }

    public String getUinstro() {
        return uinstro;
    }

    public void setUinstro(String uinstro) {
        this.uinstro = uinstro;
    }

    public String getUgold() {
        return ugold;
    }

    public void setUgold(String ugold) {
        this.ugold = ugold;
    }

    public String getUincome() {
        return uincome;
    }

    public void setUincome(String uincome) {
        this.uincome = uincome;
    }
}
