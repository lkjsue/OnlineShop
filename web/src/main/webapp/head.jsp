<%--
  Created by IntelliJ IDEA.
  User: 孙淼
  Date: 2018/5/24
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="pub_nav topBanner slideUp">
    <div class="wrap clearfix bg_333">
        <div class="f_l">
            <ul class="pub_nav_list sizeZero">
                <li class="inline"><a href="main.jsp">首页</a><span class="bg"></span></li>
                <li class="inline"><a href="sjzx.jsp">商家中心</a><span class="bg"></span></li>
                <li class="inline"><a href="sjzx.jsp">平台政策</a><span class="bg"></span></li>
                <li class="inline last newapp">
                    <a href="#">必要手机版</a>
                    <div class="app_box">
                        <span class="inline upArre"></span>
                        <div class="con">
                            <p class="sj_evm"></p>
                            <p class="lineH24 col_666 f14">必要手机版</p>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="f_r">
            <ul class="pub_nav_list sizeZero">
                <li class="inline" id="welcomID">
                    <span class="col_aaa mg_r10">欢迎来到必要,</span>
                    <c:if test="${userBean==null}">
                        <a class="" onclick='LT.login_uri("login.jsp")'>登录</a>
                    </c:if>
                    <c:if test="${userBean!=null}">
                        <span style="color:white;">${userBean.userPhone}</span>
                        <a href="/logout" style="color:white;">&nbsp;&nbsp;退出</a>
                    </c:if>
                </li>
                <li class="inline" id="messageID"><a
                        onclick='LT.register_uri("register.jsp")'>注册</a><span class="bg"></span>
                </li>
                <li class="inline last">
                    <a href="javascript:void(0);" class="">个人中心<i class="inline pep_bg mg_l10"></i></a>
                    <div class="app_box">
                        <span class="inline upArre"></span>
                        <div class="bg_fff down_list_box">
                            <a class="inline" href="/order/queryAll">我的订单</a>
                            <a class="inline" href="/address">个人设置</a>
                        </div>
                    </div>
                </li>
                <li class="inline last pd_r0 shopping_cart vTop">
                    <a class="inline sizeZero" href="/cart/query">
                        <i class="inline"></i>
                        <span class="inline">购物车</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="index_bg_fff">
    <div class="wrap pub_logo_box clearfix">
        <div class="pub_logo f_l"><a href="/"><img alt=""
                                                   src="pc/common/img/logo.png?v=biyao_4637d54"></a>
        </div>
        <div class="f_r">
            <ul class="sizeZero menu_nav_list">
                <li class="inline ">
                    <a href="javascript:;">男装</a>
                    <div class="sub_nav_list pos_pub">
                        <span class="sub_nav_jd"></span>
                        <a href="/goods/queryList?type=1&desc=外套" class="escp ">外套</a>
                        <a href="/goods/queryList?type=1&desc=T恤" class="escp ">T恤</a>
                        <a href="/goods/queryList?type=1&desc=裤" class="escp ">男裤</a>
                        <a href="/goods/queryList?type=1&desc=牛仔" class="escp ">牛仔</a>
                        <a href="/goods/queryList?type=1&desc=POLO衫" class="escp last">POLO衫</a>
                    </div>
                </li>
                <li class="inline ">
                    <a href="javascript:;">户外</a>
                    <div class="sub_nav_list pos_pub">
                        <span class="sub_nav_jd"></span>
                        <a href="/goods/queryList?type=3&desc=男户外" class="escp ">RC男士户外服</a>
                        <a href="/goods/queryList?type=3&desc=女户外" class="escp ">RC女士户外服</a>
                    </div>
                </li>
                <li class="inline ">
                    <a href="javascript:;">运动</a>
                    <div class="sub_nav_list pos_pub">
                        <span class="sub_nav_jd"></span>
                        <a href="/goods/queryList?type=4&desc=运动女" class="escp last">运动女装</a>
                        <a href="/goods/queryList?type=4&desc=运动男" class="escp last">运动男装</a>
                    </div>
                </li>
                <li class="inline ">
                    <a href="javascript:;">女装</a>
                    <div class="sub_nav_list pos_pub">
                        <span class="sub_nav_jd"></span>
                        <a href="/goods/queryList?type=2&desc=女" class="escp ">女装</a>
                        <a href="/goods/queryList?type=2&desc=牛仔" class="escp ">牛仔</a>
                        <a href="/goods/queryList?type=2&desc=裙" class="escp ">女裙</a>
                        <a href="/goods/queryList?type=2&desc=T恤" class="escp ">针织短T</a>
                        <a href="/goods/queryList?type=2&desc=POLO衫" class="escp ">POLO衫</a>
                        <a href="/goods/queryList?type=2&desc=婚纱礼服" class="escp ">婚纱礼服</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>

</body>
</html>
