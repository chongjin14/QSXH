package com.qsxh.entity;
//(系统、活动)消息实体类
public class Inform {
    private Integer informid;
    private String itime;
    private String ititle;
    private String icontext;
    private String itype;
    private String itoid;
    private String iurl;
    private String istate;

    public Inform() {
    }

    public Inform(Integer informid, String itime, String ititle, String icontext, String itype, String itoid, String iurl, String istate) {
        this.informid = informid;
        this.itime = itime;
        this.ititle = ititle;
        this.icontext = icontext;
        this.itype = itype;
        this.itoid = itoid;
        this.iurl = iurl;
        this.istate = istate;
    }

    public Integer getInformid() {
        return informid;
    }

    public void setInformid(Integer informid) {
        this.informid = informid;
    }

    public String getItime() {
        return itime;
    }

    public void setItime(String itime) {
        this.itime = itime;
    }

    public String getItitle() {
        return ititle;
    }

    public void setItitle(String ititle) {
        this.ititle = ititle;
    }

    public String geticontext() {
        return icontext;
    }

    public void seticontext(String icontext) {
        this.icontext = icontext;
    }

    public String getItype() {
        return itype;
    }

    public void setItype(String itype) {
        this.itype = itype;
    }

    public String getItoid() {
        return itoid;
    }

    public void setItoid(String itoid) {
        this.itoid = itoid;
    }

    public String getIurl() {
        return iurl;
    }

    public void setIurl(String iurl) {
        this.iurl = iurl;
    }

    public String getIstate() {
        return istate;
    }

    public void setIstate(String istate) {
        this.istate = istate;
    }
}
