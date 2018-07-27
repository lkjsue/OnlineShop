package com.sxit.dao;

import com.sxit.bean.GoodsPicBean;

import java.util.List;

public interface GoodsPicDao {
    List<GoodsPicBean> queryGoodsPic(Long goodsId, Integer type) throws Exception;
}
