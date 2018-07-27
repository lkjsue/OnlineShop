package com.sxit.bean;

import java.util.Date;
import java.util.List;

/**
 * Created by 孙淼 on 2018/5/25 12:26
 */
public class OrderBean {
    private Long orderId;
    private Long userid;
    private Date time;
    private Integer state;
    private Double allmoney;
    private Long orderno;
    private String add;
    private List<OrderGoodsBean> list;
    private String timeStr;

    public String getTimeStr() {
        return timeStr;
    }

    public void setTimeStr(String timeStr) {
        this.timeStr = timeStr;
    }

    public List<OrderGoodsBean> getList() {
        return list;
    }

    public void setList(List<OrderGoodsBean> list) {
        this.list = list;
    }

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    public Long getUserid() {
        return userid;
    }

    public void setUserid(Long userid) {
        this.userid = userid;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Double getAllmoney() {
        return allmoney;
    }

    public void setAllmoney(Double allmoney) {
        this.allmoney = allmoney;
    }

    public Long getOrderno() {
        return orderno;
    }

    public void setOrderno(Long orderno) {
        this.orderno = orderno;
    }

    public String getAdd() {
        return add;
    }

    public void setAdd(String add) {
        this.add = add;
    }
}