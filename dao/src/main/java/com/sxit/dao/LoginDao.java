package com.sxit.dao;

import com.sxit.bean.UserBean;

import javax.persistence.criteria.CriteriaBuilder;

/**
 * Created by 孙淼 on 2018/5/22 17:22
 */
public interface LoginDao {

    UserBean queryUserBean(String userPhone,String password);
    Integer createUser(UserBean bean);
}