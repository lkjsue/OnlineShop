package com.sxit.bean;

import java.util.Date;

/**
 * Created by 孙淼 on 2018/5/30 10:40
 */
public class CommentBean {

    private Long comno;
    private Long detailId;
    private String cplot;
    private Date ctime;
    private Integer ctype;

    private String timeStr;


    public String getTimeStr() {
        return timeStr;
    }

    public void setTimeStr(String timeStr) {
        this.timeStr = timeStr;
    }

    public Long getComno() {
        return comno;
    }

    public void setComno(Long comno) {
        this.comno = comno;
    }

    public Long getDetailId() {
        return detailId;
    }

    public void setDetailId(Long detailId) {
        this.detailId = detailId;
    }

    public String getCplot() {
        return cplot;
    }

    public void setCplot(String cplot) {
        this.cplot = cplot;
    }

    public Date getCtime() {
        return ctime;
    }

    public void setCtime(Date ctime) {
        this.ctime = ctime;
    }

    public Integer getCtype() {
        return ctype;
    }

    public void setCtype(Integer ctype) {
        this.ctype = ctype;
    }
}