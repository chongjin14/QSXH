package com.qsxh.entity;
//约会记录实体
public class Dating {
    private Integer dateid;
    private String ddate;//日期
    private String dtime;//时间
    private String dfromid;
    private String dtoid;
    private String dcontext;//约会内容
    private String dstate;//状态
    private String dpay;//买单方式
    private String daddress;//地点
    private String dreturn;//被约人回复

    public Dating() {
    }

    public Dating(Integer dateid, String ddate, String dtime, String dfromid, String dtoid, String dcontext, String dstate, String dpay, String daddress, String dreturn) {
        this.dateid = dateid;
        this.ddate = ddate;
        this.dtime = dtime;
        this.dfromid = dfromid;
        this.dtoid = dtoid;
        this.dcontext = dcontext;
        this.dstate = dstate;
        this.dpay = dpay;
        this.daddress = daddress;
        this.dreturn = dreturn;
    }

    public Integer getDateid() {
        return dateid;
    }

    public void setDateid(Integer dateid) {
        this.dateid = dateid;
    }

    public String getDdate() {
        return ddate;
    }

    public void setDdate(String ddate) {
        this.ddate = ddate;
    }

    public String getDtime() {
        return dtime;
    }

    public void setDtime(String dtime) {
        this.dtime = dtime;
    }

    public String getDfromid() {
        return dfromid;
    }

    public void setDfromid(String dfromid) {
        this.dfromid = dfromid;
    }

    public String getDtoid() {
        return dtoid;
    }

    public void setDtoid(String dtoid) {
        this.dtoid = dtoid;
    }

    public String getDcontext() {
        return dcontext;
    }

    public void setDcontext(String dcontext) {
        this.dcontext = dcontext;
    }

    public String getDstate() {
        return dstate;
    }

    public void setDstate(String dstate) {
        this.dstate = dstate;
    }

    public String getDpay() {
        return dpay;
    }

    public void setDpay(String dpay) {
        this.dpay = dpay;
    }

    public String getDaddress() {
        return daddress;
    }

    public void setDaddress(String daddress) {
        this.daddress = daddress;
    }

    public String getDreturn() {
        return dreturn;
    }

    public void setDreturn(String dreturn) {
        this.dreturn = dreturn;
    }
}
