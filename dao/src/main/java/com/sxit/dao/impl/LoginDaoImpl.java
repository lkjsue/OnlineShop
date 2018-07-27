package com.sxit.dao.impl;

import com.sxit.bean.UserBean;
import com.sxit.dao.BaseDao;
import com.sxit.dao.LoginDao;

import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by 孙淼 on 2018/5/22 17:22
 */
@Repository
public class LoginDaoImpl extends BaseDao implements LoginDao{

    @Override
    public UserBean queryUserBean(String userPhone, String password) {
        Map<String, Object> param = new HashMap<>();
        param.put("userPhone", userPhone);
        param.put("password", password);
        UserBean userBean = this.getSqlSessionTemplate().selectOne("queryUserBean",param);
        return userBean;
    }

    @Override
    public Integer createUser(UserBean bean) {
        Integer result=this.getSqlSessionTemplate().insert("insert",bean);
        return result;
    }

    @Override
    protected String getNameSpace() {
        return "tuser";
    }
}