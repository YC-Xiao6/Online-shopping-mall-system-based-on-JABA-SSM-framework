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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/list.css">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <!--导入布局js，共享header和footer-->
    <script src="${pageContext.request.contextPath}/js/include.js"></script>
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
            $j.ajax({
                url :" ${pageContext.request.contextPath}/list/findList",
                type : "get", //以Post方式发送请求
                // data : 请求时发送的数据,
                dataType : "json", //返回的数据类型
                async : true, //本次请求是否为异步请求
                success : function(lists){
                //请求成功，执行的操作
                    var car_lis='';
                    for (var i = 0; i < lists.length; i++) {
                        var list = lists[i];
                        var li = '                <li class="sk_goods">\n' +
                            '                    <a href="detail.jsp?'+list.cid+'">\n' +
                            '                    <img src="'+list.limage+'" alt=""></a>\n' +
                            '                    <a href="detail.jsp?'+list.cid+'"><h4 class="sk_goods_title">'+list.lname+'</h4></a>\n' +
                            '                    <p class="sk_goods_price"><em>¥'+list.llprice+'w</em> <del>￥'+list.luprice+'w</del></p>\n' +
                            '                    <div class="sk_goods_progress">\n' +
                            '                        <p>已售<i>87</i>%</p>\n' +
                            '                        <div class="sk_goods_bar">\n' +
                            '                            <div class="bar_in"></div>\n' +
                            '                        </div>\n' +
                            '                        <p>剩余<em>27</em>件</p>\n' +
                            '                    </div>\n' +
                            '                    <a href="detail.jsp?'+list.cid+'" class="sk_goods_buy">立即抢购</a>\n' +
                            '                </li>';
                        car_lis+=li;
                    }
                    $j("#car_list").html(car_lis);

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
    <!--sk-->
    <div class="sk">
        <img src="upload/secKill_03.png" alt="">
    </div>
    <!-- nav -->

    <!-- sk_con -->
    <div class="sk_con w" >
        <div class="sk_con_hd">
            <img src="upload/bg_03.jpg" alt="">
        </div>
        <div class="sk_con_bd clearfix">
            <ul id="car_list">
<%--                <li class="sk_goods">--%>
<%--                    <a href="detail.jsp">--%>
<%--                    <img src="upload/51.png" alt=""></a>--%>
<%--                    <a href="#"><h4 class="sk_goods_title">奔驰C级</h4></a>--%>
<%--                    <p class="sk_goods_price"><em>¥30.78w</em> <del>￥47.78w</del></p>--%>
<%--                    <div class="sk_goods_progress">--%>
<%--                        <p>已售<i>87</i>%</p>--%>
<%--                        <div class="sk_goods_bar">--%>
<%--                            <div class="bar_in"></div>--%>
<%--                        </div>--%>
<%--                        <p>剩余<em>27</em>件</p>--%>
<%--                    </div>--%>
<%--                    <a href="#" class="sk_goods_buy">立即抢购</a>--%>
<%--                </li>--%>
<%--                <li class="sk_goods">--%>
<%--                        <a href="detail.jsp"><img src="upload/52.png" alt=""></a>--%>
<%--                        <a href="#"><h4 class="sk_goods_title">捷达VS7</h4></a>--%>
<%--                        <p class="sk_goods_price"><em>¥10.88w</em> <del>￥13.68w</del></p>--%>
<%--                        <div class="sk_goods_progress">--%>
<%--                            <p>已售<i>87</i>%</p>--%>
<%--                            <div class="sk_goods_bar">--%>
<%--                                <div class="bar_in"></div>--%>
<%--                            </div>--%>
<%--                            <p>剩余<em>27</em>件</p>--%>
<%--                        </div>--%>
<%--                        <a href="#" class="sk_goods_buy">立即抢购</a>--%>
<%--                    </li>--%>
<%--                    <li class="sk_goods">--%>
<%--                            <a href="#"><img src="upload/53.png" alt=""></a>--%>
<%--                            <a href="#"><h4 class="sk_goods_title">哪吒U</h4></a>--%>
<%--                            <p class="sk_goods_price"><em>¥16.98w</em> <del>￥19.88w</del></p>--%>
<%--                            <div class="sk_goods_progress">--%>
<%--                                <p>已售<i>87</i>%</p>--%>
<%--                                <div class="sk_goods_bar">--%>
<%--                                    <div class="bar_in"></div>--%>
<%--                                </div>--%>
<%--                                <p>剩余<em>27</em>件</p>--%>
<%--                            </div>--%>
<%--                            <a href="#" class="sk_goods_buy">立即抢购</a>--%>
<%--                        </li>--%>
<%--                        <li class="sk_goods">--%>
<%--                                <a href="detail.jsp"><img src="upload/54.png" alt=""></a>--%>
<%--                                <a href="#"><h4 class="sk_goods_title">奥迪Q7</h4></a>--%>
<%--                                <p class="sk_goods_price"><em>¥60.88w</em> <del>￥69.88w</del></p>--%>
<%--                                <div class="sk_goods_progress">--%>
<%--                                    <p>已售<i>87</i>%</p>--%>
<%--                                    <div class="sk_goods_bar">--%>
<%--                                        <div class="bar_in"></div>--%>
<%--                                    </div>--%>
<%--                                    <p>剩余<em>27</em>件</p>--%>
<%--                                </div>--%>
<%--                                <a href="#" class="sk_goods_buy">立即抢购</a>--%>
<%--                            </li>--%>
<%--                            <li class="sk_goods">--%>
<%--                                    <a href="#"><img src="upload/55.png" alt=""></a>--%>
<%--                                    <a href="#"><h4 class="sk_goods_title">迈巴赫S级</h4></a>--%>
<%--                                    <p class="sk_goods_price"><em>¥316.88</em> <del>￥319.88</del></p>--%>
<%--                                    <div class="sk_goods_progress">--%>
<%--                                        <p>已售<i>87</i>%</p>--%>
<%--                                        <div class="sk_goods_bar">--%>
<%--                                            <div class="bar_in"></div>--%>
<%--                                        </div>--%>
<%--                                        <p>剩余<em>27</em>件</p>--%>
<%--                                    </div>--%>
<%--                                    <a href="#" class="sk_goods_buy">立即抢购</a>--%>
<%--                                </li>--%>
<%--                                <li class="sk_goods">--%>
<%--                                        <a href="#"><img src="upload/56.png" alt=""></a>--%>
<%--                                        <a href="#"><h4 class="sk_goods_title">比亚迪宋经典版</h4></a>--%>
<%--                                        <p class="sk_goods_price"><em>¥6.88</em> <del>￥6.988</del></p>--%>
<%--                                        <div class="sk_goods_progress">--%>
<%--                                            <p>已售<i>87</i>%</p>--%>
<%--                                            <div class="sk_goods_bar">--%>
<%--                                                <div class="bar_in"></div>--%>
<%--                                            </div>--%>
<%--                                            <p>剩余<em>27</em>件</p>--%>
<%--                                        </div>--%>
<%--                                        <a href="#" class="sk_goods_buy">立即抢购</a>--%>
<%--                                    </li>--%>
<%--                                    <li class="sk_goods">--%>
<%--                                            <a href="#"><img src="upload/61.png" alt=""></a>--%>
<%--                                            <a href="#"><h4 class="sk_goods_title">本田CR-V</h4></a>--%>
<%--                                            <p class="sk_goods_price"><em>¥17.88w</em> <del>￥16.88w</del></p>--%>
<%--                                            <div class="sk_goods_progress">--%>
<%--                                                <p>已售<i>87</i>%</p>--%>
<%--                                                <div class="sk_goods_bar">--%>
<%--                                                    <div class="bar_in"></div>--%>
<%--                                                </div>--%>
<%--                                                <p>剩余<em>27</em>件</p>--%>
<%--                                            </div>--%>
<%--                                            <a href="#" class="sk_goods_buy">立即抢购</a>--%>
<%--                                        </li>--%>
<%--                                        <li class="sk_goods">--%>
<%--                                                <a href="#"><img src="upload/62.png" alt=""></a>--%>
<%--                                                <a href="#"><h4 class="sk_goods_title">途胜</h4></a>--%>
<%--                                                <p class="sk_goods_price"><em>¥15.88w</em> <del>￥17.88w</del></p>--%>
<%--                                                <div class="sk_goods_progress">--%>
<%--                                                    <p>已售<i>87</i>%</p>--%>
<%--                                                    <div class="sk_goods_bar">--%>
<%--                                                        <div class="bar_in"></div>--%>
<%--                                                    </div>--%>
<%--                                                    <p>剩余<em>27</em>件</p>--%>
<%--                                                </div>--%>
<%--                                                <a href="#" class="sk_goods_buy">立即抢购</a>--%>
<%--                                            </li>--%>
<%--                                            <li class="sk_goods">--%>
<%--                                                    <a href="#"><img src="upload/63.png" alt=""></a>--%>
<%--                                                    <a href="#"><h4 class="sk_goods_title">瑞虎7</h4></a>--%>
<%--                                                    <p class="sk_goods_price"><em>¥6.88w--%>
<%--                                                    </em> <del>￥7.88w</del></p>--%>
<%--                                                    <div class="sk_goods_progress">--%>
<%--                                                        <p>已售<i>87</i>%</p>--%>
<%--                                                        <div class="sk_goods_bar">--%>
<%--                                                            <div class="bar_in"></div>--%>
<%--                                                        </div>--%>
<%--                                                        <p>剩余<em>27</em>件</p>--%>
<%--                                                    </div>--%>
<%--                                                    <a href="#" class="sk_goods_buy">立即抢购</a>--%>
<%--                                                </li>--%>
<%--                                                <li class="sk_goods">--%>
<%--                                                        <a href="#"><img src="upload/64.png" alt=""></a>--%>
<%--                                                        <a href="#"><h4 class="sk_goods_title">长安CS55</h4></a>--%>
<%--                                                        <p class="sk_goods_price"><em>¥8.29w</em> <del>￥9.88w</del></p>--%>
<%--                                                        <div class="sk_goods_progress">--%>
<%--                                                            <p>已售<i>87</i>%</p>--%>
<%--                                                            <div class="sk_goods_bar">--%>
<%--                                                                <div class="bar_in"></div>--%>
<%--                                                            </div>--%>
<%--                                                            <p>剩余<em>27</em>件</p>--%>
<%--                                                        </div>--%>
<%--                                                        <a href="#" class="sk_goods_buy">立即抢购</a>--%>
<%--                                                    </li>--%>
<%--                                                    <li class="sk_goods">--%>
<%--                                                            <a href="#"><img src="upload/65.png" alt=""></a>--%>
<%--                                                            <a href="#"><h4 class="sk_goods_title">奔驰GLS</h4></a>--%>
<%--                                                            <p class="sk_goods_price"><em>¥126.88w</em> <del>￥129.88w--%>
<%--                                                            </del></p>--%>
<%--                                                            <div class="sk_goods_progress">--%>
<%--                                                                <p>已售<i>87</i>%</p>--%>
<%--                                                                <div class="sk_goods_bar">--%>
<%--                                                                    <div class="bar_in"></div>--%>
<%--                                                                </div>--%>
<%--                                                                <p>剩余<em>27</em>件</p>--%>
<%--                                                            </div>--%>
<%--                                                            <a href="#" class="sk_goods_buy">立即抢购</a>--%>
<%--                                                        </li>  --%>
<%--                                                        <li class="sk_goods">--%>
<%--                                                                <a href="#"><img src="upload/66.png" alt=""></a>--%>
<%--                                                                <a href="#"><h4 class="sk_goods_title">雷克萨斯ES</h4></a>--%>
<%--                                                                <p class="sk_goods_price"><em>¥46.88w</em> <del>￥48.88w</del></p>--%>
<%--                                                                <div class="sk_goods_progress">--%>
<%--                                                                    <p>已售<i>87</i>%</p>--%>
<%--                                                                    <div class="sk_goods_bar">--%>
<%--                                                                        <div class="bar_in"></div>--%>
<%--                                                                    </div>--%>
<%--                                                                    <p>剩余<em>27</em>件</p>--%>
<%--                                                                </div>--%>
<%--                                                                <a href="#" class="sk_goods_buy">立即抢购</a>--%>
<%--                                                            </li>--%>
                                                            
                        </ul>              
        </div>     
        <div class="page">
            <span class="page_num">
                    <a href="#" class="page_pre">&lt;&lt;上一页</a>
                    <a href="#">1</a>
                    <a href="#">2</a>
                    <a href="#" class="current">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#" class="dotted">...</a>
                    <a href="#" class="page_next">下一页&gt;&gt;</a>
            </span>
            <span class="page_skip">
                共10页 到第
                <input type="text">页
                <button>确定</button>
            </span>
        </div>                                   
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>