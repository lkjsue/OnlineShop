package com.sxit.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by 孙淼 on 2018/5/22 17:26
 */
public abstract class BaseDao {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    protected SqlSessionTemplate getSqlSessionTemplate() {
        return sqlSessionTemplate;
    }

    protected abstract String getNameSpace();
}