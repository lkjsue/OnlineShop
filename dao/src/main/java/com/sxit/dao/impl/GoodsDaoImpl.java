package com.sxit.dao.impl;

import com.sxit.bean.GoodsBean;
import com.sxit.dao.BaseDao;
import com.sxit.dao.GoodsDao;

import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 孙淼 on 2018/5/23 12:05
 */
@Repository
public class GoodsDaoImpl extends BaseDao implements GoodsDao {

    @Override
    public List<GoodsBean> queryGoodsListByTypeAndDesc(Integer type, String desc) {
        Map<String, Object> param = new HashMap<>();
        param.put("type", type);
        param.put("desc", desc);
        return this.getSqlSessionTemplate().selectList("queryListByTypeAndDesc",param);
    }

    @Override
    public GoodsBean queryBeanById(Long goodsId) {
        return this.getSqlSessionTemplate().selectOne("queryBeanById",goodsId);
    }

    @Override
    protected String getNameSpace() {
        return "tgoods";
    }
}