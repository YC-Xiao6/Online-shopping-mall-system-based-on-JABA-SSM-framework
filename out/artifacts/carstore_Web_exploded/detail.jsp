<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>品优购-列表页-手机页面</title>
    <meta name="description" content="京东JD.COM-专业综合网上购物商城，销售超数万品牌，4020万种商品，囊括家电、手机、电脑、服装、居家、母婴、美妆、个护、食品、旅游等13大品类。京东PLUS会员，免费体验30天！京东秉承客户为先， 100％正品行货保障，提供全国联保，机打发票，专业配送，售后服务！"/>
    <meta name="Keywords" content="网上购物，网上商城，手机，笔记本，电脑，MP3,CD,VCD,DV,相机，数码，配件，手表，存储卡，品优购"/>
    <!-- 引入favicon.ico网页图标 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" >
    <!-- 引入css初始化的css文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
    <!-- 引入公共样式的css文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
    <!-- 引入首页的css文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/detail.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/list.css">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <!--导入布局js，共享header和footer-->
    <script src="${pageContext.request.contextPath}/js/detail.js"></script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <!--导入布局js，共享header和footer-->
    <%--    <script src="js/include.js"></script>--%>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript">
        var $j = jQuery.noConflict();
    </script>
    <script>
        $j(function(){
            var cid=window.location.search.substr(1);
            var uid ="${sessionScope.uid}";
            $j.ajax({
                url :" ${pageContext.request.contextPath}/detail/findDetail",
                type : "Post", //以Post方式发送请求
                data : "cid="+cid,// 请求时发送的数据,
                dataType : "json", //返回的数据类型
                async : true, //本次请求是否为异步请求
                success : function(detail){
                    //请求成功，执行的操作
                    var div_up='                <div class="sku_name">'+detail.cname+'</div>\n' +
                         '                <div class="news">'+detail.cintroduce+'</div>\n' +
                         '                <div class="summary">\n' +
                         '                    <dl class="summary_price">\n' +
                         '                        <dt>价格</dt>\n' +
                         '                        <dd><i class="price">￥'+detail.lprice+'w-'+detail.uprice+'w</i>\n' +
                         '                            <a href="#">降价通知</a>\n' +
                         '                            <div class="remark">累计评价612188</div>\n' +
                         '                        </dd>\n' +
                         '                    </dl>\n' +
                         '                    <dl class="summary_pro">\n' +
                         '                        <dt>促销</dt>\n' +
                         '                        <dd><em>加购价</em>直降'+detail.sprice+'万\n' +
                         '                        </dd>\n' +
                         '                    </dl>\n' +
                         '                    <dl class="summary_sup">\n' +
                         '                        <dt>详情</dt>\n' +
                         '                        <dd>'+detail.cdetail+'</dd>\n' +
                         '                    </dl>\n' +
                         '                    <dl class="summary_convey">\n' +
                         '                        <dt class="con">4s门店</dt>\n' +
                         '                        <dd>4S店-'+detail.seller.sname+'，预约资讯并提供售前售后服务。电话：'+detail.seller.consphone+'   地址：'+detail.seller.address+'。</dd>\n'+
                         '                    </dl>\n'+
                         '\n' +
                         '                    <dl class="choose">\n' +
                         '                        <dt>选择颜色</dt>\n' +
                         '                        <dd>\n' +
                         '                            <a href="javascript:;" class="current">白色</a>\n' +
                         '                            <a href="javascript:;">银色</a>\n' +
                         '                            <a href="javascript:;">黑色</a>\n' +
                         '                        </dd>\n' +
                         '                    </dl>\n' +
                         '                    <dl class="choose">\n' +
                         '                        <dt>选择版本</dt>\n' +
                         '                        <dd>\n' +
                         '                            <a href="javascript:;">自动挡</a>\n' +
                         '                            <a href="javascript:;" class="current">手动挡</a>\n' +
                         '                        </dd>\n' +
                         '                    </dl>\n' +
                         '\n' +
                         '                    <dl class="choose">\n' +
                         '                        <dt>购买方式</dt>\n' +
                         '                        <dd>\n' +
                         '                            <a href="javascript:;" class="current">官方标配</a>\n' +
                         '                            <a href="javascript:;">二手置换</a>\n' +
                         '                            <a href="javascript:;">分期优惠购</a>\n' +
                         '                        </dd>\n' +
                         '                    </dl>\n' +
                         '                    <dl class="choose">\n' +
                         '                        <dt>套装</dt>\n' +
                         '                        <dd>\n' +
                         '                            <a href="javascript:;" class="current">保护套装 </a>\n' +
                         '                            <a href="javascript:;">配套套装</a>\n' +
                         '                        </dd>\n' +
                         '                    </dl>\n' ;
                         // '                    <div class="addcar">\n' +
                         // '                        <div class="add_num fl">\n' +
                         // '                            <input type="text fl" value="1">\n' +
                         // '                            <a href="javascript:;" class="add">+</a>\n' +
                         // '                            <a href="javascript:;" class="reduce">-</a>\n' +
                         // '                        </div>\n'
                         // '                        <a href="#" class="buy fr"  id="insert_car">加入购物车</a>\n' +
                         // '                    </div>\n' +
                         // '\n' +
                         // '\n' +
                         // '\n' +
                         // '                </div>\n';
                    var imgs = '';
                    for (var i = 0; i < detail.img.length; i++) {
                        var pic= detail.img[i].pic;
                        var img='<img src="'+pic+'" alt="">\n';
                        imgs+=img;
                    }
                    var div_down=' <div class="detail_info">\n' +
                        '                        <ul>\n' +
                        '                            <li>车型尺寸：'+detail.ca+'</li>\n' +
                        '                            <li>综合油耗：'+detail.cb+'</li>\n' +
                        '                            <li>引擎类型:'+detail.cc+'</li>\n' +
                        '                            <li>L4最高时速：'+detail.cd+' </li>\n' +
                        '                            <li>加速时间：'+detail.ce+'</li>\n' +
                        '                            <li>驱动方式：'+detail.cf+'</li>\n' +
                        '                            <li>整车质保：三年</li>\n' +
                        '                            <li>车身型式：'+detail.cg+'</li>\n' +
                        '                            <li>商品产地：'+detail.ch+'</li>\n' +
                        '                            <li>车型级别：'+detail.ci+'</li>\n' +
                        '                            <li>环保标准：'+detail.cj+'</li>\n' +
                        '                       \n' +
                        '\n' +
                        '                        </ul>\n' +
                        '                        <a href="#" class="more">查看更多参数<i></i></a>\n' +
                        '                    </div>\n' +
                        // '                    <img src="'+detail.img.g+'" alt="">\n' +
                        // '                    <img src="upload/q2.jpg" alt="">\n' +
                        // '                    <img src="upload/q3.jpg" alt="">\n' +
                        // '                    <img src="upload/q4.jpg" alt="">\n' +
                        imgs;
                    $j("#detail_up").html(div_up);
                    $j("#detail_down").html(div_down);
                    $j("#img").html('<img src="'+detail.cimage+'" alt="" class="bigImg">')
                    //图片还没处理
                },
                error : function(){
                    //请求失败，执行的操作
                    alert("error")
                }
            });
        });
    </script>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
    <!-- nav -->
    <div class="nav_container">
      <div class="nav w">
        <div class="drowdown fl">
            <div class="dt">全部商品分类</div>
            <div class="dd" style="display: none;">
                <ul>
                    <li><a href="#">小型轿车</a><i></i></li>
                    <li><a href="list.jsp">紧凑型轿车</a>
                        <i></i></li>
                    <li><a href="#">中型轿车</a>
                        <i></i></li>
                    <li><a href="#">小型SUV</a>
                        <i></i></li>
                    <li><a href="#">紧凑型SUV</a>
                        <i></i></li>
                    <li><a href="#">中型SUV</a>
                        <i></i></li>
                    <li><a href="#">MPV商务车</a>
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
    <!-- 内容 -->
    <div class="container w">
        <!-- 面包屑导航 -->
        <div class="crumb_wrap">
            <a href="#">紧凑型轿车</a>〉
            <a href="#">轿车</a>〉
            <a href="#">奥迪</a>>
            <a href="#">Q5系类</a>
        </div>
        <!-- 产品介绍 -->
        <div class="product_intro clearfix">
            <!-- 产品预览 -->
            <div class="preview_wrap fl">
                <div class="pre_img">
                    <img src="upload/s3.jpg" alt="">
                    <div class="mask"></div>
                   <div class="big" id="img"></div>

                </div>
                <div class="preview_list">
                    <a href="#" class="arrow_pre"></a>
                    <a href="#" class="arrow_next"></a>
                    <ul class="list_item">
                        <li>
                            <img src="upload/pre1.jpg" alt="">
                        </li>
                        <li><img src="upload/pr3.jpg" alt=""></li>
                        <li class="current"><img src="upload/pr6.jpg" alt=""></li>
                        <li><img src="upload/pr4.jpg" alt=""></li>
                        <li><img src="upload/pr5.jpg" alt=""></li>
                    </ul>
                </div>
                <div class="product_extra">
                    <div>商品编号：0468256644</div>
                    <div><i></i><a href="#">分享</a></div>
                    <div><i></i><a href="#">关注</a></div>
                    <div><i></i><a href="#">对比</a></div>

                </div>
            </div>
            <!-- 产品详细信息 -->
            <div class="product_info fr" >
                <div id="detail_up">
<%--                        <div class="sku_name">奥迪Q5L 全部在售 2020款 2018款 </div>--%>
<%--                        <div class="news">推荐选择下方[移动优惠购]奥迪Q5L适合家庭用户，科技配置、后排空间、油耗低</div>--%>
<%--                        <div class="summary">--%>
<%--                            <dl class="summary_price">--%>
<%--                                <dt>价格</dt>--%>
<%--                                <dd><i class="price">￥38.33w-51.77w</i>--%>
<%--                                    <a href="#">降价通知</a>--%>
<%--                                    <div class="remark">累计评价612188</div>--%>
<%--                                </dd>--%>
<%--                            </dl>--%>
<%--                            <dl class="summary_pro">--%>
<%--                                <dt>促销</dt>--%>
<%--                                <dd><em>加购价</em>直降12.95万--%>
<%--                                </dd>--%>
<%--                            </dl>--%>
<%--                            <dl class="summary_sup">--%>
<%--                                <dt>详情</dt>--%>
<%--                                <dd>排量: 2.0T    油耗: 6.9-7.4L  </dd>--%>
<%--                            </dl>--%>
<%--                            <dl class="summary_convey">--%>
<%--                                <dt class="con">4s门店</dt>--%>
<%--                                <dd>4S店-厦门大邦奥迪，预约资讯并提供售前售后服务。厦门嘉诚奥迪，海沧区马青路1233号。</dd>--%>
<%--                            </dl>--%>
<%--                    </div>--%>
<%--                        <dl class="choose">--%>
<%--                            <dt>选择颜色</dt>--%>
<%--                            <dd>--%>
<%--                                <a href="javascript:;" class="current">白色</a>--%>
<%--                                <a href="javascript:;">银色</a>--%>
<%--                                <a href="javascript:;">黑色</a>--%>
<%--                            </dd>--%>
<%--                        </dl>--%>
<%--                        <dl class="choose">--%>
<%--                            <dt>选择版本</dt>--%>
<%--                            <dd>--%>
<%--                                <a href="javascript:;">自动挡</a>--%>
<%--                                <a href="javascript:;" class="current">手动挡</a>--%>
<%--                            </dd>--%>
<%--                        </dl>--%>

<%--                        <dl class="choose">--%>
<%--                            <dt>购买方式</dt>--%>
<%--                            <dd>--%>
<%--                                <a href="javascript:;" class="current">官方标配</a>--%>
<%--                                <a href="javascript:;">二手置换</a>--%>
<%--                                <a href="javascript:;">分期优惠购</a>--%>
<%--                            </dd>--%>
<%--                        </dl>--%>
<%--                        <dl class="choose">--%>
<%--                            <dt>套装</dt>--%>
<%--                            <dd>--%>
<%--                                <a href="javascript:;" class="current">保护套装 </a>--%>
<%--                                <a href="javascript:;">配套套装</a>--%>
<%--                            </dd>--%>
<%--                        </dl>--%>
                </div>
                        <div class="addcar">
                            <div class="add_num fl">
                                <input type="text fl" value="1">
                                <a href="javascript:;" class="add">+</a>
                                <a href="javascript:;" class="reduce">-</a>
                                </div>
                                    <a href="shopcar.jsp" class="buy fr" id="insert_car">加入购物车</a>
                                </div>
    <%--                </div>--%>
<%--                            </div>--%>
                        </div>



        </div>
        <!-- 产品详情 -->
        <div class="product_detail clearfix">
            <div class="aside fl">
                <ul class="tab_list">
                    <li class="first_tab current">相关资讯</li>
                    <li class="second_tab">推荐品牌</li>
                </ul>
                <div class="tab_con">
                    <ul class="tab_hotwords">
                <li><a href="#">奥迪Q5L TFSI 尊享豪华运动版</a></li>
                <li><a href="#">干货！奥迪Q5L和宝马X3到底怎么选？</a></li>
                    <li><a href="#">奥迪Q5车主升级Q5L给旧车升级</a></li>
                    <li><a href="#">全新Q5L如何诠释豪华与实用</a></li>
                    <li><a href="#">中国火到不行的奥迪Q5出了插电混动</a></li>
                    </ul>
                    <h4>购买了此商品的用户还买了</h4>
                    <ul class="aside_goods">
                        <li class="goods">
                            <img src="upload/ao1.png" alt="">
                            <h5>奥迪AL4</h5>
                            <p>￥28-40w</p>
                            <a href="#">加入购物车</a>

                        </li>
                        <li class="goods">
                            <img src="upload/ao2.png" alt="">
                            <h5>奥迪AL6</h5>
                            <p>￥40-65w</p>
                            <a href="#">加入购物车</a>

                        </li>
                        <li class="goods">
                            <img src="upload/ao3.png" alt="">
                            <h5>奥迪Q2L</h5>
                            <p>￥21-26w</p>
                            <a href="#">加入购物车</a>

                        </li>
                        <li class="goods">
                            <img src="upload/ao4.png" alt="">
                            <h5>奥迪Q7</h5>
                            <p>￥68-99w</p>
                            <a href="#">加入购物车</a>

                        </li>
                        <li class="goods">
                            <img src="upload/ao5.png" alt="">
                            <h5>奥迪A7</h5>
                            <p>￥57-85w</p>
                            <a href="#">加入购物车</a>

                        </li>
                        <li class="goods">
                            <img src="upload/ao6.png" alt="">
                            <h5>奥迪Q3</h5>
                            <p>￥21-35w</p>
                            <a href="#">加入购物车</a>

                        </li>
                        <li class="goods">
                            <img src="upload/ao7.png" alt="">
                            <h5>奥迪A3</h5>
                            <p>￥18-25</p>
                            <a href="#">加入购物车</a>

                        </li>
                        <li class="goods">
                            <img src="upload/ao8.png" alt="">
                            <h5>欧蓝德</h5>
                            <p>￥14-22w</p>
                            <a href="#">加入购物车</a>

                        </li>
                        <li class="goods">
                            <img src="upload/ao9.png" alt="">
                            <h5>风行T5</h5>
                            <p>￥6-14w</p>
                            <a href="#" id="insert">加入购物车</a>

                        </li>
                    </ul>
                </div>
            </div>
            <div class="detail fr">
                <div class="detail_tab_list">
                    <ul>
                        <li class="current">商品介绍</li>
                        <li>规格与包装</li>
                        <li>售后保障</li>
                        <li>商品评价（50000）</li>
                        <li>手机社区</li>
                    </ul>
                </div>
                <div class="detail_tab_con" id="detail_down">
<%--                    <div class="detail_info">--%>
<%--                        <ul>--%>
<%--                            <li>牌一汽-奥迪生产厂商一汽</li>--%>
<%--                            <li>车型尺寸：4753mm*1873mm*1659mm</li>--%>
<%--                            <li>综合油耗：6.9-7.3L/100km(工信部)</li>--%>
<%--                            <li>引擎类型2.0T 252马力</li>--%>
<%--                            <li>L4最高时速：210-231km/h </li>--%>
<%--                            <li>加速时间：6.7-8.6s</li>--%>
<%--                            <li>驱动方式：前置四驱</li>--%>
<%--                            <li>整车质保：三年</li>--%>
<%--                            <li>10万公里变速箱7挡双离合</li>--%>
<%--                            <li>车身型式：5门5座SUV</li>--%>
<%--                            <li>商品产地：中国大陆</li>--%>
<%--                            <li>车型级别：中型SUV</li>--%>
<%--                            <li>环保标准：国V（IOS）</li>--%>


<%--                        </ul>--%>
<%--                        <a href="#" class="more">查看更多参数<i></i></a>--%>
<%--                    </div>--%>
<%--                    <img src="upload/q1.jpg" alt="">--%>
<%--                    <img src="upload/q2.jpg" alt="">--%>
<%--                    <img src="upload/q3.jpg" alt="">--%>
<%--                    <img src="upload/q4.jpg" alt="">--%>

                </div>
            </div>
        </div>
    </div>
        <!--导入底部-->
        <jsp:include page="footer.jsp"></jsp:include>

</body>
<script>
    $j("#insert_car").click(function(){
        var scid=window.location.search.substr(1);
        var suid ="${sessionScope.uid}";
        // alert(scid+suid);
        $j.ajax({
            url :"${pageContext.request.contextPath}/shopcar/insertCar",
            type : "Post", //以Post方式发送请求
            data : {"suid":suid,"scid":scid},// 请求时发送的数据,
            dataType : "json", //返回的数据类型
            async : true, //本次请求是否为异步请求
            success: function(success) {
                alert("亲，该车型已加入购物车。");
                // location.href = "http://localhost:8080/index.jsp";
            },error:function () {
                alert("加入错误,请先登录");
                location.href = "${pageContext.request.contextPath}/login.jsp";
            }
        });
    });
</script>
</html>