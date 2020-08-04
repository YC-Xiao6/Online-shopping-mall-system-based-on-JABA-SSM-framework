<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <!--导入布局js，共享header和footer-->
    <%--    <script src="js/include.js"></script>--%>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<%--    <script src="${pageContext.request.contextPath}/js/getParameter.js"></script>--%>
<%--    <script src="${pageContext.request.contextPath}/js/jquerysession.js"></script>--%>
<script type="text/javascript">
    var $j = jQuery.noConflict();
</script>




<!-- 顶部快捷导航 -->
<div class="shortcut">
    <div class="w">
        <div class="fl">
            <ul>
                <li>易车网欢迎您！
                <span id="span_uname" ></span>
                <a  id="login_out" hidden href="/user/clear">退出</a>
                </li>
                <li id="login" >
                    <a href="login.jsp" class="style-red">请登录   </a>
                    <a href="register.jsp" class="style-red">免费注册</a>
                </li>
            </ul>
        </div>
        <div class="fr">
            <ul>
                <li><a href="#" id="login_m" hidden>我的订单</a></li>
                <li>
                    <div class="spacers"></div>
                </li>
                <li><a href="#" id="login_c" hidden>我的易车购</a><i class="icomoon"></i></li>
                <li>
                    <div class="spacers"></div>
                </li>
                <li><a href="#">易车网会员</a></li>
                <li>
                    <div class="spacers"></div>
                </li>
                <li><a href="#">汽车测评</a></li>
                <li>
                    <div class="spacers"></div>
                </li>
                <li><a href="#">关注汽车资讯</a><i class="icomoon"></i></li>
                <li>
                    <div class="spacers"></div>
                </li>
                <li><a href="#">客户服务</a><i class="icomoon"></i></li>
                <li>
                    <div class="spacers"></div>
                </li>
                <li><a href="#">网站导航</a><i class="icomoon"></i></li>
            </ul>

        </div>

    </div>
</div>
<div class="header w">
    <div class="logo">
        <h1>
            <a href="index.jsp" title="易车网">易车网</a>
        </h1>

    </div>
    <!-- search -->
    <div class="search">
        <input type="text" class="text" value="请输入车型">
        <button class="btn">搜索</button>
    </div>
    <!-- hotwords -->
    <div class="hotwords">
        <a href="#">易车网报价</a>
        <a href="#">亿元优惠</a>
        <a href="#">大众测评</a>
        <a href="#">汽车行情</a>
        <a href="#">汽车价格</a>
        <a href="#">降价</a>
        <a href="#">设备</a>
    </div>
    <div class="shopcar" id="shopcar" hidden>
        <a href="shopcar.jsp"><i class="car" ></i> 我的购物车<i class="arrow"></i></a>
        <div class="count" id="count">

        </div>
    </div>
</div>
<!-- header -->
<script>
    $j(function () {
        //查询用户信息，el表达式返回的session需用双引号才能给var
        var name ="${sessionScope.uname}";
        //el的！=为！==
        if(name!==null&&name!==""){
            var msg = "欢迎回来，"+name;
            $j("#span_uname").text(msg);
            $j("#login_out").prop("hidden",false);
            $j("#login_m").prop("hidden",false);
            $j("#shopcar").prop("hidden",false);
            $j("#login_c").prop("hidden",false);
            $j("#login").prop("hidden","hidden");
            $j.ajax({
                url :" ${pageContext.request.contextPath}/shopcar/findCountByuid",
                type : "Get", //以Post方式发送请求
                // data : "cid="+cid,// 请求时发送的数据,
                dataType : "json", //返回的数据类型
                async : true, //本次请求是否为异步请求
                success : function(count){
                    $j("#count").html(count)
                },
                error : function(){
                    //请求失败，执行的操作
                    alert("error")
                }
            });
        }
    });
    $j("#login_out").click(function(){
        alert("亲，你已成功退出。");
        // $.session.clear();
<%--        <c:remove var="uname" scope="session" />--%>
<%--        <c:remove var="uid" scope="session" />--%>
        //清楚session
        location.href="http://localhost:8080/index.jsp";
    })
</script>

