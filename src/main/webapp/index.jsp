<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>易车网-汽车报价、汽车服务、轻松挑选</title>
    <meta name="description" content="e车之家-专业综合汽车购物商城，销售超数万品牌，4020万种商品，囊括小型车、微型车、紧凑车型、中等车型、高级车型、豪华车型、三厢车型、CDV车型、MPV车型、SUV等车型。“让汽车生活更简单" />
    <meta name="Keywords" content="小型车、微型车、紧凑车型、中等车型、高级车型、豪华车型、三厢车型、CDV车型、MPV车型、SUV" />
<%--    <!-- 引入favicon.ico网页图标 -->--%>
<%--    <link rel="shortcut icon" href="favicon.ico">--%>
    <!-- 引入css初始化的css文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
    <!-- 引入公共样式的css文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
    <!-- 引入首页的css文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <!--导入布局js，共享header和footer-->
<%--    <script src="js/include.js"></script>--%>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/animate.js"></script>
    <script src="${pageContext.request.contextPath}/js/index.js"></script>
</head>
<body>
<%--<div id="header"></div>--%>
<%--<br>--%>
<jsp:include page="header.jsp"></jsp:include>
<!-- nav -->
<section>
<div class="nav_container">
    <div class="nav w">
        <div class="drowdown fl">
            <div class="dt">全部商品分类</div>
            <div class="dd">
                <ul>
                    <li><a href="list.jsp">小型轿车</a><i></i></li>
                    <li><a href="list.jsp">紧凑型轿车</a>
                        <i></i></li>
                    <li><a href="list.jsp">中型轿车</a>
                        <i></i></li>
                    <li><a href="list.jsp">小型SUV</a>
                        <i></i></li>
                    <li><a href="list.jsp">紧凑型SUV</a>
                        <i></i></li>
                    <li><a href="list.jsp">中型SUV</a>
                        <i></i></li>
                    <li><a href="list.jsp">MPV商务车</a>
                        <i></i></li>
                    <li><a href="#">跑车</a><i></i></li>
                    <li><a href="#">皮卡</a><i></i></li>
                    <li><a href="#">微面</a><i></i></li>
                    <li><a href="#">清客</a><i></i></li>
                    <li><a href="#">汽车用品</a><i></i></li>
                    <li><a href="#">配套装备</a><i></i></li>
                    <li><a href="#">理财</a>、
                        <a href="#">众筹</a>、
                        <a href="#">白条</a>、
                        <a href="#">保险</a><i></i></li>
                </ul>
            </div>
        </div>
        <!-- 右侧导航 -->
        <div class="naviitems fl">
            <ul>
                <li><a href="#">suv</a></li>
                <li><a href="#">mpv</a></li>
                <li><a href="#">二手商城</a></li>
                <li><a href="#">4s旗舰店</a></li>
                <li><a href="#">测评</a></li>
                <li><a href="#">买家论坛</a></li>
                <li><a href="#">保修维护</a></li>
                <li><a href="#">汽车保养</a></li>
            </ul>
        </div>

    </div>
</div>

<!-- main -->
<div class="main w">
    <div class="focus fl">
        <!--按钮-->
        <a href="javascript:" class="focus_arrow_left"></a>
        <a href="javascript:" class="focus_arrow_right"></a>
        <ul>
            <li>
                <a href=""><img src="${pageContext.request.contextPath}/upload/banner1.jpg" alt=""></a>
            </li>
            <li>
                <a href=""><img src="${pageContext.request.contextPath}/upload/banner2.jpg" alt=""></a>
            </li>
            <li>
                <a href=""><img src="${pageContext.request.contextPath}/upload/banner3.jpg" alt=""></a>
            </li>
            <li>
                <a href=""><img src="${pageContext.request.contextPath}/upload/banner4.jpg" alt=""></a>
            </li>
        </ul>
        <ol class="circle">

        </ol>
    </div>
    <div class="newsflash fr">
        <div class="news">
            <div class="news_header">
                小e快讯
                <a href="#">更多</a>
            </div>
            <div class="news_body">
                <ul>
                    <li><a href="#">【咨询】国产/进口Model 3有何区别</a></li>
                    <li><a href="#">【期待】今年值得期待的5款7座SUV</a></li>
                    <li><a href="#">【特惠】门槛更低轿跑 宝马2系GC</a></li>
                    <li><a href="#">【时事】一家WEY经销商的“战疫”</a></li>
                    <li><a href="#">【特评】云评捷恩斯豪华SUV-GV80</a></li>
                </ul>
            </div>
        </div>
        <div class="lifeservice">
            <ul>
                <li>
                    <a href="#">
                        <i class="service_ico service_ico_huafei"></i>
                        <p>用户</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="service_ico service_ico_jipiao"></i>
                        <p>大降价</p>
                    </a>
                    <span class="hot"></span>
                </li>
                <li>
                    <a href="#">
                        <i class="service_ico service_ico_dianyingpiao"></i>
                        <p>车载放映</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="service_ico service_ico_youxi"></i>
                        <p>车辆pk</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="service_ico service_ico_caipiao"></i>
                        <p>汽车配件</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="service_ico service_ico_jiayouka"></i>
                        <p>加油卡</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="service_ico service_ico_jiudian"></i>
                        <p>汽车旅馆</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="service_ico service_ico_huochepiao"></i>
                        <p>自驾游</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="service_ico service_ico_zhongchou"></i>
                        <p>众筹</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="service_ico service_ico_licai"></i>
                        <p>理财</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="service_ico service_ico_lipinka"></i>
                        <p>礼品卡</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="service_ico service_ico_baitiao"></i>
                        <p>白条</p>
                    </a>
                </li>
            </ul>
        </div>
        <div class="bargin">
            <a href="#"><img src="upload/bargin.jpg" alt=""></a>
        </div>
    </div>
</div>
<!-- recommend -->
<div class="recommend w">
    <div class="recommend_hd">
        <img src="img/clock.png" alt="">
        <p>今日推荐</p>
    </div>
    <div class="recommend_bd">
        <ul>
            <li>
                <a href="#"><img src="${pageContext.request.contextPath}/img/pic1.jpg" alt=""></a>
            </li>
            <li>
                <a href="#"><img src="${pageContext.request.contextPath}/img/pic2.jpg" alt=""></a>
            </li>
            <li>
                <a href="#"><img src="${pageContext.request.contextPath}/img/pic3.jpg" alt=""></a>
            </li>
            <li class="=last">
                <a href="#"><img src="${pageContext.request.contextPath}/img/pic4.jpg" alt=""></a>
            </li>
        </ul>
    </div>
</div>
<!-- floor -->
<div class="floor w">
    <div class="floor_hd">
        <h3>汽车之家</h3>
        <ul class="tab_list">
            <li><a href="#">热门</a>|</li>
            <li><a href="#">报价</a>|</li>
            <li><a href="#">经销商</a>|</li>
            <li><a href="#">4s特惠</a>|</li>
            <li><a href="#">销量</a>|</li>
            <li><a href="#">车主吐槽</a>|</li>
            <li><a href="#">易车福利</a>|</li>
            <li><a href="#">分期购车</a>|</li>
            <li><a href="#">汽车对比</a></li>
        </ul>
    </div>
    <div class="floor_bd">
        <ul>
            <li class="w209">
                <ul class="tab_list_item">
                    <li><a href="#">品牌旗舰店</a></li>
                    <li><a href="#">品牌二手车</a></li>
                    <li><a href="#">经销商特卖</a></li>
                    <li><a href="#">新车上市</a></li>
                    <li><a href="#">导购评测</a></li>
                    <li><a href="#">大众喜爱</a></li>
                </ul>
                <img src="upload/floor-1-1.png" alt="">
            </li>
            <li class="w329">
                <a href="#"><img src="upload/floor-1-b01.jpg" alt=""></a>
            </li>
            <li class="w219">
                <div class="tab_items">
                    <div>
                        <a href="#"><img src="${pageContext.request.contextPath}/upload/floor-1-2.jpg" alt=""></a>
                    </div>
                    <div>
                        <a href="#"><img src="${pageContext.request.contextPath}/upload/floor-1-3.jpg" alt=""></a>
                    </div>
                </div>
            </li>
            <li class="w220">
                <div>
                    <a href="#"><img src="${pageContext.request.contextPath}/upload/floor-1-4.png" alt=""></a>
                </div>
            </li>
            <li class="w220">
                <div>
                    <a href="#"><img src="${pageContext.request.contextPath}/upload/floor-1-5.jpg" alt=""></a>
                </div>
                <div>
                    <a href="#"><img src="${pageContext.request.contextPath}/upload/floor-1-6.jpg" alt=""></a>
                </div>
            </li>
        </ul>
    </div>
</div>
</section>
<br>
<%--<div id="footer"></div>--%>
<jsp:include page="footer.jsp"></jsp:include>
<!-- footer end -->
</body>
</html>