<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>汽车详情-汽车报价、汽车服务、轻松挑选</title>
    <meta name="description" content="e车之家-专业综合汽车购物商城，销售超数万品牌，4020万种商品，囊括小型车、微型车、紧凑车型、中等车型、高级车型、豪华车型、三厢车型、CDV车型、MPV车型、SUV等车型。“让汽车生活更简单”"/>
    <meta name="Keywords" content="小型车、微型车、紧凑车型、中等车型、高级车型、豪华车型、三厢车型、CDV车型、MPV车型、SUV"/>
    <!-- 引入favicon.ico网页图标 -->
    <!-- 引入css初始化的css文件 -->
    <!-- 引入favicon.ico网页图标 -->
    <!-- 引入css初始化的css文件 -->
    <!-- 引入公共样式的css文件 -->
    <!-- 引入首页的css文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
<%--    <!-- 引入公共样式的css文件 -->--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
<%--    <!-- 引入首页的css文件 -->--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shopcar.css" />
<%--    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->--%>
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <!--导入布局js，共享header和footer-->
    <script src="${pageContext.request.contextPath}/js/shopcar.js"></script>
    <!--导入布局js，共享header和footer-->
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript">
        var $j = jQuery.noConflict();
    </script>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
  <div id="nav">您的位置：<a href="#">首页</a> > <a href="#">我的易车网</a> > 我的购物车</div>
<div id="navlist">
  <ul>
    <li class="navlist_red_left"></li> 
    <li class="navlist_red">1. 查看购物车</li> 
    <li class="navlist_red_arrow"></li>
    <li class="navlist_gray">2. 确认订单信息</li> 
    <li class="navlist_gray_arrow"></li> 
     <li class="navlist_gray">3. 付款到支付宝</li> 
    <li class="navlist_gray_arrow"></li>   
     <li class="navlist_gray">4. 确认收货</li> 
    <li class="navlist_gray_arrow"></li> 
    <li class="navlist_gray">5. 评价</li> 
    <li class="navlist_gray_right"></li>   
  </ul>
</div>

<div id="content">
 <table width="100%" border="0" cellspacing="0" cellpadding="0" id="shopping">
 <form action="" method="post" name="myform" >
      <tr>
        <td class="title_1">
            <input id="allCheckBox" type="checkbox" value="" onclick="selectAll()" />全选</td>
        <td class="title_2" colspan="2">店铺宝贝</td>
        <td class="title_3">商家信息</td>
        <td class="title_4">原价（万）</td>
        <td class="title_5">数量</td>
        <td class="title_6">折扣价（万）</td>
        <td class="title_7">操作</td>
      </tr>
      <tr id="detail">
        <td colspan="8" class="line" ></td>
      </tr>

<%--     <tr id="product1" >--%>
<%--        <td class="cart_td_1"><input name="cartCheckBox" type="checkbox" value="product1" onclick="selectSingle()" /></td>--%>
<%--        <td class="cart_td_2"><img src="images/taobao_cart_01.jpg" alt="shopping"/></td>--%>
<%--        <td class="cart_td_3"><a href="#">奥迪A6L</a><br />--%>
<%--            车型：黑色 <br />--%>
<%--            保障：<img src="images/taobao_icon_01.jpg" alt="icon" /></td>--%>
<%--        <td class="cart_td_4">商家名称：     <br />--%>
<%--                                商家电话：   <br />--%>
<%--                                商家地址：   </td>--%>
<%--        <td class="cart_td_5">35.42</td>--%>
<%--        <td class="cart_td_6"><img src="images/taobao_minus.jpg" alt="minus" onclick="changeNum('num_1','minus')" class="hand"/> <input id="num_1" type="text"  value="1" class="num_input" readonly="readonly"/> <img src="images/taobao_adding.jpg" alt="add" onclick="changeNum('num_1','add')"  class="hand"/></td>--%>
<%--        <td class="cart_td_7"></td>--%>
<%--        <td class="cart_td_8"><a href="javascript:deleteRow('product1');">删除</a></td>--%>
<%--     </tr>--%>
<%--     <span id="detail"> </span>--%>
   <tr>
   <td  colspan="3"></td>
<%--       <a href="javascript:deleteSelectRow()"><img src="images/taobao_del.jpg" alt="delete"/></a>--%>
    <td colspan="5" class="shopend">商品总价：<label id="total" class="yellow"></label> 万<br />
<%--    可获积分 <label class="yellow" id="integral"></label> 点<br />--%>
    <input name=" " type="image" src="images/taobao_subtn.jpg" /></td>
  </tr>
  </form>
</table>
</div>
  <jsp:include page="footer.jsp"></jsp:include>
</body>
<script>
    $j(function(){
        var suid ="${sessionScope.uid}";
        $j.ajax({
            url :" ${pageContext.request.contextPath}/shopcar/findShopcar",
            type : "Post", //以Post方式发送请求
            data : "suid="+suid,// 请求时发送的数据,
            dataType : "json", //返回的数据类型
            async : true, //本次请求是否为异步请求
            success : function(cardetails){
                // alert(cardetails[0].id);
                var divs='';
                for (var i = 0; i <cardetails.length; i++) {
                    var cardetail= cardetails[i];
                    var div=
                        '<tr id="product1">'+
                        '        <td class="cart_td_1"><input name="cartCheckBox" type="checkbox" value="product1" onclick="selectSingle()" /></td>\n' +
                        '        <td class="cart_td_2"><img class="img" width="80" height="80" src="'+cardetail.cimage+'" alt="shopping"/></td>\n' +
                        '        <td class="cart_td_3"><a href="#">'+cardetail.cname+'</a><br />\n' +
                        '            车型：'+cardetail.cg+' <br />\n' +
                        '            保障：<img src="images/taobao_icon_01.jpg" alt="icon" /></td>\n' +
                        '        <td class="cart_td_4">商家名称：'+cardetail.seller.sname+'<br />\n' +
                        '                                商家电话：'+cardetail.seller.consphone+'   <br />\n' +
                        '                                商家地址：'+cardetail.seller.address+'   </td>\n' +
                        '        <td class="cart_td_5" width="75">    '+cardetail.uprice+'    </td>\n' +
                        // '        <td class="cart_td_6"><img src="images/taobao_minus.jpg" alt="minus" onclick="changeNum(\'num_1\',\'minus\')" class="hand"/> <input id="num_1" type="text"  value="1" class="num_input" readonly="readonly"/> <img src="images/taobao_adding.jpg" alt="add" onclick="changeNum(\'num_1\',\'add\')"  class="hand"/></td>\n' +
                        '        <td class="cart_td_6" width="75">         1        </td>\n' +
                        '        <td class="cart_td_7" width="75">    '+cardetail.lprice+'   </td>\n' +
                        '        <td class="cart_td_8"><a href="javascript:deleteRow('+cardetail.id+');">删除</a></td>\n'
                        +'</tr>'

                    ;
                    divs+=div;
                }
                $j("#detail").after(divs);

            },
            error:function () {
                alert("请先登录");
                <%--location.href = "${pageContext.request.contextPath}/login.jsp";--%>
            }
        });
    });
</script>
</html>
