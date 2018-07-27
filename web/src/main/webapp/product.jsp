<%--
  Created by IntelliJ IDEA.
  User: 孙淼
  Date: 2018/5/24
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta name="description"
          content="必要C2M商城是全球性价比最高的电子商务平台，是全球第一家用户直连制造（Customer To Manufactory）的平台，通过平台建立消费者与品质制造商的桥梁，将消费者的需求直接发送到工厂，按需生产模式既满足了消费者个性化的需求，又短路了复杂的商品流通环节，真正让消费者享受到专属且高品质的商品。目前，商品覆盖高跟鞋、眼镜、饰品、运动鞋、运动服、女士包包等品类，未来会按照消费者需求来增加新的产品类目。"/>
    <meta name="Keywords"
          content="必要;必要商城;必要平台;必要电商;C2M商城;工业4.0;定制平台;定制商城;奢侈品定制;定制鞋;定制包;定制眼镜;定制饰品;定制运动服;定制运动鞋"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta property="qc:admins" content="35713343766211176375747716"/>
    <title></title>
    <link href="pc/favicon.ico" rel="shortcut icon"
          type="image/x-icon"/>
    <link href="pc/favicon.ico" rel="icon"
          type="image/x-icon"/>
    <script type="text/javascript">
        window.ApiSite = "http://api.biyao.com";
        window.ControllerSite = "";
        window.loginUserId = 2444809;
        window.version = "2015010131708";//给外链js设置版本号
        window.__pageType = "other";
        if (window.loginUserId != "") {
            window.WebIMSite = "http://webim.idstaff.com";
        }
        else {
            window.WebIMSite = "http://webim.idstaff.com";
        }
    </script>
    <script type="text/javascript">
        window.designData =
            {
                "carveInfo": null,
                "imgList": [{
                    "img_l": "http://img.biyao.com/files/temp/f9/f91a43f5ea026261.jpg",
                    "img_s": "http://img.biyao.com/files/temp/f9/f91a43f5ea026261.jpg"
                }, {
                    "img_l": "http://img.biyao.com/files/temp/96/960ba7d0ca35c582.jpg",
                    "img_s": "http://img.biyao.com/files/temp/96/960ba7d0ca35c582.jpg"
                }, {
                    "img_l": "http://img.biyao.com/files/temp/31/3186a35bbe2c7733.jpg",
                    "img_s": "http://img.biyao.com/files/temp/31/3186a35bbe2c7733.jpg"
                }, {
                    "img_l": "http://img.biyao.com/files/temp/11/1125bf3b2c225d07.jpg",
                    "img_s": "http://img.biyao.com/files/temp/11/1125bf3b2c225d07.jpg"
                }],
                "isCarve": 0,
                "productDetail": "<p><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100162_8940_636053467923974311_0.jpg\" style=\"\" title=\"罗马壶详情图1200_01.jpg\"/><\/p><p><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100161_9096_636053469125395380_0.jpg\" style=\"\" title=\"罗马壶详情图1200_02.jpg\"/><\/p><p><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100162_8940_636053468031302499_0.jpg\" style=\"\" title=\"罗马壶详情图1200_03.jpg\"/><\/p><p><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100161_9096_636053469230383564_0.jpg\" style=\"\" title=\"罗马壶详情图1200_04.jpg\"/><\/p><p><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100162_8940_636053468161260728_0.jpg\" style=\"\" title=\"罗马壶详情图1200_05.jpg\"/><\/p><p><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100161_9096_636053469352999779_0.jpg\" style=\"\" title=\"罗马壶详情图1200_06.jpg\"/><\/p><p><img src=\"http://img.biyao.com/files/data0/2016/07/29/08/productiondetail/data/192168100161_4280_636053776523155295_0.jpg\" style=\"\" title=\"lm-pc.jpg\" alt=\"lm-pc.jpg\"/><\/p><p><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100161_9096_636053469465007976_0.jpg\" style=\"\" title=\"罗马壶详情图1200_08.jpg\"/><\/p><p><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100162_8940_636053468404933156_0.jpg\" style=\"\" title=\"罗马壶详情图1200_09.jpg\"/><\/p><p><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100162_8940_636053468462029256_0.jpg\" style=\"\" title=\"罗马壶详情图1200_10.jpg\"/><\/p><p><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100162_8940_636053468551729414_0.jpg\" style=\"\" title=\"罗马壶详情图1200_11.jpg\"/><\/p><p><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100162_8940_636053468601337501_0.jpg\" style=\"\" title=\"罗马壶详情图1200_12.jpg\"/><\/p><p><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100162_8940_636053468676373633_0.jpg\" style=\"\" title=\"罗马壶详情图1200_13.jpg\"/><\/p><p><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100162_8940_636053468756713774_0.jpg\" style=\"\" title=\"罗马壶详情图1200_14.jpg\"/><\/p><p><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100161_9096_636053469960776847_0.jpg\" style=\"\" title=\"罗马壶详情图1200_15.jpg\"/><\/p><p><br/><\/p>",
                "productId": "1301025001",
                "productMdetail": "<p style=\"text-align: center;\"><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100161_9096_636053470359357547_0.jpg\" style=\"\" title=\"罗马壶详情图640_01.jpg\"/><\/p><p style=\"text-align: center;\"><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100161_9096_636053470397889615_0.jpg\" style=\"\" title=\"罗马壶详情图640_02.jpg\"/><\/p><p style=\"text-align: center;\"><img src=\"http://img.biyao.com/files/data0/2016/07/29/08/productiondetail/data/192168100161_4280_636053777277416620_0.jpg\" style=\"\" title=\"lmh-m.jpg\" alt=\"lmh-m.jpg\"/><\/p><p style=\"text-align: center;\"><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100162_8940_636053469327986777_0.jpg\" style=\"\" title=\"罗马壶详情图640_04.jpg\"/><\/p><p style=\"text-align: center;\"><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100161_9096_636053470529397846_0.jpg\" style=\"\" title=\"罗马壶详情图640_05.jpg\"/><\/p><p style=\"text-align: center;\"><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100162_8940_636053469495687072_0.jpg\" style=\"\" title=\"wap端-01_01.jpg\"/><\/p><p style=\"text-align: center;\"><img src=\"http://img.biyao.com/files/data0/2016/07/28/23/productiondetail/data/192168100161_9096_636053470688362125_0.png\" style=\"\" title=\"wap端-01_02.png\"/><\/p><p><br/><\/p>",
                "productSale": "长效保温，欧式设计，奥氏体304不锈钢",
                "shelfStatus": 1,
                "sizeDetail": [{
                    "duration": 10,
                    "price": 119,
                    "shelfStatus": 1,
                    "sizeDetail": null,
                    "specs": [{"goods_size": "波尔多红", "name": "颜色"},
                        {"goods_size": "2升", "name": "尺寸"}],
                    "storeNum": 100,
                    "suId": "1301025001010200001",
                    "suName": "经典北欧系列奥氏体真空保温壶"
                }, {
                    "duration": 10,
                    "price": 119,
                    "shelfStatus": 1,
                    "sizeDetail": null,
                    "specs": [{"goods_size": "亮银色", "name": "颜色"},
                        {"goods_size": "2升", "name": "尺寸"}],
                    "storeNum": 100,
                    "suId": "1301025001060200001",
                    "suName": "经典北欧系列奥氏体真空保温壶"
                }],
                "sizeList": [{
                    "des": "波尔多红",
                    "img_l": null,
                    "img_s": null,
                    "name": "颜色",
                    "spec_id": 2587,
                    "type": 0
                }, {
                    "des": "亮银色",
                    "img_l": null,
                    "img_s": null,
                    "name": "颜色",
                    "spec_id": 2588,
                    "type": 0
                }, {
                    "des": "2升",
                    "img_l": null,
                    "img_s": null,
                    "name": "尺寸",
                    "spec_id": 2589,
                    "type": 0
                }],
                "suData": {
                    "duration": 10,
                    "price": 119,
                    "shelfStatus": 1,
                    "sizeDetail": "http://img.biyao.com/files/temp/d2/d2d1453df6275eb6.jpg",
                    "specs": [{"goods_size": "亮银色", "name": "颜色"},
                        {"goods_size": "2升", "name": "尺寸"}],
                    "storeNum": 332,
                    "suId": "1301025001060200001",
                    "suName": "经典北欧系列奥氏体真空保温壶"
                },
                "supplierInfo": {
                    "_OEM_info": "",
                    "_ServicesTel": "400-869-9663",
                    "_StoreDesc": "STRAFORD常年服务于膳魔师、双立人、WMF等众多国际一线品牌，是国内最大的不锈钢保温产品制造商之一，拥有国际领先的双层抽真空技术，以及众多产品外观设计专利，拥有十多年国际知名品牌生产经验，致力于为全球家庭用户提供设计简洁、时尚耐用、健康环保的不锈钢产品，力求为每一个家庭带来舒适优越的生活体验！",
                    "_TransferDelayDay": null,
                    "_company_name": null,
                    "_contract_deadline": "2016-07-25 15:27:38.837",
                    "_createby": "10032",
                    "_createtime": "2016-07-25",
                    "_enable": true,
                    "_id": 74,
                    "_logo_url": "http://img.biyao.com/files/data0/2016/07/28/18/storelogo/abc1e9e4624ca14e.jpg",
                    "_logoid": 0,
                    "_service_tel": null,
                    "_service_time": "周一至周日9:00-21:00",
                    "_settled_time": "2016-07-25",
                    "_status": 1,
                    "_store_domain_name": "straford.biyao.com",
                    "_store_location": null,
                    "_store_logo_url": "",
                    "_store_name": "STRAFORD水具",
                    "_supplier_factory_name": null,
                    "_supplier_id": 130102,
                    "_updateby": "10032",
                    "_updatetime": "2016-07-29",
                    "is_webim": 0,
                    "is_zcwebim": 0,
                    "policy": [{
                        "policyDescription": "实物破损、不符、质量问题，退换货商家承担往返运费。",
                        "policyId": 3,
                        "policyName": "7天无忧退换",
                        "supplierId": 130102,
                        "supplierName": "STRAFORD水具"
                    }, {
                        "policyDescription": "争议可申诉，申诉成功，立即退款。",
                        "policyId": 4,
                        "policyName": "先行赔付",
                        "supplierId": 130102,
                        "supplierName": "STRAFORD水具"
                    }, {
                        "policyDescription": "未按承诺时间发货，系统自动赔付（赔款金额为订单商品金额的30%，上限500元）。",
                        "policyId": 5,
                        "policyName": "超时赔偿",
                        "supplierId": 130102,
                        "supplierName": "STRAFORD水具"
                    }, {
                        "policyDescription": "运费由商家承担",
                        "policyId": 9,
                        "policyName": "顺丰包邮",
                        "supplierId": 130102,
                        "supplierName": "STRAFORD水具"
                    }],
                    "policyDescription": "<p style=\"text-align: center;\"><img src=\"http://img.biyao.com/files/data0/2016/07/28/20/productiondetail/data/192168100162_8940_636053362990299999_0.jpg\" title=\"wb端-01.jpg\" alt=\"wb端-01.jpg\"/><\/p>",
                    "productGrade": 5,
                    "productNum": 0,
                    "publicityImgList": null,
                    "qualityGrade": 5,
                    "return_address": null,
                    "return_phone": null,
                    "return_receiver": null,
                    "return_zipcode": null,
                    "serviceGrade": 5,
                    "zcgroupid": ""
                }
            };
        window.categoryID = 509;
        designData.ModelId = designData.productId;
        window.isCarveCustomer = 0;//顾客刻字状态
        window.CarveContent = "";//刻字内容
        window.supplierInfo =
            {
                "_OEM_info": "",
                "_ServicesTel": "400-869-9663",
                "_StoreDesc": "STRAFORD常年服务于膳魔师、双立人、WMF等众多国际一线品牌，是国内最大的不锈钢保温产品制造商之一，拥有国际领先的双层抽真空技术，以及众多产品外观设计专利，拥有十多年国际知名品牌生产经验，致力于为全球家庭用户提供设计简洁、时尚耐用、健康环保的不锈钢产品，力求为每一个家庭带来舒适优越的生活体验！",
                "_TransferDelayDay": null,
                "_company_name": null,
                "_contract_deadline": "2016-07-25 15:27:38.837",
                "_createby": "10032",
                "_createtime": "2016-07-25",
                "_enable": true,
                "_id": 74,
                "_logo_url": "http://img.biyao.com/files/data0/2016/07/28/18/storelogo/abc1e9e4624ca14e.jpg",
                "_logoid": 0,
                "_service_tel": null,
                "_service_time": "周一至周日9:00-21:00",
                "_settled_time": "2016-07-25",
                "_status": 1,
                "_store_domain_name": "straford.biyao.com",
                "_store_location": null,
                "_store_logo_url": "",
                "_store_name": "STRAFORD水具",
                "_supplier_factory_name": null,
                "_supplier_id": 130102,
                "_updateby": "10032",
                "_updatetime": "2016-07-29",
                "is_webim": 0,
                "is_zcwebim": 0,
                "policy": [{
                    "policyDescription": "实物破损、不符、质量问题，退换货商家承担往返运费。",
                    "policyId": 3,
                    "policyName": "7天无忧退换",
                    "supplierId": 130102,
                    "supplierName": "STRAFORD水具"
                }, {
                    "policyDescription": "争议可申诉，申诉成功，立即退款。",
                    "policyId": 4,
                    "policyName": "先行赔付",
                    "supplierId": 130102,
                    "supplierName": "STRAFORD水具"
                }, {
                    "policyDescription": "未按承诺时间发货，系统自动赔付（赔款金额为订单商品金额的30%，上限500元）。",
                    "policyId": 5,
                    "policyName": "超时赔偿",
                    "supplierId": 130102,
                    "supplierName": "STRAFORD水具"
                }, {
                    "policyDescription": "运费由商家承担",
                    "policyId": 9,
                    "policyName": "顺丰包邮",
                    "supplierId": 130102,
                    "supplierName": "STRAFORD水具"
                }],
                "policyDescription": "<p style=\"text-align: center;\"><img src=\"http://img.biyao.com/files/data0/2016/07/28/20/productiondetail/data/192168100162_8940_636053362990299999_0.jpg\" title=\"wb端-01.jpg\" alt=\"wb端-01.jpg\"/><\/p>",
                "productGrade": 5,
                "productNum": 0,
                "publicityImgList": null,
                "qualityGrade": 5,
                "return_address": null,
                "return_phone": null,
                "return_receiver": null,
                "return_zipcode": null,
                "serviceGrade": 5,
                "zcgroupid": ""
            };
        window.ControllerSite = '';
    </script>
    <link href="pc/common/css/common.css?v=biyao_1227846" rel="stylesheet"/>
    <link href="pc/www/css/cm_www.css?v=biyao_3f1d92e" rel="stylesheet"/>
    <script type="text/javascript"></script>

    <link type="text/css" href="pc/www/css/editor_by.css?v=biyao_a7abbbd" rel="stylesheet"/>
    <link type="text/css" href="pc/www/cssnew/noModel.css?v=biyao_6a5d800" rel="stylesheet"/>
    <script type="text/javascript" src="pc/common/js/lazyload.js?v=biyao_80d4f78"></script>
    <script type="text/javascript" src="pc/www/js/product/lazyloadIM.js?v=biyao_2f2a448"></script>
</head>
<body id="pagebody">
<jsp:include page="head.jsp"></jsp:include>
<div class="section">
    <ul class="section-bread clearfix">
        <li>
            <a href="/">首页</a>
            <span class="bread-title">&nbsp;/&nbsp;${good.gname}</span>
        </li>
        <li class="b-company" id="supplierInfo">
            <i></i>
            <span class="supplier_name"></span>

            <div class="company none" id="companycssreInfo">
                <div class="company-head">
                    <div>
                        <span class="company-icon">
                        <img class="supplier_logo_url" src="" alt=""></span>
                        <span class="company-name supplier_name"></span>
                        <i></i>
                        <b id="supplierInfoClose"></b>
                    </div>
                </div>
                <div class="company-score">
                    <ul>
                        <li id="desc_score">
                            <span>实物相符 : </span>
                            <i><b class="scoreImg"></b></i>
                            <span class="score-num score"></span>
                        </li>
                        <li id="service_score">
                            <span>商家服务 : </span>
                            <i><b class="scoreImg"></b></i>
                            <span class="score-num score"></span>
                        </li>
                        <li id="logistics_score">
                            <span>物流服务 : </span>
                            <i><b class="scoreImg"></b></i>
                            <span class="score-num score"></span>
                        </li>
                    </ul>
                </div>
                <div class="company-intro last supplier_StoreDesc">
                </div>
            </div>
        </li>
        <li class="b-phone">
            <i></i>
            <span class="supplier_userTel"></span>
        </li>
    </ul>
    <div class="section-editor clearfix">
        <div class="editor-main">
            <p><img src="${pic.picname}" alt=""/></p>
            <ul>
                <c:forEach var="pic" items="${pics}">
                    <li bigImg="${pic.picname}" class="click">
                        <img src="${pic.picname}" alt="" width="100"/>
                        <span></span>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div class="editor-panel">
            <div class="panel-top">
                <h1>${good.gname}</h1>
                <p>${good.goodsDesc}</p>
            </div>
            <ul class="panel-main">
                <li class="panel-press">
                    <span>价钱</span>
                    <div><span class="panel-maney">￥<i class="totalPrice">${good.price}</i></span>
                    </div>
                </li>
                <li class="panel-specs">
                    <span>颜色</span>
                    <div>
                        <ul>
                            <c:forEach var="color" items="${details.colors}">
                                <li class="panel-size color"
                                    onclick="select(this)">${color}</li>
                            </c:forEach>
                        </ul>
                    </div>
                </li>
                <li class="panel-specs">
                    <span>尺寸</span>

                    <div>
                        <ul>
                            <c:forEach var="size" items="${details.sizes}">
                                <li class="panel-size size"
                                    onclick="selectSize(this)">${size}</li>
                            </c:forEach>
                        </ul>
                    </div>
                </li>
                <li class="panel-count">
                    <span>数量</span>
                    <div>
                        <p class="panel-num">
                            <span class="panel-minus">-</span>
                            <span class="panel-number" id="num">1</span>
                            <span class="panel-add">+</span>
                        </p>

                    </div>
                </li>
            </ul>
            <div class="panel-bottom">
                <p onclick="addCart()"><i></i>加入购物车</p>
                <ul class="clearfix supplier_policy">

                </ul>
            </div>
        </div>
    </div>
    <div class="wrap mg_t30 ie78">
        <ul class="commodityList sizeZero" name="commodityList">
            <li class="inline productInfo product_Commodity checked "
                name="productInfo" data-a="0">商品信息<i class="inline"></i></li>
            <li class="inline productReview product_Commodity "
                name="productReview" data-a="130">评价详情 <i class="inline"></i></li>
            <li class="inline supplierInfo product_Commodity"
                name="supplierInfo" data-a="260">商家服务政策
            </li>
            <li class="checkedLine" style="left: 0"></li>
        </ul>
        <!-- 商品信息 -->
        <div class="cmImgShow t_c product_border productInfoView "
             name="productInfoView">
            <p><img src="${details.detailPic}"/></p>
            <p><br/></p></div>
        <!-- 评价详情 -->
        <div class="product_border productReviewView none"
             name="productReviewView">
            <div class=" pd_t20 pd_b20">
                <div class="">
                    <c:if test="${comments!=null}">
                        <div>
                            <c:forEach var="comment" items="${comments}">
                                <div class="satisfactionBox sizeZero" id="avgRating">
                                        <span>评论时间:${comment.timeStr}
                                            <br><br>
                                            <span>评论内容:${comment.cplot}</span>
                                        </span>
                                </div>
                                <br><br>
                            </c:forEach>
                        </div>
                    </c:if>
                    <c:if test="${comments==null}">
                        <div>
                            <span>暂无评论</span>
                        </div>
                    </c:if>
                </div>
                <div id="pagerDiv" class="pagination mg_t20 pages "></div>
            </div>

        </div>
        <!-- 商家服务政策 -->
        <div class="cmImgShow product_border supplierInfoView none"
             name="supplierInfoView">
            <div class="pd_l20 pd_r20"></div>
        </div>
    </div>
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
<script type="text/javascript">

    function select(obj) {
        $(".color").css("border", "1px solid #ccc");
        $('.color').removeClass("finalColor");
        $(obj).css("border", "1px solid red");
        $(obj).addClass("finalColor");
    }

    function selectSize(obj) {
        $(".size").css("border", "1px solid #ccc");
        $('.color').removeClass("finalSize");
        $(obj).css("border", "1px solid red");
        $(obj).addClass("finalSize");
    }

    function addCart() {

        var count = $('#num').html();
        var color = $('.finalColor').html();
        var size = $('.finalSize').html();
        $.ajax({
                   type: 'post',
                   data: {
                       "count": count,
                       "color": color,
                       "size": size
                   },
                   url: "/cart/add",
                   success: function () {
                       alert("添加成功");

                   },
               });

    }

</script>
<script type="text/javascript">
    LazyLoad.js([
                    window.ControllerSite + 'pc/common/js/jquery-1.8.3.js?biyaov=' + window.version,
                    window.ControllerSite + 'pc/minisite/byshoes/js/jquery.cookie.js?biyaov='
                    + window.version,
                    window.ControllerSite + 'pc/common/js/jquery.lazyload.min.js?biyaov='
                    + window.version,
                    window.ControllerSite + 'pc/common/js/jquery.extention.js?biyaov='
                    + window.version,
                    window.ControllerSite + 'pc/common/js/common.js?biyaov=' + window.version,
                    window.ControllerSite + 'pc/www/js/common.js?biyaov=' + window.version,
                    window.ControllerSite + 'pc/common/js/ui/dialog.js?biyaov=' + window.version,
                    window.ControllerSite + 'pc/common/js/scopeControll.js?biyaov='
                    + window.version,
                    window.ControllerSite + 'pc/common/js/freemodel/freemodel.js?biyaov='
                    + window.version,
                    window.ControllerSite + 'pc/common/js/ProductReview.js?biyaov='
                    + window.version,
                    window.ControllerSite + 'pc/www/js/product/lazyloadIM.js?biyaov='
                    + window.version
                ])
</script>
</body>
<script type="text/javascript" src="pc/common/js/bytrack.js?v=biyao_8b3cc7e"></script>
</html>
