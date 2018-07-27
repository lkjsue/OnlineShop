package com.sxit.dao.impl;

import com.sxit.bean.OrderBean;
import com.sxit.dao.BaseDao;
import com.sxit.dao.OrderDao;

import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 孙淼 on 2018/5/25 13:36
 */
@Repository
public class OrderDaoImpl extends BaseDao implements OrderDao {
    @Override
    protected String getNameSpace() {
        return "torder";
    }

    @Override
    public int insertOrder(OrderBean orderBean) {
        return this.getSqlSessionTemplate().insert("insertOrder", orderBean);
    }

    @Override
    public List<OrderBean> queryOrder(Long orderno, Long userId) {
        Map<String, Object> param = new HashMap<>();
        param.put("orderno", orderno);
        param.put("userid", userId);
        return this.getSqlSessionTemplate().selectList("queryOrder", param);
    }

    @Override
    public List<OrderBean> queryAllOrder(Long userid) {
        return this.getSqlSessionTemplate().selectList("queryAllOrder", userid);
    }
}