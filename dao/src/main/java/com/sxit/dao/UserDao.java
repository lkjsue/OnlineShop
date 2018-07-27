package com.sxit.dao;

import com.sxit.bean.AddressBean;

import java.util.List;

/**
 * Created by 孙淼 on 2018/5/22 17:21
 */
public interface UserDao {

    List<AddressBean> queryAddressByUserId(long userId);

    int insertAddress(AddressBean addressBean);

    int deleteAddress(Integer id);

}