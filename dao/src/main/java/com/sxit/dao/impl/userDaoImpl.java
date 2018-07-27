package com.sxit.dao.impl;

import com.sxit.bean.AddressBean;
import com.sxit.dao.BaseDao;
import com.sxit.dao.UserDao;

import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 孙淼 on 2018/5/22 17:17
 */
@Repository
public class userDaoImpl extends BaseDao implements UserDao{
    @Override
    protected String getNameSpace() {
        return "taddress";
    }

    @Override
    public List<AddressBean> queryAddressByUserId(long userId) {
        return this.getSqlSessionTemplate().selectList("queryAddressByUserId",userId);
    }

    @Override
    public int insertAddress(AddressBean addressBean) {
        return this.getSqlSessionTemplate().insert("insertAddress",addressBean);
    }

    @Override
    public int deleteAddress(Integer id) {
        return this.getSqlSessionTemplate().delete("delete",id);
    }
}