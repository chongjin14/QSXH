package com.qsxh.entity;

public class Role {
    private String roleid;
    private String rname;

    private int limit;
    private int page;
    public Role() {
    }

    public Role(String roleid, String rname, int limit, int page) {
        this.roleid = roleid;
        this.rname = rname;
        this.limit = limit;
        this.page = page;
    }

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }
}
