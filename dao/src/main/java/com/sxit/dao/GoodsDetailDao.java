package com.sxit.dao;

import com.sxit.bean.GoodsDetailBean;

public interface GoodsDetailDao {

    GoodsDetailBean queryById(Long goodsId) throws Exception;
}
