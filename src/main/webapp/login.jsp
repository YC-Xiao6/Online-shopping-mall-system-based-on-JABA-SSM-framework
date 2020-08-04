<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>汽车详情-汽车报价、汽车服务、轻松挑选</title>
    <meta name="description" content="e车之家-专业综合汽车购物商城，销售超数万品牌，4020万种商品，囊括小型车、微型车、紧凑车型、中等车型、高级车型、豪华车型、三厢车型、CDV车型、MPV车型、SUV等车型。“让汽车生活更简单”"/>
    <meta name="Keywords" content="小型车、微型车、紧凑车型、中等车型、高级车型、豪华车型、三厢车型、CDV车型、MPV车型、SUV"/>
    <!-- 引入favicon.ico网页图标 -->
    <link rel="shortcut icon" href="/WEB-INF/pages/favicon.ico" >
    <!-- 引入css初始化的css文件 -->
    <link rel="stylesheet" href="/css/base.css">
    <!-- 引入公共样式的css文件 -->
    <link rel="stylesheet" href="/css/common.css">
    <!-- 引入首页的css文件 -->
    <link rel="stylesheet" href="/css/register.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <!--导入布局js，共享header和footer-->
    <%--    <script src="js/include.js"></script>--%>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <!--导入angularJS文件-->
    <script src="js/angular.min.js"></script>


</head>

<script type="text/javascript">
    var $j = jQuery.noConflict();
</script>


<body>
<!-- header -->
<div class="header w">
    <div class="logo">
        <h1>
            <a href="WEB-INF/pages/index.html" title="易车网"><img src="${pageContext.request.contextPath}/img/logo.png" alt=""></a>
        </h1>
    </div>
</div>
<!-- content -->
<div class="content w">
    <div class="content_hd">
        <h3>登录页面
            <em class="fr">我没有有账号，去<a href="${pageContext.request.contextPath}/register.jsp">注册</a></em>
        </h3>
    </div>
    <div class="content_bd">
        <div class="register">
            <form action="user/login"  id="loginForm" method="post">
                <ul>
                    <li><label >手机号:</label>
                        <input type="text" class="inp" name="telephone" id="telephone">
                        <span class="right" hidden id="t_right"><i class="right_icon"></i>手机号码格式正确</span>
                    </li>
                    <li>
                        <label >登录密码:</label>
                        <input type="password" class="inp" name="password" id="password">
                        <span class="right" hidden id="p_right"><i class="right_icon"></i>登录密码格式正确</span>
                    </li>
<%--                    <li class="safe">安全程度--%>
<%--                        <em class="ruo">弱</em>--%>
<%--                        <em class="zhong">中</em>--%>
<%--                        <em class="qiang">强</em>--%>
<%--                    </li>--%>
                    <li >
                        <input type="button" id="btn_submit" value="登录" class="register_sure">
                    </li>
                </ul>
            </form>
        </div>
    </div>
</div>


<!-- footer start -->
<div class="footer w">
    <!-- copyright -->
    <div class="mod_copyright">
        <div class="mod_copyright_links">
            <a href="#">关于我们</a>|
            <a href="#">联系我们</a>|
            <a href="#">联系客服</a>|
            <a href="#">商家入驻</a>|
            <a href="#">营销中心</a>|
            <a href="#">手机易车网</a>|
            <a href="#">友情链接</a>|
            <a href="#">销售联盟</a>|
            <a href="#">二手社区</a>|
            <a href="#">汽车公益</a>|
            <a href="#">English Site</a>|
            <a href="#">Contact U</a>
        </div>
        <p class="mod_copyright_info">地址：北京市昌平区建材城西路金燕龙办公楼一层 邮编：100096 电话：400-618-4000 传真：010-82935100 邮箱: zhanghj+itcast.cn<br> 京ICP备08001421号京公网安备110108007702
        </p>
    </div>

</div>
<!-- footer end -->
<script>
    function checkTelephone() {
        //1.获取用户名的值
        var telephone = $j("#telephone").val();//val方法为调用改元素的值
        //2.定义正则表达式
        var req_username = /^\d{11}$/;
        //3.判断，给出提示信息
        var flag = req_username.test(telephone);//正则表达式的判断
        if(flag){
            //用户名合法
            $j("#telephone").css("border","");
            $j("#t_right").prop("hidden",false);
        }else{
            //用户名非法
            $j("#telephone").css("border","1px solid red");//.css为改变该属性的样式
        }
        return flag;
    }
    function checkPassword() {
        //1.获取用户名的值
        var password = $j("#password").val();//val方法为调用改元素的值
        //2.定义正则表达式
        var req_password = /^\w{8,20}$/;
        //3.判断，给出提示信息
        var flag = req_password.test(password);//正则表达式的判断
        if(flag){
            //用户名合法
            $j("#password").css("border","");
            $j("#p_right").prop("hidden",false);
        }else{
            //用户名非法
            $j("#password").css("border","1px solid red");//.css为改变该属性的样式
        }
        return flag;
    }
    $j(function () {
        $j("#btn_submit").click(function () {
            if (checkTelephone() && checkPassword()) {
                $j("#btn_submit").prop("type", "submit");
            } else {
                $j("#btn_submit").prop("type", "button");
            }
        });
        $j("#telephone").blur(checkTelephone);//blur 方法为失去焦点
        $j("#password").blur(checkPassword);
        //校验
    })
</script>
</body>
</html>
