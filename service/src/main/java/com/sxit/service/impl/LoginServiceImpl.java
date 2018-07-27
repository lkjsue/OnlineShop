package com.sxit.service.impl;

import com.sxit.bean.UserBean;
import com.sxit.dao.LoginDao;
import com.sxit.service.LoginService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by 孙淼 on 2018/5/22 17:23
 */
@Service
public class LoginServiceImpl implements LoginService{
    private static final Logger LOGGER = LoggerFactory.getLogger(LoginServiceImpl.class);

    @Resource
    private LoginDao loginDao;


    @Override
    public UserBean login(String phone, String password) {
        UserBean userBean=loginDao.queryUserBean(phone,password);
        return userBean;
    }

    @Override
    public void register(UserBean bean) throws Exception{
        Integer result = loginDao.createUser(bean);
        if(result!=1){
            throw new Exception("用户注册失败");
        }
    }
}