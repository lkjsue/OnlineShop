package com.sxit.service.impl;

import com.sxit.dao.GoodsDetailDao;
import com.sxit.bean.GoodsBean;
import com.sxit.bean.GoodsDetailBean;
import com.sxit.bean.GoodsPicBean;
import com.sxit.dao.GoodsDao;
import com.sxit.dao.GoodsPicDao;
import com.sxit.service.GoodsService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.List;

import javax.annotation.Resource;

/**
 * Created by 孙淼 on 2018/5/23 12:14
 */
@Service
public class GoodsServiceImpl implements GoodsService {

    private static final Logger LOGGER = LoggerFactory.getLogger(GoodsServiceImpl.class);
    @Resource
    private GoodsDao goodsDao;

    @Resource
    private GoodsPicDao goodsPicDao;

    @Resource
    private GoodsDetailDao goodsDetailDao;

    @Override
    public List<GoodsBean> queryGoodsListByTypeAndDesc(Integer type, String desc) throws Exception {
        List<GoodsBean> goodsBeans = goodsDao.queryGoodsListByTypeAndDesc(type, desc);
        if (goodsBeans == null) {
            LOGGER.error("根据type{},desc{}查询失败", type, desc);
            throw new Exception("查询失败");
        }

        for (GoodsBean good : goodsBeans) {
            List<GoodsPicBean> goodsPicBeans = goodsPicDao.queryGoodsPic(good.getGoodsid(), type);
            if (goodsPicBeans != null) {
                good.setPicPath(goodsPicBeans.get(0).getPicname());
            }
        }
        return goodsBeans;
    }

    @Override
    public GoodsBean queryById(Long goodsId, Integer type) throws Exception {
        GoodsBean goodsBean = goodsDao.queryBeanById(goodsId);
        if (goodsBean == null) {
            LOGGER.error("goodsId{}查询失败", goodsId);
            throw new Exception("查询失败");
        }

        GoodsDetailBean goodsDetailBean = queryById(goodsId);
        if (goodsDetailBean == null) {
            LOGGER.error("goodsId{}查询失败", goodsId);
            throw new Exception("查询失败");
        }
        String color = goodsDetailBean.getColor();
        String[] colorStr = color.split(",");
        for (int i = 0; i < colorStr.length; i++) {
            goodsDetailBean.getColors().add(colorStr[i]);
        }
        String size = goodsDetailBean.getSize();
        String[] sizeStr = size.split(",");
        for (int i = 0; i < sizeStr.length; i++) {
            goodsDetailBean.getSizes().add(sizeStr[i]);
        }
        goodsBean.setDetailBean(goodsDetailBean);
        List<GoodsPicBean> goodsPicBean = goodsPicDao.queryGoodsPic(goodsId, type);
        if (goodsPicBean == null) {
            LOGGER.error("goodsId{},type{}查询失败", goodsId, type);
            throw new Exception("查询失败");
        }
        goodsBean.setPicBeans(goodsPicBean);
        return goodsBean;
    }

    private GoodsDetailBean queryById(Long goodsId) throws Exception {
        GoodsDetailBean goodsDetailBeans = goodsDetailDao.queryById(goodsId);
        if (goodsDetailBeans == null) {
            LOGGER.error("goodsId{}查询失败", goodsId);
            throw new Exception("查询失败");
        }
        return goodsDetailBeans;
    }
}