<%--
  Created by IntelliJ IDEA.
  User: 孙淼
  Date: 2018/5/25
  Time: 10:16
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
    <script type="text/javascript">
        window.basePath = "";
        window.ControllerSite = "http://www.biyao.com";
        var ua = navigator.userAgent.toLowerCase();
        var isiOS = navigator.userAgent.match('iPad') || navigator.userAgent.match('iPhone')
                    || navigator.userAgent.match('iPod'),
            isAndroid = navigator.userAgent.match('Android'), isDesktop = !isiOS && !isAndroid;
        if (isiOS || isAndroid) {
            if (window.location.href.toString().indexOf("www.biyao.com/product/") > 0) {//如果现在进的是编辑器页
                var designId = (window.location.href.toString()).substr(parseInt(
                    window.location.href.toString().indexOf("www.biyao.com/product/"))
                                                                        + "www.biyao.com/product/".length,
                    4);//获得样例ID
                window.location.href = "http://m.biyao.com/product/show?designid=" + designId;
            }
        }
    </script>
    <script type="text/javascript" src="pc/common/js/jquery-1.8.3.js?v=biyao_7d074dc"></script>
    <script type="text/javascript" src="pc/common/js/jquery.extention.js?v=biyao_98daa33"></script>
    <script type="text/javascript" src="pc/common/js/jquery.cookie.js?v=biyao_a5283b2"></script>
    <script type="text/javascript" src="pc/common/js/common.js?v=biyao_52bff81"></script>
    <script type="text/javascript" src="pc/common/js/ui/dialog.js?v=biyao_ba57fb5"></script>
    <script type="text/javascript" src="pc/common/js/ui/select.js?v=biyao_1dcaa7c"></script>
    <script type="text/javascript" src="pc/common/js/ui/loadmask.js?v=biyao_5aac5cc"></script>
    <script type="text/javascript" src="pc/buy/js/commonre.js?v=biyao_27f335b"></script>
    <script type="text/javascript"
            src="pc/minisite/byshoes/js/jquery.cookie.js?v=biyao_a5283b2"></script>
</head>
<body>

<jsp:include page="head.jsp"></jsp:include>
<form action="/cart/check" id="buy">

    <div class="pd_b40">
        <div class="wrap ie78">
            <div class="lineH24 t_l  pd_t30 pd_b10 bd_b_d5c ">
                <span class="f18 col_666 mg_l10 col_523">购物车</span>
            </div>
            <c:if test="${cartBean==null}">
                <div class="wrap  h580">
                    <div class="sop_nothingbox">
                        <img src="http://static.biyao.com/pc/buy/img/shoppingcart.png?v=biyao_456d613"/>
                        <p class="inline">
                            <span id="loginTip" class="sop_span inline">您的购物车还是空的</span>
                        </p>
                    </div>
                    <div class="toindex" align="center">
                        <a href="/">马上购物</a>
                    </div>

                </div>
            </c:if>
            <c:if test="${cartBean!=null}">
                <div class="comment_box">
                    <table class="sop_table1" cellpadding="0" cellspacing="0">
                        <tr>
                            <th width="5%" align="center" class="col_523">操作</th>
                            <th align="left" class="col_523">商品信息</th>
                            <th width="10%" align="center" class="col_523">单价</th>
                            <th width="10%" align="center" class="col_523">数量</th>
                            <th width="20%" align="center" class="col_523">包装</th>
                            <th width="10%" align="center" class="col_523">小计</th>

                        </tr>
                    </table>
                </div>
                <c:forEach var="cart" items="${cartBean}">
                    <div class="shoppingBox ">
                        <table class="sop_table1 lastTh tabledel bg_fff" cellpadding="0"
                               cellspacing="0" id="tab">
                            <tr>
                                <td width="5%" align="center"><a
                                        href="/cart/delete?cartId=${cart.cartId}">×</a>
                                </td>
                                <td width="130" align="left">
						<span class="sop_img inline">
							<a target="_blank"
                               href="/goods/product?type=${cart.type}&gid=${cart.goodsid}">
                                <img width="100" height="100" src="${cart.picPath}"/>
                            </a>
						</span>
                                </td>
                                <td align="left">
                                    <a target="_blank"
                                       href="/goods/product?type=${cart.type}&gid=${cart.goodsid}">
                                        <span class="col_523">${cart.gname}</span>
                                    </a>
                                    <br/>
                                    <div class="col_999 inline mg_t5">
                                        尺码:${cart.size}<br/>颜色:${cart.color}</div>
                                    <br/>
                                </td>
                                <td width="10%" align="center" class="ff6600">¥${cart.price}</td>
                                <td width="10%" align="center" class="sizeZero">
                                    <input type="text" value="${cart.count}"
                                           onchange="changeCount(this)"
                                           price="${cart.price}" class="goodcount"
                                           cartId="${cart.cartId}"
                                           style="width: 30px;border: 1px solid #ccc;text-align: center;">
                                </td>
                                <td width="20%" align="center" class="col_666">
                                    <span class="span_package_type">普通包装</span>
                                    <span class="span_package_price pack_selects">(免费)</span>
                                </td>
                                <td width="10%" align="center"
                                    class="goodMoney ff6600">${cart.price*cart.count}</td>
                            </tr>
                        </table>
                    </div>
                </c:forEach>
            </c:if>
            <div class="firmbox pd_t10 bg_fff tj_box">
                <div class="lineH30 pd_l10 pd_r10 clearfix ">
                    <div class="f_r col_666 f14">
                        商品总价：<span class="w80 inline col_f60 pd_r5 f14"
                                   id="totalPrice">${allmoney}</span>
                    </div>
                    <span class="inline f_r mg_r30 col_666 f14">商品总数 <em class="col_f60 f14"
                                                                         id="totalNum">${allcount}</em> 件</span>
                </div>
                <div class="lineH30 pd_l10 pd_r10 clearfix ">
                    <div class="f_r col_666 f14">
                        包装费：<span class="w80 inline col_f60 pd_r5" id="packagePrice">¥0</span>
                    </div>
                </div>
            </div>
            <div class="tallyBox">
                <a href="/"
                   class="inline goonShopping ">继续购物</a>
                <input type="button" class=" tallyBTnPos inline span_submit_calre js_btn" value="结算"
                       onclick="checkBuy()">
                <p class="t_r">
                    合计（不含运费）：<span class="f20 ff6600 inline vTop priceDisplay jsjs" id="all">
    ¥${allmoney}</span><span class="inline f14 fb ff6600 vTop mg_l5"></span>
                </p>
            </div>
        </div>
    </div>
</form>
<script type="text/javascript">
    window.MainSite = "http://www.biyao.com";
</script>
<script type="text/javascript"
        src="pc/common/js/common.js?v=biyao_52bff81"></script>
<script type="text/javascript"
        src="pc/common/js/ui/dialog.js?v=biyao_ba57fb5"></script>
<script type="text/javascript"
        src="pc/common/js/ui/select.js?v=biyao_1dcaa7c"></script>
<script type="text/javascript"
        src="pc/common/js/ui/autocomplete.js?v=biyao_bd4725d"></script>
<script type="text/javascript"
        src="pc/common/js/ui/jquery.pagination.js?v=biyao_1a0a135"></script>
<script type="text/javascript"
        src="pc/common/js/ui/pages.js?v=biyao_5fd7a00"></script>
<script type="text/javascript"
        src="pc/www/js/utility/qrcode.js?v=biyao_8c0b79c"></script>
<script type="text/javascript"
        src="pc/buy/js/shopcarDes.js?v=biyao_ba3e6ae"></script>
<script type="text/javascript"
        src="pc/www/js/product/lazyloadIM.js?v=biyao_c5ce53c"></script>

<script type="text/javascript" src="pc/common/js/lazyload.js?v=biyao_80d4f78"></script>

<script type="text/javascript" src="pc/buy/js/materiallistDes.js?v=biyao_21283ab"></script>
<script type="text/template" id="materialsOfProductTemplate">
    <div class="pop_bd pd_t15 clearfix">
        <ul class="sizeZero ml_list">
        </ul>
    </div>
</script>
<div data-selector="J_im" id="webIM_showDiv"></div>
<div class="footer_links clearfix J_1200 auto">
    <div class="content wrap sizeZero">
        <div class="footer_nav_box inline">
            <ul class="footer_nav_list clearfix">
                <li>
                    <a target="_blank" href="list.html#minisite/ljby">关于必要</a>
                    <span class="bg_line"></span>
                </li>
                <li>
                    <a target="_blank" href="list.html#help/8.html">加入必要</a>
                    <span class="bg_line"></span>
                </li>
                <li>
                    <a target="_blank" href="tel.html">联系我们</a>
                    <span class="bg_line"></span>
                </li>
                <li class="none">
                    <a target="_blank" href="list.html#list/39/list-1.html">网站地图</a>
                </li>
                <li>
                    <a target="_blank" href="tel.html">官方微博</a>
                    <span class="bg_line"></span>
                </li>

            </ul>
            <p class="col_999 lineH18 mg_t10">◎BIYAO.COM 2015 版权所有
            </p>
            <p class="col_999 lineH18 mg_t10"><i class="gwab_icon inline"></i><a
                    class="col_999 inline mg_r5"
                    href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44049102496139"
                    target="_blank">粤公网安备44049102496139号</a> <a class="col_999 inline"
                                                                href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action"
                                                                target="_blank">粤ICP备13088531号</a>
            </p>
        </div>
        <div class="footer_evm sizeZero inline">
            <div class="inline mg_r40 footer_evm_img">
                <div class="an_bg inline mg_r15"></div>
                <div class="inline evm_tit_msg">
                    <span class="col_333 f14">扫描二维码下载</span><br/>
                    <span class="col_724 f14">必要手机客户端</span>
                </div>
            </div>
            <div class="inline mg_r10 footer_evm_img">
                <div class="weixin_bg inline mg_r15"></div>
                <div class="inline evm_tit_msg">
                    <span class="col_333 f14">扫描二维码关注</span><br/>
                    <span class="col_724 f14">必要官方微信</span>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="pc/www/js/common.js?v=biyao_2bb680a"></script>
<script type="text/javascript" src="pc/common/js/bytrack.js"></script>
<script type="text/javascript">
    function checkBuy() {
        $('#buy').submit();
    }

    function changeCount(obj) {
        var count = $(obj).val();
        var price = $(obj).attr("price");
        var cartId = $(obj).attr("cartId");
        var goodMoney = count * price;
        var lasttr = $(obj).parent().parent().find('td:last');
        $(lasttr).html(goodMoney);
        var list = document.getElementsByClassName("goodMoney");
        var listCount = document.getElementsByClassName("goodcount");
        var allmoney = 0;
        var allcount = 0;
        for (i = 0; i < list.length; i++) {
            allmoney += Number($(list[i]).html());
        }
        for (j = 0; j < listCount.length; j++) {
            allcount += Number($(listCount[j]).val());
        }
        $('#totalPrice').html(allmoney);
        $('#totalNum').html(allcount);
        $('#all').html(allmoney);
        $.ajax({
                   url: "/cart/change",
                   data: {
                       "cartId": cartId,
                       "count": count,
                       "allcount": allcount,
                       "allmoney": allmoney
                   },
                   success: function () {
                       alert("数量更改成功");
                   }

               });
    }

    function deleteGood(obj) {
        var cartId = $(obj).attr("cartId");
        $.ajax({
                   url: "/cart/delete",
                   data: {
                       "cartId": cartId,
                   },
                   success: function () {
                       alert("删除成功");
                   }

               });

    }
</script>
</body>
</html>
