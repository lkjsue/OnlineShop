package com.sxit.web.controller;

import com.sxit.bean.UserBean;
import com.sxit.service.LoginService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by 孙淼 on 2018/5/22 17:17
 */
@RestController
public class LoginController {

    private static final Logger LOGGER = LoggerFactory.getLogger(LoginController.class);

    private static final int SESSION_EXPIRE = 12 * 60 * 60;

    @Resource
    private LoginService loginService;

    @RequestMapping("login")
    public void login(HttpSession session, HttpServletResponse response
            , HttpServletRequest request) throws Exception {
        try {
            String userPhone = request.getParameter("userName");
            String password = request.getParameter("password");
            UserBean userBean = loginService.login(userPhone, password);
            if (userBean == null) {
                request.setAttribute("msg","用户名或密码错误");
                request.getRequestDispatcher("/login.jsp").forward(request,response);
            }else {
                //session的失效
                session.setMaxInactiveInterval(SESSION_EXPIRE);
                session.setAttribute("userBean", userBean);
                response.sendRedirect("/");
            }

        } catch (Exception e) {
            LOGGER.error("登录异常:{}", e);
            request.setAttribute("error", "登录异常");
            request.getRequestDispatcher("/error.jsp").forward(request,response);
        }

    }

    @RequestMapping("logout")
    public void logout(HttpSession session, HttpServletResponse response, HttpServletRequest request) throws Exception {
        try {
            session.removeAttribute("userBean");
            session.invalidate();
            response.sendRedirect("/");
        } catch (Exception e) {
            LOGGER.error("退出异常:{}", e);
            request.setAttribute("error", "退出异常");
            request.getRequestDispatcher("/error.jsp").forward(request,response);
        }
    }

    @RequestMapping("register")
    public void register(HttpServletResponse response, HttpServletRequest request) throws Exception {
        try {
            String phone = request.getParameter("Mobile");
            String password = request.getParameter("password");
            UserBean userBean = new UserBean();
            userBean.setMoney(0d);
            userBean.setPassword(password);
            userBean.setUserPhone(phone);
            loginService.register(userBean);
            request.setAttribute("msg","用户注册成功，请登录");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        } catch (Exception e) {
            LOGGER.error("注册失败:{}", e);
            request.setAttribute("error","注册失败");
            request.getRequestDispatcher("/error.jsp").forward(request,response);
        }


    }


}