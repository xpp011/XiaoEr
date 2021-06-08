<%--
  Created by IntelliJ IDEA.
  User: 25001
  Date: 2021/4/27
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/title.jsp"%>
<html>
<head>
    <title>商品列表</title>
</head>

<link href="${pageContext.request.contextPath}/images/logo.ico" rel="icon" type="image/x-ico">

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/JQuery/jquery-3.6.0.js"></script>


<body>
<style>
    #list{
        width: 100%;
        height: auto;
        margin-top: 100px;
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
        flex-wrap:wrap;
    }
    .row{
        width: 550px;
        margin: 10px;
    }

    #content{
        width: 100%;
    }

    #price{
        color: red;
        font-size: 24px;
    }

    #price span{
        color: rgb(107, 102, 102);
    }
</style>

<div id="list">
    <c:forEach items="${commodities}" var="commodity">
    <div class="row" >
        <div class="col-sm-6 col-md-4" id="content">
            <div class="thumbnail">
                <img src="/${commodity.src}" alt="...">
                <div class="caption">
                    <h3>${commodity.name}</h3>
                    <p>${commodity.describe}</p>
                    <p id="price"> <span>价格:             </span>￥ ${commodity.price}</p>
                    <p><a href="${pageContext.request.contextPath}/Commodity/getCommodity/${commodity.name}" class="btn btn-primary" role="button">查看详情</a></p>
                </div>
            </div>
        </div>
    </div>
        </c:forEach>
</body>
</html>
