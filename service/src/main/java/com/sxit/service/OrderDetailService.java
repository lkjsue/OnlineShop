package com.sxit.service;

import com.sxit.bean.OrderDetailBean;
import com.sxit.bean.OrderGoodsBean;

import java.util.List;

/**
 * Created by 孙淼 on 2018/5/25 13:58
 */
public interface OrderDetailService {

    int  insertOrderDetail(OrderDetailBean bean);

    List<OrderGoodsBean> queryOrderDetail(Long orderno)throws Exception;
    List<OrderDetailBean> queryOrderDetailByGoodsId(Long goodsid)throws Exception;
}