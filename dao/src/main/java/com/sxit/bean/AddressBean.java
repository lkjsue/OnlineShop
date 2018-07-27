package com.sxit.bean;

/**
 * Created by 孙淼 on 2018/5/25 15:16
 */
public class AddressBean {
    private long addId;
    private long userid;
    private String addinfo;
    private String recivename;
    private String recivetel;
    private Integer state;

    public long getAddId() {
        return addId;
    }

    public void setAddId(long addId) {
        this.addId = addId;
    }

    public long getUserid() {
        return userid;
    }

    public void setUserid(long userid) {
        this.userid = userid;
    }

    public String getAddinfo() {
        return addinfo;
    }

    public void setAddinfo(String addinfo) {
        this.addinfo = addinfo;
    }

    public String getRecivename() {
        return recivename;
    }

    public void setRecivename(String recivename) {
        this.recivename = recivename;
    }

    public String getRecivetel() {
        return recivetel;
    }

    public void setRecivetel(String recivetel) {
        this.recivetel = recivetel;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}