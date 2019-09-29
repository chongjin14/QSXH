package com.qsxh.entity;

public class TblUser {

    private String userid;
    private String upass;
    private String uname;
    private String roleid;
    private String uimgurl;
    private String ustate;
    private String uonline;
    private String regdate;

    //无参构造
    public TblUser() {
    }
    //全参构造
    public TblUser(String userid, String upass, String uname, String roleid, String uimgurl,
                   String ustate, String uonline, String regdate) {
        this.userid = userid;
        this.upass = upass;
        this.uname = uname;
        this.roleid = roleid;
        this.uimgurl = uimgurl;
        this.ustate = ustate;
        this.uonline = uonline;
        this.regdate = regdate;
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
}
