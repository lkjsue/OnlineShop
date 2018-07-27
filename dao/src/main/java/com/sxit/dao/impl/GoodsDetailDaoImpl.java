package com.sxit.dao.impl;

import com.sxit.dao.GoodsDetailDao;
import com.sxit.Util.ImgConfigUtil;
import com.sxit.bean.GoodsDetailBean;
import com.sxit.dao.BaseDao;

import org.springframework.stereotype.Repository;

/**
 * Created by 孙淼 on 2018/5/24 16:19
 */
@Repository
public class GoodsDetailDaoImpl extends BaseDao implements GoodsDetailDao {
    @Override
    public GoodsDetailBean queryById(Long goodsId) throws Exception {
        ImgConfigUtil imgConfigUtil = ImgConfigUtil.newinstance();
        GoodsDetailBean detail = this.getSqlSessionTemplate().selectOne("queryById", goodsId);
        if(detail!=null){
           detail.setDetailPic(imgConfigUtil.getAccesspath()+detail.getDetailPic());
        }
        return detail;
    }

    @Override
    protected String getNameSpace() {
        return "tgoodsdetail";
    }
}