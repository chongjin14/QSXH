package com.qsxh.entity;

public class TblRelation {

    private String fromid;
    private String toid;
    private String fgood;
    private String ffollow;

    public TblRelation(){}

    public String getFromid() {
        return fromid;
    }

    public void setFromid(String fromid) {
        this.fromid = fromid;
    }

    public String getToid() {
        return toid;
    }

    public void setToid(String toid) {
        this.toid = toid;
    }

    public String getFgood() {
        return fgood;
    }

    public void setFgood(String fgood) {
        this.fgood = fgood;
    }

    public String getFfollow() {
        return ffollow;
    }

    public void setFfollow(String ffollow) {
        this.ffollow = ffollow;
    }
}
