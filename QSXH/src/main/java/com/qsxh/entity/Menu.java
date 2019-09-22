package com.qsxh.entity;

public class Menu {

    private String menuid;
    private String mname;
    private String nurl;

    //无参构造
    public Menu() {
    }
    //全参构造
    public Menu(String menuid, String mname, String nurl) {
        this.menuid = menuid;
        this.mname = mname;
        this.nurl = nurl;
    }

    public String getMenuid() {
        return menuid;
    }

    public void setMenuid(String menuid) {
        this.menuid = menuid;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getNurl() {
        return nurl;
    }

    public void setNurl(String nurl) {
        this.nurl = nurl;
    }
}
