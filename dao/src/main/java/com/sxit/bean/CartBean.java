package com.sxit.bean;

/**
 * Created by 孙淼 on 2018/5/24 20:07
 */
public class CartBean extends GoodsBean {

    private Integer count;
    private String color;
    private String size;
    private String picPath;
    private long cartId;


    public long getCartId() {
        return cartId;
    }

    public void setCartId(long cartId) {
        this.cartId = cartId;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }


    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    @Override
    public String getPicPath() {
        return picPath;
    }

    @Override
    public void setPicPath(String picPath) {
        this.picPath = picPath;
    }
}