package com.sxit.dao;

import com.sxit.bean.OrderDetailBean;

import java.util.List;

public interface OrderDetailDao {

    int insertOrderDetail(OrderDetailBean bean);

    List<OrderDetailBean> queryOrderDetail(Long orderno);

    List<OrderDetailBean> queryOrderDetailByGoodsId(Long goodsid);
}
