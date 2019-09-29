package com.qsxh.entity;

public class User {

    private String userid;
    private String upass;
    private String uname;
    private String roleid;
    private String uimgurl;
    private String ustate;
    private String uonline;
    private String regdate;

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
    private String uincome;

    private String conste;
    private String begindate;
    private String enddate;
    private int page;
    private int limit;

    private String [] userids;
    private String rname;
    //无参构造
    public User() {
    }
    //全参构造


    public User(String userid, String upass, String uname, String roleid, String uimgurl, String ustate, String uonline, String regdate, String usex, String ubirthday, String uwechat, String uaddress, String uheight, String uweight, String uedu, String umerried, String ublood, String uschool, String uincome, String conste, String begindate, String enddate, int page, int limit) {
        this.userid = userid;
        this.upass = upass;
        this.uname = uname;
        this.roleid = roleid;
        this.uimgurl = uimgurl;
        this.ustate = ustate;
        this.uonline = uonline;
        this.regdate = regdate;
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
        this.uincome = uincome;
        this.conste = conste;
        this.begindate = begindate;
        this.enddate = enddate;
        this.page = page;
        this.limit = limit;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public String[] getUserids() {
        return userids;
    }

    public void setUserids(String[] userids) {
        this.userids = userids;
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

    public String getUincome() {
        return uincome;
    }

    public void setUincome(String uincome) {
        this.uincome = uincome;
    }

    public String getConste() {
        return conste;
    }

    public void setConste(String conste) {
        this.conste = conste;
    }

    public String getBegindate() {
        return begindate;
    }

    public void setBegindate(String begindate) {
        this.begindate = begindate;
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUpass() {
        return upass;
    }

    public void setUpass(String upass) {
        this.upass = upass;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid;
    }

    public String getUimgurl() {
        return uimgurl;
    }

    public void setUimgurl(String uimgurl) {
        this.uimgurl = uimgurl;
    }

    public String getUstate() {
        return ustate;
    }

    public void setUstate(String ustate) {
        this.ustate = ustate;
    }

    public String getUonline() {
        return uonline;
    }

    public void setUonline(String uonline) {
        this.uonline = uonline;
    }

    public String getRegdate() {
        return regdate;
    }

    public void setRegdate(String regdate) {
        this.regdate = regdate;
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
}
