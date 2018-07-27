package com.sxit.service;

import com.sxit.bean.OrderBean;
import com.sxit.bean.OrderDetailBean;

import java.util.List;

/**
 * Created by 孙淼 on 2018/5/25 13:42
 */
public interface OrderService {

    int  insertOrder(OrderBean bean);

    List<OrderBean> queryOrder(Long orderno, Long userId);
    List<OrderBean> queryAllOrder(Long userId);


}