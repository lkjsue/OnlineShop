package com.sxit.dao.impl;

import com.sxit.Util.ImgConfigUtil;
import com.sxit.bean.GoodsPicBean;
import com.sxit.dao.BaseDao;
import com.sxit.dao.GoodsPicDao;

import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 孙淼 on 2018/5/24 11:46
 */
@Repository
public class GoodsPicDaoImpl extends BaseDao implements GoodsPicDao {
    @Override
    protected String getNameSpace() {
        return "tgoodspic";
    }

    @Override
    public List<GoodsPicBean> queryGoodsPic(Long goodsId, Integer type) throws Exception {
        Map<String, Object> param = new HashMap<>();
        param.put("picType", type);
        param.put("goodsid", goodsId);
        ImgConfigUtil imgConfigUtil = ImgConfigUtil.newinstance();
        List<GoodsPicBean> pics = this.getSqlSessionTemplate().selectList("queryPicById", param);
        if(!pics.isEmpty() && pics!=null){
            for (GoodsPicBean pic:pics){
                pic.setPicname(imgConfigUtil.getAccesspath()+pic.getPicname());
            }
        }
        return pics;
    }
}