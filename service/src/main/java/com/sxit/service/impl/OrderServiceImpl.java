package com.sxit.service.impl;

import com.sxit.bean.OrderBean;
import com.sxit.dao.OrderDao;
import com.sxit.service.OrderService;

import org.springframework.stereotype.Service;

import java.util.List;

import javax.annotation.Resource;

/**
 * Created by 孙淼 on 2018/5/25 13:59
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Resource
    private OrderDao orderDao;

    @Override
    public int insertOrder(OrderBean bean) {
        return orderDao.insertOrder(bean);
    }

    @Override
    public List<OrderBean> queryOrder(Long orderno, Long userId) {
        return orderDao.queryOrder(orderno,userId);
    }

    @Override
    public List<OrderBean> queryAllOrder(Long userId) {
        return orderDao.queryAllOrder(userId);
    }
}