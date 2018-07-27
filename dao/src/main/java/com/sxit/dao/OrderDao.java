package com.sxit.dao;

import com.sxit.bean.OrderBean;

import java.util.List;

/**
 * Created by 孙淼 on 2018/5/25 12:30
 */
public interface OrderDao {

    int insertOrder(OrderBean orderBean);

    List<OrderBean> queryOrder(Long orderno, Long userId);
    List<OrderBean> queryAllOrder(Long userId);
}