package com.sxit.web.controller;

import com.sxit.bean.CommentBean;
import com.sxit.bean.GoodsBean;
import com.sxit.bean.OrderDetailBean;
import com.sxit.service.CommentService;
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
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by 孙淼 on 2018/5/23 11:57
 *
 * controller层应该只是调用service，具体的业务逻辑应该放在service层，此处不太合理
 */
@RestController
@RequestMapping("/goods")
public class GoodsController {
    private static final Logger LOGGER = LoggerFactory.getLogger(GoodsController.class);

    @Autowired
    private GoodsService goodsService;

    @Autowired
    private CommentService commentService;

    @Autowired
    private OrderDetailService orderDetailService;

    @RequestMapping("/queryList")
    public void queryGoodsByTypeAndDesc(HttpServletRequest request, HttpServletResponse response) throws Exception {


        String type = request.getParameter("type");
        String desc = request.getParameter("desc");

        try {
            if (type == null) {
                throw new Exception("type is null");
            }
            if (desc == null) {
                throw new Exception("desc is null");
            }
            //此处查出来放在redis，之后再查，先查缓存
            Integer pType = Integer.parseInt(type);
            List<GoodsBean> goodsBeans = goodsService.queryGoodsListByTypeAndDesc(pType, desc);
            request.getSession().setAttribute("goodsBeans", goodsBeans);

            //此处用枚举更好
            String typeDesc;
            if (pType == 1) {
                typeDesc = "男装";
            } else if (pType == 2) {
                typeDesc = "女装";
            } else if (pType == 3) {
                typeDesc = "运动";
            } else {
                typeDesc = "户外";

            }
            request.getSession().setAttribute("type", typeDesc);
            request.getSession().setAttribute("desc", desc);
            response.sendRedirect("/list.jsp");
        } catch (Exception e) {
            LOGGER.error("查询失败:{}", e);
            request.setAttribute("error", "查询失败，请稍后再试");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }

    @RequestMapping("/product")
    public void queryProductById(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String type = request.getParameter("type");
        String goodsid = request.getParameter("gid");
        List<CommentBean> commentBeans=null;;
        try {
            GoodsBean goodsBean = goodsService.queryById(Long.parseLong(goodsid), Integer.parseInt(type));
            if(goodsBean!=null){
                commentBeans=new ArrayList<>();
                List<OrderDetailBean> orderDetailBeans = orderDetailService.queryOrderDetailByGoodsId(Long.parseLong(goodsid));
                if(orderDetailBeans!=null){
                    for (int i = 0; i < orderDetailBeans.size(); i++) {
                        List<CommentBean> comment = commentService.query(orderDetailBeans.get(i).getDetailId());
                        for (int j = 0; j < comment.size(); j++) {
                            comment.get(i).setTimeStr(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(comment.get(i).getCtime()));

                        }
                        commentBeans.addAll(comment);
                    }
                }
            }
            request.getSession().setAttribute("good", goodsBean);
            request.getSession().setAttribute("comments", commentBeans);
            request.getSession().setAttribute("pics", goodsBean.getPicBeans());
            request.getSession().setAttribute("pic", goodsBean.getPicBeans().get(0));
            request.getSession().setAttribute("details", goodsBean.getDetailBean());
            response.sendRedirect("/product.jsp");
        } catch (Exception e) {
            LOGGER.error("查询失败:{}", e);
            request.setAttribute("error", "查询失败，请稍后再试");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }

    @RequestMapping("/addComment")
    public void addComment(Long detailId, String cplot, HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            CommentBean bean = new CommentBean();
            bean.setCplot(cplot);
            bean.setCtime(new Date());
            bean.setDetailId(detailId);
            bean.setCtype(1);
            commentService.addComment(bean);
        } catch (Exception e) {
            LOGGER.error("评论失败:{}", e);
            request.setAttribute("error", "评论失败，请稍后再试");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}