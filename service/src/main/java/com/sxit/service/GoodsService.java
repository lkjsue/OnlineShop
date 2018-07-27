package com.sxit.service;

import com.sxit.bean.GoodsBean;
import com.sxit.bean.GoodsDetailBean;

import java.util.List;

public interface GoodsService {

    List<GoodsBean> queryGoodsListByTypeAndDesc(Integer type, String desc) throws Exception;

    GoodsBean queryById(Long goodsId,Integer type)throws Exception;

}
