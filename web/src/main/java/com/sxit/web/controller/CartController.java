package com.sxit.web.controller;

import com.sxit.bean.AddressBean;
import com.sxit.bean.CartBean;
import com.sxit.bean.GoodsBean;
import com.sxit.bean.GoodsPicBean;
import com.sxit.bean.OrderBean;
import com.sxit.bean.OrderDetailBean;
import com.sxit.bean.UserBean;
import com.sxit.service.OrderDetailService;
import com.sxit.service.OrderService;
import com.sxit.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by 孙淼 on 2018/5/24 20:04
 */
@RestController
@RequestMapping("/cart")
public class CartController {
    private static final Logger LOGGER = LoggerFactory.getLogger(CartController.class);

    @Autowired
    private OrderService orderService;
    @Autowired
    private OrderDetailService orderDetailService;
    @Autowired
    private UserService userService;


    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public void addGoods(Integer count, String size, String color, HttpServletRequest request) {
        List<CartBean> cartBeans = (List<CartBean>) request.getSession().getAttribute("cartBean");
        if (cartBeans == null) {
            cartBeans = new ArrayList<>();
        }
        //时间过期问题
        GoodsBean good = (GoodsBean) request.getSession().getAttribute("good");
        Integer countNum = count;
        GoodsPicBean pic = (GoodsPicBean) request.getSession().getAttribute("pic");
        CartBean cartBean = new CartBean();
        cartBean.setColor(color);
        cartBean.setCount(countNum);
        cartBean.setSize(size);
        cartBean.setPicPath(pic.getPicname());
        cartBean.setDetailBean(good.getDetailBean());
        cartBean.setPicBeans(good.getPicBeans());
        cartBean.setGname(good.getGname());
        cartBean.setGoodsDesc(good.getGoodsDesc());
        cartBean.setGoodsid(good.getGoodsid());
        cartBean.setPrice(good.getPrice());
        cartBean.setType(good.getType());
        cartBean.setState(good.getState());
        cartBean.setCartId(new Random().nextInt() + Long.parseLong(new SimpleDateFormat("yyyyMMddHHmmss").format(new Date())));
        cartBeans.add(cartBean);
        request.getSession().setAttribute("cartBean", cartBeans);
    }

    @RequestMapping(value = "/query")
    public void addGoods(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<CartBean> cartBeans = (List<CartBean>) request.getSession().getAttribute("cartBean");
        if (cartBeans != null) {
            double allmoney = 0d;
            int allcount = 0;
            for (int i = 0; i < cartBeans.size(); i++) {
                allmoney += cartBeans.get(i).getCount() * cartBeans.get(i).getPrice();
                allcount += cartBeans.get(i).getCount();
            }
            request.getSession().setAttribute("allmoney", allmoney);
            request.getSession().setAttribute("allcount", allcount);
        }
        request.getSession().setAttribute("cartBean", cartBeans);

        response.sendRedirect("/shopCart.jsp");
    }

    @RequestMapping(value = "/buy", method = RequestMethod.POST)
    @Transactional
    public void buy(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
            String add = request.getParameter("add");
            UserBean userBean = (UserBean) request.getSession().getAttribute("userBean");
            if (userBean == null) {
                response.sendRedirect("/login.jsp");
            } else {
                List<CartBean> cartBeans = (List<CartBean>) request.getSession().getAttribute("cartBean");
                double allmoney = (double) request.getSession().getAttribute("allmoney");
                OrderBean orderBean = new OrderBean();
                orderBean.setAllmoney(allmoney);
                orderBean.setState(1);
                orderBean.setTime(new Date());
                orderBean.setUserid(userBean.getUserid());
                orderBean.setAdd(add);
                long orderno = Long.parseLong(new SimpleDateFormat("yyyyMMddHHmmss").format(new Date())) + userBean.getUserid();
                orderBean.setOrderno(orderno);
                orderService.insertOrder(orderBean);
                //订单 订单详情
                for (int i = 0; i < cartBeans.size(); i++) {
                    OrderDetailBean bean = new OrderDetailBean();
                    bean.setGoodsid(cartBeans.get(i).getGoodsid());
                    //应该以orderid为外键，此处查询order获取id，再查询orderDetail
                    bean.setOrderno(orderno);
                    bean.setBuycount(cartBeans.get(i).getCount());
                    bean.setPremoney(cartBeans.get(i).getPrice());
                    //1表示待发货 //2表示已发货  //3表示已签收
                    bean.setOrderstate(1);
                    bean.setColor(cartBeans.get(i).getColor());
                    bean.setSize(cartBeans.get(i).getSize());
                    orderDetailService.insertOrderDetail(bean);
                }
                //此处应该在后台订单信息中增加记录，用于管理员及时更新到数据
                request.getSession().setAttribute("orderno", orderno);
                response.sendRedirect("/successful.jsp");
            }
        } catch (Exception e) {
            LOGGER.error("购买异常:{}", e);
            request.setAttribute("error", "购买异常");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }

    @RequestMapping("/check")
    public void check(HttpServletRequest request, HttpServletResponse response) throws Exception {
        UserBean userBean = (UserBean) request.getSession().getAttribute("userBean");
        if (userBean == null) {
            response.sendRedirect("/login.jsp");
        } else {
            //查询地址
            List<AddressBean> addressBeans = userService.queryByUserId(userBean.getUserid());
            if (addressBeans.isEmpty()) {
                response.sendRedirect("/userInfo.jsp");
            } else {
                request.getSession().setAttribute("addressBeans", addressBeans);
                response.sendRedirect("/confirm.jsp");
            }
        }
    }

    @RequestMapping(value = "/change")
    public void change(HttpServletRequest request, long cartId, Integer count, Double allmoney, Integer allcount) throws Exception {
        List<CartBean> cartBeans = (List<CartBean>) request.getSession().getAttribute("cartBean");
        for (int i = 0; i < cartBeans.size(); i++) {
            if (cartBeans.get(i).getCartId() == cartId) {
                cartBeans.get(i).setCount(count);
            }
        }
        request.getSession().setAttribute("allmoney", allmoney);
        request.getSession().setAttribute("allcount", allcount);
        request.getSession().setAttribute("cartBean", cartBeans);
    }

    @RequestMapping(value = "/delete")
    public void change(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String cartId = request.getParameter("cartId");
        List<CartBean> cartBeans = (List<CartBean>) request.getSession().getAttribute("cartBean");
        List<CartBean> list = new ArrayList<>();
        for (int i = cartBeans.size() - 1; i >= 0; i--) {
            if (cartBeans.get(i).getCartId() != Long.parseLong(cartId)) {
                list.add(cartBeans.get(i));
            }
        }
        double allmoney = 0d;
        int allcount = 0;
        for (int i = 0; i < list.size(); i++) {
            CartBean bean = list.get(i);
            allmoney += bean.getCount() * bean.getPrice();
            allcount += bean.getCount();
        }
        request.getSession().setAttribute("allmoney", allmoney);
        request.getSession().setAttribute("allcount", allcount);
        request.getSession().setAttribute("cartBean", list);
        response.sendRedirect("/shopCart.jsp");
    }

}