package com.sxit.service.impl;

import com.sxit.bean.AddressBean;
import com.sxit.dao.UserDao;
import com.sxit.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.List;

import javax.annotation.Resource;

/**
 * Created by 孙淼 on 2018/5/25 15:18
 */
@Service
public class UserServiceImpl implements UserService {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);
    @Resource
    private UserDao userDao;

    @Override
    public List<AddressBean> queryByUserId(long userId) {
        return userDao.queryAddressByUserId(userId);
    }

    @Override
    public void insertAddress(AddressBean addressBean) throws Exception {
        int i = userDao.insertAddress(addressBean);
        if (i != 1) {
            LOGGER.error("添加地址失败");
            throw new Exception("添加地址失败");
        }
    }

    @Override
    public void deleteAddress(Integer id) throws Exception {
        int i = userDao.deleteAddress(id);
        if (i != 1) {
            LOGGER.error("删除地址失败");
            throw new Exception("删除地址失败");
        }
    }
}