<%--
  Created by IntelliJ IDEA.
  User: 孙淼
  Date: 2018/5/29
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人中心-管理收货地址 – 我要的，才是必要的 – 必要biyao.com</title>
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
    <div class="per_right_out backg_fff">
        <div class="per_right ">
            <div class="">
                <div class="relative">
                    <h4 class="nTitle">个人设置</h4>
                </div>
                <form method="post" id="addAddress" action="/add">
                    <div class="pd10">
                        <input type="hidden" data-highlight="highlight" maxlength="16" value="0"
                               name="isUpdate">
                        <input class="J_hide" type="hidden" id="hid_province" name="province"/>
                        <input class="J_hide" type="hidden" id="hid_city" name="city"/>
                        <input class="J_hide" type="hidden" id="hid_area" name="areaId"/>
                        <table border="0" cellspacing="0" class="per_table th80">
                            <tbody>
                            <tr>
                                <th>
                                    <span class="col_ee5b47"></span>收货人姓名：
                                </th>
                                <td>
                                    <input type="text" data-highlight="highlight" maxlength="64"
                                           value="" name="receiver" class="inpCom w200 permy"
                                           id="name">
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <span class="col_ee5b47"></span>街道地址：
                                </th>
                                <td>
                                    <input type="text" data-highlight="highlight" maxlength="128"
                                           value="" class="inpCom w380 permy" name="address"
                                           id="address">
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <span class="col_ee5b47"></span>手机号码：
                                </th>
                                <td>
                                    <input type="text" data-highlight="highlight" maxlength="64"
                                           value="" class="inpCom w200 permy" name="phone"
                                           id="phone">
                                </td>
                            </tr>
                            <tr>
                                <th></th>
                                <td colspan="2">
                                    <input type="button"
                                           class="btnCom1 btnComS btnBg2 btnH1 w80 inline J_save"
                                           value="确定" onclick="add()"/>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </form>
                <h3 class="perTitle col_523 lineH24">已保存的地址</h3>
                <table border="0" cellspacing="0" cellpadding="0" class="perTableTitle1">
                    <tbody>
                    <tr>
                        <td width="9%"><span class="inline">收货人</span></td>
                        <td width="30%"><span class="inline">街道地址</span></td>
                        <td width="10%"><span class="inline">手机</span></td>
                        <td width="10%"><span class="inline">操作</span></td>
                    </tr>
                    </tbody>
                </table>
                <table border="0" cellspacing="1" cellpadding="0" class="J_table per_list1  bg_fff">
                    <tbody>
                    <c:forEach var="address" items="${addList}">
                        <tr data-addressid="476683">
                            <td width="9%" class="J_td2">${address.recivename}</td>
                            <td width="20%" class="J_td3">
                                    ${address.addinfo}
                            </td>
                            <td width="11%" class="J_td2">${address.recivetel}</td>
                            <td width="10%"><a id="${address.addId}"
                                               href="/delete?id=${address.addId}"
                                               onclick="delAdd(this)">删除</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
    <script type="text/javascript">
        function getCookie(cname) {
            var name = cname + "=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') c = c.substring(1);
                if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
            }
            return "";
        }

        if ((typeof(getCookie("__qc__k")) != "undefined" && getCookie("__qc__k") != "")
            || (typeof(getCookie("mobileNO")) != "undefined" && getCookie("mobileNO") != "")) {
            $("#forgetPasswordID").html("");
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
<script src="pc/www/js/mycenter/personal_deliveryAddress.js?v=biyao_df0f94c"></script>
<script src="pc/common/js/ui/loadmask.js?v=biyao_5aac5cc" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        var selector = '.J_default_address';
        LT.setRadioEffect(selector);
    });

    function add() {
        var name = $('#name').val();
        var phone = $('#phone').val();
        var address = $('#address').val();
        if (name != '' && phone != '' && address != '') {
            $('#addAddress').submit();
        } else {
            alert("地址信息不能为空");
        }
    }
</script>
</body>
</html>
