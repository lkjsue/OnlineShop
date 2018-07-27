package com.sxit.service;

import com.sxit.bean.AddressBean;

import java.util.List;

public interface UserService {

    List<AddressBean> queryByUserId(long userId);

    void insertAddress(AddressBean addressBean)throws Exception;

    void deleteAddress(Integer id)throws Exception ;
}
