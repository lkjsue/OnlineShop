package com.sxit.dao;

import com.sxit.bean.GoodsBean;

import java.util.List;

public interface GoodsDao {

    List<GoodsBean> queryGoodsListByTypeAndDesc(Integer type,String desc);
    GoodsBean queryBeanById(Long goodsId);

}
