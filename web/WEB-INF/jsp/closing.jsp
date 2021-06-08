
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/title.jsp"%>
<html>
<head>
    <title>结算</title>

    <link href="${pageContext.request.contextPath}/images/logo.ico" rel="icon" type="image/x-ico">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/JQuery/jquery-3.6.0.js"></script>



</head>

<style>
    .dx{
        width: 200px;
        height: 300px;
    }
    .center{
        width: 650px;
        margin-top: 10%;
        margin-left: 35%;
        height: auto;
    }

    img{
        margin:0 35px;
    }

    .color{
        color: red;
    }
</style>
<body>

<div class="center">
    <h1>结算金额 <span class="color"> ￥${money}</span>，应交金额<span class="color"> ￥${money}</span></h1>

    <img src="/images/zhifubao.jpg" alt="支付宝" class="img-rounded dx">
    <img src="/images/wexin.jpg" alt="微信" class="img-rounded dx">
</div>


</body>
</html>
