package com.sxit.dao.impl;

import com.sxit.bean.OrderDetailBean;
import com.sxit.dao.BaseDao;
import com.sxit.dao.OrderDetailDao;

import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 孙淼 on 2018/5/25 13:37
 */
@Repository
public class OrderDatailDaoImpl extends BaseDao implements OrderDetailDao {
    @Override
    protected String getNameSpace() {
        return "torderdetail";
    }

    @Override
    public int insertOrderDetail(OrderDetailBean bean) {
        return this.getSqlSessionTemplate().insert("insertOrderDetail",bean);
    }

    @Override
    public List<OrderDetailBean> queryOrderDetail(Long orderno) {
        return this.getSqlSessionTemplate().selectList("queryOrderDetail",orderno);
    }

    @Override
    public List<OrderDetailBean> queryOrderDetailByGoodsId(Long goodsid) {
        return this.getSqlSessionTemplate().selectList("queryOrderDetailByGoodsId",goodsid);
    }
}