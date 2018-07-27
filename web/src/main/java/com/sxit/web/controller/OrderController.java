package com.sxit.web.controller;

import com.sxit.bean.OrderBean;
import com.sxit.bean.OrderGoodsBean;
import com.sxit.bean.UserBean;
import com.sxit.service.GoodsService;
import com.sxit.service.OrderDetailService;
import com.sxit.service.OrderService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by 孙淼 on 2018/5/26 12:02
 */
@RestController
@RequestMapping("/order")
public class OrderController {

    private static final Logger LOGGER = LoggerFactory.getLogger(OrderController.class);

    @Autowired
    private OrderService orderService;
    @Autowired
    private OrderDetailService orderDetailService;
    @Autowired
    private GoodsService goodsService;


    @RequestMapping("/query")
    public void query(HttpServletRequest request, HttpServletResponse response, Long orderno) throws Exception {
        try {

            UserBean userBean = (UserBean) request.getSession().getAttribute("userBean");
            if (userBean == null) {
                response.sendRedirect("/login.jsp");
            } else {
                //userbean做判断
                long userid = userBean.getUserid();
                List<OrderBean> orderBean = orderService.queryOrder(orderno, userid);
                //orderBean做判断
                //此处查询OrderDetailBean，应该是从orderbean中获取orderId来查询，表结构有问题
                List<OrderGoodsBean> list = orderDetailService.queryOrderDetail(orderno);
                for (int i = 0; i <list.size() ; i++) {
                    list.get(i).setTimeStr(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(orderBean.get(0).getTime()));
                }
                request.getSession().setAttribute("list", list);
                response.sendRedirect("/order.jsp");
            }
        } catch (Exception e) {
            LOGGER.error("查询订单异常:{}", e);
            request.getRequestDispatcher("/404.jsp").forward(request, response);
        }

    }

    @RequestMapping("/queryAll")
    public void query(HttpServletRequest request, HttpServletResponse response) throws Exception {
        UserBean userBean = (UserBean) request.getSession().getAttribute("userBean");
        try {
            if (userBean == null) {
                response.sendRedirect("/login.jsp");
            } else {
                //userbean做判断
                Long userid = userBean.getUserid();
                List<OrderBean> orderBean = orderService.queryAllOrder(userid);
                //orderBean做判断
                //此处查询OrderDetailBean，应该是从orderbean中获取orderId来查询，表结构有问题
                List<OrderGoodsBean> lists=new ArrayList<>();
                for (int i = 0; i < orderBean.size(); i++) {
                    List<OrderGoodsBean> list = orderDetailService.queryOrderDetail(orderBean.get(i).getOrderno());
                    for (int j = 0; j <list.size() ; j++) {
                        list.get(j).setTimeStr(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(orderBean.get(0).getTime()));
                    }
                    lists.addAll(list);
                }
                //判断orderDetailBeans
                request.getSession().setAttribute("list", lists);
                response.sendRedirect("/order.jsp");
            }
        }catch (Exception e){
            LOGGER.error("查询订单异常:{}", e);
            request.getRequestDispatcher("/404.jsp").forward(request, response);
        }


    }
}