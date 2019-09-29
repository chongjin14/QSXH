package com.qsxh.entity;

public class Param {
    private String  paramid;
    private String pname;
    private String pid;


    public Param(String paramid, String pname, String pid) {
        this.paramid = paramid;
        this.pname = pname;
        this.pid = pid;
    }

    public Param() {
    }

    public String getParamid() {
        return paramid;
    }

    public void setParamid(String paramid) {
        this.paramid = paramid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }
}
