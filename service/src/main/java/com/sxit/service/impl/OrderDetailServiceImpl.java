package com.sxit.service.impl;

import com.sxit.bean.GoodsBean;
import com.sxit.bean.GoodsPicBean;
import com.sxit.bean.OrderDetailBean;
import com.sxit.bean.OrderGoodsBean;
import com.sxit.dao.CommentDao;
import com.sxit.dao.GoodsDao;
import com.sxit.dao.GoodsPicDao;
import com.sxit.dao.OrderDetailDao;
import com.sxit.service.OrderDetailService;

import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

/**
 * Created by 孙淼 on 2018/5/25 14:01
 */
@Service
public class OrderDetailServiceImpl implements OrderDetailService {

    @Resource
    private OrderDetailDao orderDetailDao;

    @Resource
    private GoodsDao goodsDao;

    @Resource
    private GoodsPicDao goodsPicDao;

    @Resource
    private CommentDao commentDao;

    @Override
    public int insertOrderDetail(OrderDetailBean bean) {
        return orderDetailDao.insertOrderDetail(bean);
    }

    @Override
    public List<OrderGoodsBean> queryOrderDetail(Long orderno) throws Exception {
        List<OrderDetailBean> orderDetailBeans = orderDetailDao.queryOrderDetail(orderno);
        List<OrderGoodsBean> OrderGoodsList=new ArrayList<>();
        for (int i = 0; i < orderDetailBeans.size(); i++) {
            GoodsBean goodsBean = goodsDao.queryBeanById(orderDetailBeans.get(i).getGoodsid());
            OrderDetailBean bean = orderDetailBeans.get(i);
            OrderGoodsBean orderGoodsBean=new OrderGoodsBean();
            orderGoodsBean.setBuycount(bean.getBuycount());
            orderGoodsBean.setColor(bean.getColor());
            orderGoodsBean.setDetailId(bean.getDetailId());
            orderGoodsBean.setGname(goodsBean.getGname());
            orderGoodsBean.setGoodsid(bean.getGoodsid());
            orderGoodsBean.setOrderno(bean.getOrderno());
            orderGoodsBean.setOrderstate(bean.getOrderstate());
            List<GoodsPicBean> goodsPicBean = goodsPicDao.queryGoodsPic(bean.getGoodsid(), 2);
            orderGoodsBean.setPic(goodsPicBean.get(0).getPicname());
            orderGoodsBean.setPremoney(bean.getPremoney());
            orderGoodsBean.setSize(bean.getSize());
            OrderGoodsList.add(orderGoodsBean);
        }
        return OrderGoodsList;
    }

    @Override
    public List<OrderDetailBean> queryOrderDetailByGoodsId(Long goodsid) throws Exception {
        List<OrderDetailBean> orderDetailBeans = orderDetailDao.queryOrderDetailByGoodsId(goodsid);
        return orderDetailBeans;
    }
}
