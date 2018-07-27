<%--
  Created by IntelliJ IDEA.
  User: 孙淼
  Date: 2018/5/25
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta property="wb:webmaster" content="8eabb156d1a9cb46">
    <title>必要平台-购物车 – 我要的，才是必要的 – 必要biyao.com</title>
    <link href="pc/favicon.ico" rel="shortcut icon" type="image/x-icon"/>
    <link href="pc/favicon.ico" rel="icon" type="image/x-icon"/>
    <link href="pc/common/css/common.css?v=biyao_9cf87cc" rel="stylesheet"/>
    <link href="pc/www/css/cm_www.css?v=biyao_c0d1bd0" rel="stylesheet"/>
    <link href="pc/buy/css/newBuy.css?v=biyao_dac4785" rel="stylesheet"/>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<span style="display: inline-block;
    font-size: 20px;
    margin-left: 30%;
    margin-top: 100px;">购买成功，您的订单号为:<a href="/order/query?orderno=${orderno}">${orderno}</a></span>
</body>
</html>
