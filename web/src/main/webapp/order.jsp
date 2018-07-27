<%--
  Created by IntelliJ IDEA.
  User: 孙淼
  Date: 2018/5/26
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人中心-历史订单 – 我要的，才是必要的 – 必要biyao.com</title>
    <script type="text/javascript" src="pc/common/js/jquery-1.8.3.js?v=biyao_7d074dc"></script>
    <script type="text/javascript"
            src="pc/minisite/byshoes/js/jquery.cookie.js?v=biyao_a5283b2"></script>
    <script type="text/javascript" src="pc/common/js/jquery.extention.js?v=biyao_98daa33"></script>
    <script type="text/javascript" src="pc/common/js/ui/dialog.js?v=biyao_130c013"></script>
    <link href="pc/favicon.ico" rel="shortcut icon"
          type="image/x-icon"/>
    <link href="pc/favicon.ico" rel="icon"
          type="image/x-icon"/>
    <script type="text/javascript">
        window.ApiSite = "http://api.biyao.com";
        window.ControllerSite = "";
    </script>
    <link href="pc/common/css/common.css?v=biyao_1227846" rel="stylesheet"/>
    <link href="pc/www/css/cm_www.css?v=biyao_3f1d92e" rel="stylesheet"/>
    <link type="text/css" href="pc/www/css/myCenter.css?v=biyao_5976431"
          rel="stylesheet"/>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<div class="wrap  posR mg_t20 mH810 pd_b40">
    <div class="per_left">
        <div class="per_leftbox  pd_t14">
            <ul class="per_leftul">
                <li class="t_c">
                    <a href="Profile.html">
                        <img src="pc/www/img/avatar/head_150.png" alt=""
                             onerror="javascript:this.src='pc/www/img/avatar/head_150.png'"
                             style="width: 150px; height: 150px"/>
                    </a>
                </li>
                <li class="f14 col_fff mg_t10 t_c">${userBean.userPhone}</li>
            </ul>
        </div>
        <div class="per_leftbox">
            <div class="perleft_menu pdtb_20">
                <ul>
                    <li class="a_check "><a href="/order/queryAll"><i
                            class="f_r mcMIcon3 inline"></i>我的订单</a>
                    </li>
                    <li class=" "><a href=/address><i class="f_r mcMIcon8 inline"></i>个人设置</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        var pageIndex = 0;
        var pageCount = 0;
    </script>
    <div class="per_right_out backg_fff mg_b20 ">
        <div class="per_right ">
            <div>
                <div class="relative">
                    <h4 class="nTitle">我的订单</h4>
                </div>
                <table cellspacing="0" cellpadding="0" class="w100w t_c  perTabTitn ">
                    <tbody>
                    <tr>
                        <td width="32%"><span class="inline">商品</span></td>
                        <td width="18%"><span class="inline">合计</span></td>
                        <td width="18%"><span class="inline">评论</span></td>
                    </tr>
                    </tbody>
                </table>
                <c:forEach var="order" items="${list}">
                    <div class="J_table_wrap">
                        <div class="order_title clearfix  ">
					<span class="f_l col_666">
					 <span class="col_b2b2b2">${order.timeStr}&nbsp;&nbsp;</span>
					 <label> 订单编号：${order.orderno}</label>
					</span><span class="f_r">&nbsp;&nbsp;
					<script>
                        var suppliedIdForIm = 'supplier_' + "130091";
                    </script>
                            <!--暂时关闭IM入口，勿删-->
					<a>
                        <span class="inline">商家：</span>
                        <span id="J_product_name " class="inline col_666">Ginger皮具</span>
                    </a>
					</span>
                        </div>
                        <div class="mg_b20">
                            <table cellspacing="0" cellpadding="0" class="sop_table4 border ">
                                <tbody>
                                <tr data-unfacceptance="0"
                                    data-supplierid="130091"
                                    data-orderid="122007043946180978">
                                    <td width="46%" class="bd_r J_popup_parent">
                                        <table width="100%" height="100px" cellspacing="0"
                                               cellpadding="0">
                                            <tbody>
                                            <tr>
                                                <td name="detail_td">
                                                    <a class="perCmImg inline mg_l10"
                                                       target="_blank"
                                                       href="/goods/product?type=2&gid=${order.goodsid}">
                                                        <img alt=""
                                                             src="${order.pic}">
                                                    </a>
                                                    <div class="inline mg_l10 vTop mg_t5 lineH20 w190">
                                                        <a class="col_666"
                                                           href="/goods/product?type=2&gid=${order.goodsid}"
                                                           target="_blank">
                                                            <span class="col_666">${order.gname}</span>
                                                        </a><br>
                                                        <span class=" col_999">颜色:${order.color}<br/>尺寸:${order.size}</span>
                                                        <div class="refund_tips"></div>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td width="18%" align="center" class="bd_l vTop pd_t15 lineH20">
                                        <strong
                                                class="col_f60 f14">￥${order.buycount*order.premoney}</strong>
                                        <br> <span>（运费：￥0）</span>
                                    </td>
                                    <td width="18%" align="center" class="bd_l vTop pd_t15 lineH20">
                                        <a value="${order.detailId}" onclick="send(this)">评论</a>
                                        <div class="${order.detailId}" style="display: none">
                                            <textarea  cols="30" rows="5" id="${order.detailId}"></textarea>
                                            <input type="button" value="提交" onclick="addComment(this)">
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </c:forEach>
                <div class="DZPager mg_b20"></div>
            </div>
            <input type="hidden" id="storedesc" title=""/>
        </div>
    </div>


    <script>
        $(function () {
            hoverReservationpart();
        })

        //划过汽车套餐弹出层套餐详情
        function hoverReservationpart() {
            $(".Reservationpart").hover(
                function () {
                    var $this = $(this);
                    //判断 是否已经加载过
                    if (($this.find(".Reservation_wl_w")).length == 0) {
                        $.ajax({
                                   type: "get",
                                   async: false,
                                   url: "/RequestAPI/PackageList?designId=" + $this.attr(
                                       "designid"),
                                   success: function (data) {//sunccess
                                       if (data.success == 1) {
                                           var html = '<div class="Reservation_wl_w">\
				                	<div class="wl_jd"></div>\
				                	<div class="c_wl_n">\
				                	<div class="col_724 borderB c_wl_t overflow">\
					                	<span class="f_l">' + data.data.standardPackage.name + ' </span>\
					                	<span class="f_r">￥' + data.data.standardPackage.price + '</span>\
				                	</div>\
				                	<div class=" col_666 masked-relative masked" style="line-height:25px">';
                                           $.each(data.data.standardPackage.element,
                                                  function (j, item) {
                                                      html += '<div class="overflow">\
				                		<span class="w150 f_l">' + item + '</span><span class="f_r">包括</span>\
				                		</div>';
                                                  });
                                           $.each(data.data.comboPackage, function (j, item) {
                                               html += '<div class="col_724 borderB c_wl_t overflow">\
					                	<span class="f_l">' + item.name
                                                       + '</span><span class="f_r">￥' + item.price + '</span>\
					                	</div>\
					    				<div class=" col_666 masked-relative masked" style="line-height:25px">';
                                               $.each(item.element, function (e, ite) {
                                                   html += '<div class="overflow">\
					    					<span class="w150 f_l">' + ite + '</span><span class="f_r">包括</span>\
					    					</div>';
                                               })
                                               html += '</div>';
                                           })

                                           html += '</div>\
				                	</div></div>';
                                           $this.append(html);
                                       }
                                   }//sunccess
                               })
                    }
                    $this.find(".Reservation_wl_w").css("display", "block");
                }
                , function () {
                    $(this).find(".Reservation_wl_w").css("display", "none");
                }
            );

        }
    </script>
</div>
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


<script type="text/javascript" src="pc/common/js/lazyload.js?v=biyao_80d4f78"></script>
<script type="text/javascript" src="pc/common/js/common.js?v=biyao_c83c46d"></script>
<script type="text/javascript" src="pc/common/js/ui/select.js?v=biyao_1dcaa7c"></script>
<script type="text/javascript" src="pc/common/js/ui/autocomplete.js?v=biyao_bd4725d"></script>
<script type="text/javascript" src="pc/common/js/ui/jquery.pagination.js?v=biyao_1a0a135"></script>
<script type="text/javascript" src="pc/common/js/ui/pages.js?v=biyao_5fd7a00"></script>
<script type="text/javascript" src="pc/common/js/ui/jquery.validate.js?v=biyao_20c474d"></script>
<script type="text/javascript" src="pc/www/js/mycenter/mycenter.js?v=biyao_63cad99"></script>
<script type="text/javascript" src="pc/www/js/common.js?v=biyao_bd8bd36"></script>
<script src="pc/www/js/mycenter/myorderdetail-list.js?v=biyao_eb1ba46"
        type="text/javascript"></script>
<script src="pc/www/js/mycenter/myOrderIndex.js?v=biyao_b92d9e8"
        type="text/javascript"></script>
<script src="pc/common/js/ui/validate.js?v=biyao_8c8263d"
        type="text/javascript"></script>
<script src="pc/www/js/mycenter/cancelOrder.js?v=biyao_1e4bfed"
        type="text/javascript"></script>
<script src="pc/www/js/mycenter/myOrder_refund4.js?v=biyao_cd89831"
        type="text/javascript"></script>
<script src="pc/www/js/mycenter/common.js?v=biyao_e44562c"
        type="text/javascript"></script>
<script src="pc/common/js/ui/dialog.js?v=biyao_130c013"
        type="text/javascript"></script>
<script src="pc/common/js/ui/loadmask.js?v=biyao_5aac5cc"
        type="text/javascript"></script>
<script src="pc/www/js/product/lazyloadIM.js?v=biyao_2f2a448"
        type="text/javascript"></script>
<script type="text/javascript">

    var ua = navigator.userAgent.toLowerCase();
    var isiOS = navigator.userAgent.match('iPad') || navigator.userAgent.match('iPhone')
                || navigator.userAgent.match('iPod'),
        isAndroid = navigator.userAgent.match('Android'), isDesktop = !isiOS && !isAndroid;
    if (isiOS || isAndroid) {
        window.location.href = "http://m.biyao.com/order/orderlist"
    }

</script>
<script>
    function addwl(that) {
        $('.wl_dl_w').mask(true);
        $(that).find('.c_wl_w').css('display', 'block');
        var postData = {
            orderId: $(that).attr('orderId')
        };
        $.ajax({
                   url: window.ControllerSite + '/MyCenter/GetOrderTrace',
                   dataType: 'json',
                   type: 'POST',
                   data: postData,
                   success: function (datas) {
                       if (datas.success == true) {
                           var str = "";
                           try {
                               var jsons = datas.data;
                               var ca = jsons.length;
                               if (ca > 5) {
                                   var $more = $(that).find('.c_wl_w').find(".c_wl_f");
                                   $($more).removeClass("none");

                               }
                               ;
                               for (var i = ca - 1; i >= (ca - 5 > 0 ? ca - 5 : 0); i--) {
                                   str =
                                       str + '<div class="wl_dl"><span class="w150">'
                                       + jsons[i].accept_time + '</span><span class="w280">'
                                       + jsons[i].remark + '</span></div>';
                               }
                               $('.wl_dl_w').html(str);
                               if ($(that).attr('orderStatus') == 3 && jsons[ca - 1].opcode == 3) {
                                   str =
                                       '<span class="inline col_666 mg_t10">生产进度</span><span class="inline col_f60 mg_l15 mg_t10">'
                                       + jsons[ca - 1].rate + '%&nbsp;&nbsp;&nbsp;' + jsons[ca
                                                                                            - 1].processname
                                       + '</span></br>' +
                                       '<span class="inline  progress_box mg_t10"><span class="inline active" style="width:'
                                       + jsons[ca - 1].rate + '%"></span></span>';
                                   $(that).find('.wl_dl_w_p').html(str);
                               }
                               else {
                                   $(that).find('.wl_dl_w_p').html("");
                               }
                           } catch (e) {
                               $('.wl_dl_w').css('background-image', 'none')
                                   .html('<div class="pd10" align="center">获取信息错误<a href="/MyCenter/MyOrderDetail?orderId='
                                         + $(that).attr('orderId')
                                         + '" class="col_link ">查看详细</a><div>');
                           }
                       }
                       else {
                           $('.wl_dl_w').css('background-image', 'none')
                               .html('<div class="pd10" align="center">获取信息错误<a href="/MyCenter/MyOrderDetail?orderId='
                                     + $(that).attr('orderId')
                                     + '" class="col_link ">查看详细</a><div>');
                       }
                   },
                   error: function (e) {
                       $('.wl_dl_w').css('background-image', 'none')
                           .html('<div class="pd10" align="center">获取信息错误<a href="/MyCenter/MyOrderDetail?orderId='
                                 + $(that).attr('orderId') + '" class="col_link ">查看详细</a><div>');
                   }
               });

    }

    function send(obj) {
        var detailId = $(obj).attr("value");
        $('.' + detailId).css("display", "block");
    }

    function addComment(obj) {
        var detailId = $(obj).parent().attr("class");
        var cplot = $('#' + detailId).val();
        if (cplot == "") {
            alert("评论内容不能为空");
        } else {
            $.ajax({
                       type: 'post',
                       url: "/goods/addComment",
                       data: {
                           "detailId": detailId,
                           "cplot": cplot,
                       },
                       success: function () {
                           alert("评论发表成功");
                           $('.' + detailId).css("display", "none");
                       }
                   })
        }

    }
</script>
</body>
</html>
