<%--
  Created by IntelliJ IDEA.
  User: 孙淼
  Date: 2018/5/25
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta property="wb:webmaster" content="8eabb156d1a9cb46">
    <title>必要平台-订单确认 – 我要的，才是必要的 – 必要biyao.com</title>
    <link href="pc/favicon.ico" rel="shortcut icon" type="image/x-icon"/>
    <link href="pc/favicon.ico" rel="icon" type="image/x-icon"/>
    <link href="pc/common/css/common.css?v=biyao_9cf87cc" rel="stylesheet"/>
    <link href="pc/www/css/cm_www.css?v=biyao_c0d1bd0" rel="stylesheet"/>
    <link href="pc/buy/css/newBuy.css?v=biyao_dac4785" rel="stylesheet"/>
    <script type="text/javascript" src="pc/common/js/jquery.extention.js?v=biyao_98daa33"></script>
    <script type="text/javascript" src="pc/common/js/jquery.cookie.js?v=biyao_a5283b2"></script>
    <script type="text/javascript" src="pc/common/js/common.js?v=biyao_52bff81"></script>
    <script type="text/javascript" src="pc/common/js/ui/dialog.js?v=biyao_ba57fb5"></script>
    <script type="text/javascript" src="pc/common/js/ui/select.js?v=biyao_1dcaa7c"></script>
    <script type="text/javascript" src="pc/common/js/ui/loadmask.js?v=biyao_5aac5cc"></script>
    <script type="text/javascript" src="pc/buy/js/commonre.js?v=biyao_27f335b"></script>
    <script type="text/javascript"
            src="pc/minisite/byshoes/js/jquery.cookie.js?v=biyao_a5283b2"></script>

    <script type="text/javascript">
        function GetRequest() {
            var url = location.search; //获取url中"?"符后的字串
            var theRequest = new Object();
            if (url.indexOf("?") != -1) {
                var str = url.substr(1);
                strs = str.split("&");
                for (var i = 0; i < strs.length; i++) {
                    theRequest[strs[i].split("=")[0]] = unescape(strs[i].split("=")[1]);
                }
            }
            return theRequest;
        }

        var Request = new Object();
        Request = GetRequest();
        if (!$.cookie("source")) {
            $.cookie('source', Request['source'], {domain: "127.0.0.54/", path: "/"});
        }
    </script>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<form action="/cart/buy" id="formBuy" method="post">
<div class="pd_b40">
    <div class="wrap ie78">
        <div class="mg_t20">
            <h4 class="nTitle">确认收货地址</h4>
              <h6><a style="color:red;" href="address.jsp">新增收货地址</a></h6>
            <select style="margin-left: 100px;margin-top: -48px;border: 1px solid #ccc;font-size: 16px;" name="add" id="add">
                <option>未选择</option>
                <c:forEach var="address" items="${addressBeans}">
                    <option>
                        收件人：${address.recivename}，收件人地址：${address.addinfo},收件人电话：${address.recivetel}</option>
                </c:forEach>
            </select>
        </div>
        <div class="mg_t40 none" id="couponListView">
            <h4 class="nTitle">支付方式</h4>
            <p class="f14 col_666 mg_t15 pd_l15">在线支付</p>
            <div class="coupon_show none">
                <div class="coupon_show_box" id="couponShowBox">
                    <div class="coupon_item" id="couponListUsed"></div>
                    <div class="coupon_item" id="unCouponListUsed"></div>
                </div>
            </div>

        </div>
        <div class="mg_t20">
            <h4 class="nTitle">确认订单</h4>
            <input type="hidden" id="fromId" value="shopcar"/> <input
                type="hidden" id="design_ids" value="[1300630049000000060]"/> <input
                type="hidden" id="product_book_ids" value="[1211915]"/>
            <div class="clearfix mb_20">
                <div class="comment_box  ">
                    <table cellspacing="0" cellpadding="0" class="sop_table1">
                        <tbody>
                        <tr>
                            <th align="left" class="col_523">商品信息</th>
                            <th width="10%" align="center" class="col_523">单价</th>
                            <th width="10%" align="center" class="col_523">数量</th>
                            <th width="20%" align="center" class="col_523">包装</th>
                            <th width="10%" align="center" class="col_523">小计</th>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="shoppingBox ">
                <table class="sop_table1 lastTh tabledel bg_fff" cellpadding="0"
                       cellspacing="0" id="tab">
                    <c:forEach var="cart" items="${cartBean}">
                        <tr>
                            <td width="130" align="left">
						<span class="sop_img inline">
                                <img width="100" height="100" src="${cart.picPath}"/>
						</span>
                            </td>
                            <td align="left">
                                <span class="col_523">${cart.gname}</span>
                                <br/>
                                <div class="col_999 inline mg_t5">
                                    尺码:${cart.size}<br/>颜色:${cart.color}</div>
                                <br/>
                            </td>
                            <td width="10%" align="center" class="ff6600">¥${cart.price}</td>
                            <td width="10%" align="center" class="sizeZero">
                                <span>${cart.count}</span>
                            </td>
                            <td width="20%" align="center" class="col_666">
                                <span class="span_package_type">普通包装</span>
                                <span class="span_package_price pack_selects">(免费)</span>
                            </td>
                            <td width="10%" align="center"><strong
                                    class="ff6600">¥${cart.price*cart.count}</strong></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <input type="hidden" send_type_value="0"
                       id="supplier_IDForDiscountCode" value="1"
                       name="order_design_num" expresstype_id="0"
                       supplier_id="130063"/>
                <div class="backg_f6 clearfix pd_b10">
                    <div class="merchantMsgBox">
                        <table width="500" cellspacing="0" cellpadding="0" border="0"
                               class=" f_l">
                            <tbody>
                            <tr>
                                <td class="vTop col_666 pd_r10">给商家留言</td>
                                <td><textarea name="express_c"
                                              supplier_id="130063"
                                              data-highlight="highlight" maxlength="50"
                                              placeholder="建议填写内容已提前与商家沟通一致"
                                              class="J_placeholder textareaCom w390 h73 bdDB"></textarea>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="paybill_title f14">
                <div class="paybilltitleIn">
                    <input type="hidden" value="369.0"
                           name="order_design_price"
                           supplier_id="130063"/>
                    店铺合计（含运费）：<span class="col_f60 f14 mg_r20"><span
                        name="order_price"
                        supplier_id="130063">${allmoney}</span></span>
                </div>
            </div>
        </div>
    </div>
    <div class="bg_fff border mg_t30 relative">
        <div class="firmbox mg_t20">
            <div class="lineH30 pd_l10 pd_r20 clearfix ">
                <div class="f_r col_666 f14">
                    商品总价：<span class="w80 inline t_r col_f60 pd_r5 f14"
                               id="total_order_design_price">¥${allmoney}</span>
                </div>
                <span class="inline f_r mg_r30 col_666">商品总数 <em
                        id="productNum" class="col_f60 fb f14">${allcount}</em> 件
    </span>
            </div>
            <div class="lineH30 pd_l10 pd_r20 clearfix ">
                <div id="discount_price" class="f_r col_666 f14 "></div>
            </div>
            <div class="clearfix">
                <ul class="firm_ul f_r mg10">
                    <li class="f14 col_666">实际支付金额：<strong class="col_f60 ">
                        <em class="f18 fb inline w80" id="total_order_price">${allmoney}</em>
                    </strong></li>
                    <input type="hidden" value="369.0"
                           id="total_order_design_price_h"/>
                    <input type="hidden" value="0" id="h_my_point"/>
                </ul>
            </div>
            <div style="display: none;" id="confirmorder_recv_info"
                 class="clearfix t_r ">
                <span id="area" class="f14 col_666 mg_r5"></span><br> <span
                    id="address" class="f14 col_666 mg_r5"></span><br> <span
                    id="name" class="f14 col_666 mg_r5"></span><br> <span
                    id="phoneNum" class="f14 col_666 mg_r5"></span>
            </div>
        </div>
        <div class="pd_t10 t_r pd_r20 mg_b20">
            <a href="/cart/query"
               class=" col_999 back_pay_btn inline f16 mg_r20">返回购物车</a>
            <input type="button" id="submitorder" style="border: 1px solid #f49f26;" class="inline f16 order_qr_btn t_c " value="提交订单" onclick="check()">
        </div>
    </div>
</div>
</div>
</form>
<script src="pc/common/js/ui/jquery.validate.js?v=biyao_3051366"></script>
<script src="pc/common/js/jquery.tabso.js?v=biyao_e358f64"
        type="text/javascript"></script>
<script type="text/javascript"
        src="pc/buy/js/ConfirmOrderDes.js?v=biyao_b3d72f3"></script>
<script type="text/javascript"
        src="pc/common/js/lazyload.js?v=biyao_80d4f78"></script>
<script type="text/javascript"
        src="pc/www/js/product/lazyloadIM.js?v=biyao_c5ce53c"></script>
<script type="text/javascript" src="pc/buy/js/materiallistDes.js?v=biyao_21283ab"></script>
<script type="text/javascript"
        src="pc/minisite/byshoes/js/jquery.cookie.js?v=biyao_a5283b2"></script>
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
<script>
    function check() {
        var obj = document.getElementById("add"); //定位id

        var index = obj.selectedIndex; // 选中索引

        var value = obj.options[index].value; // 选中值
        if(value=="未选择"){
            alert("请选择收货地址");
        }else{
            document.getElementById("formBuy").submit();
        }

    }
</script>

</body>

</html>
