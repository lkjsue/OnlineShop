package com.sxit.bean;

import java.util.List;

/**
 * Created by 孙淼 on 2018/5/23 12:00
 */
public class GoodsBean {

    private Long goodsid;
    private String gname;
    private Integer state;
    private Integer type;
    private Double price;
    private String goodsDesc;
    private String picPath;
    private GoodsDetailBean detailBean;
    private List<GoodsPicBean> picBeans;


    public List<GoodsPicBean> getPicBeans() {
        return picBeans;
    }

    public void setPicBeans(List<GoodsPicBean> picBeans) {
        this.picBeans = picBeans;
    }

    public GoodsDetailBean getDetailBean() {
        return detailBean;
    }

    public void setDetailBean(GoodsDetailBean detailBean) {
        this.detailBean = detailBean;
    }

    public Long getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Long goodsid) {
        this.goodsid = goodsid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getGoodsDesc() {
        return goodsDesc;
    }

    public void setGoodsDesc(String goodsDesc) {
        this.goodsDesc = goodsDesc;
    }

    public String getPicPath() {
        return picPath;
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath;
    }
}