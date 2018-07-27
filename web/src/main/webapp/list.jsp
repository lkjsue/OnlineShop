<%--
  Created by IntelliJ IDEA.
  User: 孙淼
  Date: 2018/5/23
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta name="description" content="必要C2M商城是全球性价比最高的电子商务平台，是全球第一家用户直连制造（Customer To Manufactory）的平台，通过平台建立消费者与品质制造商的桥梁，将消费者的需求直接发送到工厂，按需生产模式既满足了消费者个性化的需求，又短路了复杂的商品流通环节，真正让消费者享受到专属且高品质的商品。目前，商品覆盖高跟鞋、眼镜、饰品、运动鞋、运动服、女士包包等品类，未来会按照消费者需求来增加新的产品类目。"/>
    <meta name="Keywords" content="必要;必要商城;必要平台;必要电商;C2M商城;工业4.0;定制平台;定制商城;奢侈品定制;定制鞋;定制包;定制眼镜;定制饰品;定制运动服;定制运动鞋" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>必要 - 全球首家C2M电子商务平台</title>
    <link href="pc/favicon.ico" rel="shortcut icon"
          type="image/x-icon" />
    <link href="pc/favicon.ico" rel="icon"
          type="image/x-icon" />
    <script type="text/javascript">
        window.ApiSite = "http://api.biyao.com";
        window.ControllerSite="";
        window.loginUserId=0;
        window.__pageType="mini";
    </script>
    <link href="pc/common/css/common.css?v=biyao_1227846" rel="stylesheet" />
    <link href="pc/www/css/cm_www.css?v=biyao_3f1d92e" rel="stylesheet" />
    <script type="text/javascript"	src="pc/common/js/jquery-1.8.3.js?v=biyao_7d074dc"></script>
    <script type="text/javascript"	src="pc/common/js/jquery.extention.js?v=biyao_98daa33"></script>
    <script type="text/javascript" src="pc/common/js/lazyload.js?v=biyao_80d4f78"></script>
    <script type="text/javascript" src="pc/minisite/byshoes/js/jquery.cookie.js?v=biyao_a5283b2"></script>
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
        if(!$.cookie("source")){
            $.cookie('source', Request['source'],{domain:"127.0.0.54",path:"/"});
        }
    </script>
</head>
<body id="pagebody">
<jsp:include page="head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="pc/www/css/home.css?v=biyao_b551ce1"/>
<script type="text/javascript">
    var t = n = 0, count;
    $(function() {

        count = $("#banner_switch_list li").length;
        $("#banner_switch_list li:not(:first-child)").hide();
        $("#banner_switch .xb li").click(function() {
            var i = $(this).text() - 1;//获取Li元素内的值，即1，2，3，4
            n = i;
            if (i >= count)
                return;
            $("#banner_switch_list li").filter(":visible").fadeOut().parent().children().eq(i).fadeIn();
            $(this).toggleClass("checked");
            $(this).siblings().removeClass("checked");
        });
        t = setInterval("showAuto()", 8000);
        $("#banner_switch ").hover(function() {
            clearInterval(t)
        }, function() {
            t = setInterval("showAuto()", 8000);
        });
    });

    function showAuto() {
        n = n >= (count - 1) ? 0 : ++n;
        $("#banner_switch .xb li").eq(n).trigger('click');
    }
</script>
<link rel="stylesheet" href="files/data0/minisite/9326b81b7e1d4336a3686fbca469fc72/pc/css/special_style.css">
<script type="text/javascript" src="files/data0/minisite/9326b81b7e1d4336a3686fbca469fc72/pc/js/jquery.min.js"></script>
<script type="text/javascript" src="files/data0/minisite/9326b81b7e1d4336a3686fbca469fc72/pc/js/jquery.lazyload.min.js"></script>
<div class="J_T1200">

</div>
<div class="w1200 auto mg_t10">
    <div class="pos_nav">
        <div class="zt_navigation">
            <span class="inline mg_l15">${type}</span>
            <span class="inline mg_l15">></span>
            <a class="inline last" href="#001">${desc}</a>
        </div>
    </div>
    <div name="001" id="001">
        <c:forEach items="${goodsBeans}" var="goodsBean">
            <div>
                <p style="font-size: 30px;display: block;margin-left: 50%;margin-top: 18px;">${goodsBean.goodsDesc}</p>
            </div>
            <div>
                <div style="float: left;width: 350px;margin-top: 115px;">
                    <span style="font-size: 24px;display: block;text-align: center">${goodsBean.gname}</span>
                    <span style="font-size: 24px;display: block;text-align: center">${goodsBean.price}</span>
                </div>
                <div style="margin-left: 50px;float: left;">
                    <a target="_blank" href="/goods/product?gid=${goodsBean.goodsid}&type=${goodsBean.goodsid}">
                        <img class="lazypic" src="${goodsBean.picPath}" alt="" style="width: 800px;height: 300px;">
                    </a>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<script type="text/javascript">
    $(function(){
        $(".J_T1200").show();
        $(".J_1200").show();
        setTimeout(function(){
            $('.lazypic').lazyload({});
        },1000);
    });

</script>
<script>
    var _hmt = _hmt || [];

    $(window).scroll(function () {
        var t = document.documentElement.scrollTop || document.body.scrollTop;
        if (t >140) {
            $(".zt_navigation").addClass("fixed_p")
        }else{
            $(".zt_navigation").removeClass("fixed_p")
        }
    });
</script>

<script type="text/javascript" src="pc/common/js/ui/dialog.js?v=biyao_130c013"></script>
<script type="text/javascript" src="pc/common/js/ui/select.js?v=biyao_1dcaa7c"></script>
<!-- <script>
var _hmt = _hmt || [];
(function() {
	var hm = document.createElement("script");
	hm.src = "//hm.baidu.com/hm.js?8263bc34c44278c176458d5aca724aed";
	var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(hm, s);
})();
</script> --><div data-selector="J_im"></div>
<div class="J_1200 none">
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
                <p class="col_999 lineH18 mg_t10"><i class="gwab_icon inline"></i><a class="col_999 inline mg_r5" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44049102496139" target="_blank">粤公网安备44049102496139号</a> <a class="col_999 inline" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">粤ICP备15017094号</a>
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
</div><script src="pc/common/js/common.js?v=biyao_c83c46d" type="text/javascript"></script>
<script type="text/javascript"	src="pc/www/js/common.js?v=biyao_bd8bd36"></script>
<script type="text/javascript" src="pc/minisite/shopsMiniSite/js/attention.js?v=biyao_2be4791"></script>
</body>
<script type="text/javascript" src="pc/common/js/bytrack.js?v=biyao_8b3cc7e"></script>
</html>
