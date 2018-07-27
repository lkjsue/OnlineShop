package com.sxit.bean;

/**
 * Created by 孙淼 on 2018/5/24 11:41
 */
public class GoodsPicBean {
    private Long goodsid;
    private Long picno;
    private String picname;
    private Integer picType;

    public Long getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Long goodsid) {
        this.goodsid = goodsid;
    }

    public Long getPicno() {
        return picno;
    }

    public void setPicno(Long picno) {
        this.picno = picno;
    }

    public String getPicname() {
        return picname;
    }

    public void setPicname(String picname) {
        this.picname = picname;
    }

    public Integer getPicType() {
        return picType;
    }

    public void setPicType(Integer picType) {
        this.picType = picType;
    }
}