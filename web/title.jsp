<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小二杂货铺</title>
</head>

<link href="${pageContext.request.contextPath}/images/logo.ico" rel="icon" type="image/x-ico">

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- 开发环境版本，包含了有帮助的命令行警告 -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>


<body>
<!-- header部分开始 -->
<div class="header">
    <div class="header_c inner_c">
        <h1>
            <a href="#"> 小二杂货铺 </a>
        </h1>
        <div class="all_pro">
            <a class="all_type" href="#"
            >查看所有类别<span class="icon"></span
            ></a>
        </div>
        <div class="header_nav">
            <ul>
                <li><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
                <li><a href="#">所有产品</a></li>
                <li><a href="https://xpp011.cn">博客</a></li>
                <li><a href="#">文章列表</a></li>
            </ul>
        </div>
        <div class="search">
            <form class="form-inline" action="${pageContext.request.contextPath}/Commodity/list" method="post">
                <div class="form-group">
                    <input
                            type="text"
                            class="form-control"
                            id="inputPassword2"
                            placeholder="请输入商品名称"
                            name="name"
                    />
                </div>
                <input type="submit" class="btn btn-default" value="搜索"/>

            </form>
        </div>
        <div class="login" id="app">
            <a href="javascript:void(0);" v-if="!tf">{{name}}</a>
            <a href="${pageContext.request.contextPath}/login/gologin" v-if="tf">登陆</a>
            <span>|</span>
            <a href="${pageContext.request.contextPath}/login/loginout" v-if="!tf">注销</a>
            <a href="${pageContext.request.contextPath}/login/goregister" v-if="tf">注册</a>
            <div class="gwc" onclick="re()">
                <a href="#">${index}</a>
                <div class="check_out">
                    <p class="check_con">${index}件商品 总计：<span>￥${pricesum}</span></p>
                    <div class="button" onclick="re()">去结算</div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- header部分结束 -->

<script>
    function re(){
        window.location.href="${pageContext.request.contextPath}/Commodity/SC";
    }


    var app=new Vue({
        el:"#app",
        data:{
            name:"${username}",
            tf:("${username}")===""
        }
    });

</script>
</body>
</html>
