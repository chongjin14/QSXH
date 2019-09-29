package com.qsxh.entity;

public class Message {
    private Integer msgid;
    private String mtime;
    private String mfromid;
    private String mtoid;
    private String mcontext;
    private String mstate;
    private String mtitle;

    public Message() {
    }

    public Message(Integer msgid, String mtime, String mfromid, String mtoid, String mcontext, String mstate, String mtitle) {
        this.msgid = msgid;
        this.mtime = mtime;
        this.mfromid = mfromid;
        this.mtoid = mtoid;
        this.mcontext = mcontext;
        this.mstate = mstate;
        this.mtitle = mtitle;
    }

    public Integer getMsgid() {
        return msgid;
    }

    public void setMsgid(Integer msgid) {
        this.msgid = msgid;
    }

    public String getMtime() {
        return mtime;
    }

    public void setMtime(String mtime) {
        this.mtime = mtime;
    }

    public String getMfromid() {
        return mfromid;
    }

    public void setMfromid(String mfromid) {
        this.mfromid = mfromid;
    }

    public String getMtoid() {
        return mtoid;
    }

    public void setMtoid(String mtoid) {
        this.mtoid = mtoid;
    }

    public String getMcontext() {
        return mcontext;
    }

    public void setMcontext(String mcontext) {
        this.mcontext = mcontext;
    }

    public String getMstate() {
        return mstate;
    }

    public void setMstate(String mstate) {
        this.mstate = mstate;
    }

    public String getMtitle() {
        return mtitle;
    }

    public void setMtitle(String mtitle) {
        this.mtitle = mtitle;
    }
}
