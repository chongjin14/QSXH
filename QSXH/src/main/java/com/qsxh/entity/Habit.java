package com.qsxh.entity;

public class Habit {

    private String habitid;
    private String userid;
    private String hname;

    //无参构造
    public Habit() {
    }
    //全参构造
    public Habit(String habitid, String userid, String hname) {
        this.habitid = habitid;
        this.userid = userid;
        this.hname = hname;
    }

    public String getHabitid() {
        return habitid;
    }

    public void setHabitid(String habitid) {
        this.habitid = habitid;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getHname() {
        return hname;
    }

    public void setHname(String hname) {
        this.hname = hname;
    }
}
