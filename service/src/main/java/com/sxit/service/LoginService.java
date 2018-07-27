package com.sxit.service;

import com.sxit.bean.UserBean;

public interface LoginService {

    UserBean login(String phone,String password);
    void register(UserBean bean)throws Exception;
}
