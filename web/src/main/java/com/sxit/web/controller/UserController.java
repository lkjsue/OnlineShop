package com.sxit.web.controller;

import com.sxit.bean.AddressBean;
import com.sxit.bean.UserBean;
import com.sxit.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by 孙淼 on 2018/5/29 10:22
 */
@RestController
public class UserController {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;


    @RequestMapping("/address")
    public void queryAddress(HttpServletResponse response, HttpServletRequest request) throws Exception {
        try {
            UserBean userBean = (UserBean) request.getSession().getAttribute("userBean");
            if (userBean == null) {
                response.sendRedirect("/login.jsp");
            } else {
                List<AddressBean> addressBeans = userService.queryByUserId(userBean.getUserid());
                request.getSession().setAttribute("addList", addressBeans);
                response.sendRedirect("/address.jsp");
            }
        } catch (Exception e) {
            LOGGER.error("查询地址异常:{}", e);
            request.getRequestDispatcher("/404.jsp").forward(request, response);
        }
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public void addAddress(HttpServletResponse response, HttpServletRequest request) throws Exception {
        try {
            UserBean userBean = (UserBean) request.getSession().getAttribute("userBean");
            String name = request.getParameter("receiver");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            if (userBean == null) {
                response.sendRedirect("/login.jsp");
            } else {
                AddressBean bean = new AddressBean();
                bean.setAddinfo(address);
                bean.setRecivename(name);
                bean.setRecivetel(phone);
                bean.setState(1);
                bean.setUserid(userBean.getUserid());
                userService.insertAddress(bean);
                response.sendRedirect("/address");
            }
        } catch (Exception e) {
            LOGGER.error("添加异常:{}", e);
            request.getRequestDispatcher("/404.jsp").forward(request, response);
        }
    }

    @RequestMapping(value = "/delete")
    public void deleteAddress(HttpServletResponse response, HttpServletRequest request) throws Exception {
        try {
            UserBean userBean = (UserBean) request.getSession().getAttribute("userBean");
            if (userBean == null) {
                response.sendRedirect("/login.jsp");
            } else {
                String id = request.getParameter("id");
                userService.deleteAddress(Integer.parseInt(id));
                response.sendRedirect("/address");
            }
        } catch (Exception e) {
            LOGGER.error("添加异常:{}", e);
            request.getRequestDispatcher("/404.jsp").forward(request, response);
        }
    }
}