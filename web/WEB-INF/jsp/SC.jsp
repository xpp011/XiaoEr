<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/title.jsp"%>
<html>
<head>
    <title>购物车</title>
</head>

<link href="${pageContext.request.contextPath}/images/logo.ico" rel="icon" type="image/x-ico">

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/JQuery/jquery-3.6.0.js"></script>
<!-- 开发环境版本，包含了有帮助的命令行警告 -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<style>
    #conent{
        width: 100%;
        margin-top: 100px;
        flex-direction: row;
        justify-content: center;
        align-items: center;
    }

    .title thead tr th{
        display: inline-block;
        width: 295px;
    }

    .title thead tr #cz{
        display: inline-block;
        width: 54px;
    }


    .title tbody tr td{
        display: inline-block;
        width: 295px;
        height: 100px;
        padding-top: 35px;
        position: relative;
    }



    .title tbody tr td img{
        position: absolute;
        width: 100px;
        height: 100px;
        top: 0px;
        right: 50px;
    }

    .title tbody tr #del{
        width: 54px;
    }

    .title{
        width: 1530px;
        background: rgb(243, 241, 241);
        margin: 5px auto;
    }

    #sub,#add{
        width: 50px;
        height: 20px;
        text-align: center;
        line-height: 17px;
        background: rgb(175, 172, 172);
        border: none;
        border-radius: 3px 0 0 3px;
        z-index:-1;
        float: left;
    }
    #add{
        border-radius: 0 3px 3px 0;
    }
    #text{
        width: 50px;
        height: 20px;
        text-align: center;
        line-height: 20px;
        background: rgb(228, 226, 226);
        color: black;
        float: left;
    }

    .xz{
        width: 15px;
        height: 15px;
    }

    .jiacu{
        color: red;
        font-size: 22px;
    }

    #CAA{
        width: 100%;
        height: 60px;
        background: rgb(226, 226, 226);
        line-height: 60px;
    }

    #LLL{
        margin-left: 50px;
        margin-right: 900px;
    }

    #submit{
        display: inline-block;
        text-align: center;
        line-height: 47px;
        margin-left: 40px;
        margin-top: 5px;
        border: none;
        background: rgb(246, 101, 103);
        color: #FFFFFF;
        border-radius: 5px;
        width: 100px;
        height: 43px;
    }
</style>
<body>


<div id="conent">
    <table class="table table-hover title">
        <thead><tr>
            <th>选择</th>
            <th>商品名称</th>
            <th>单价(元)</th>
            <th>数量</th>
            <th>小计(元)</th>
            <th id="cz">操作</th>
        </tr></thead>

        <tbody>
        <tr>
            <c:forEach items="${orders}" var="order">
                <td><input type="checkbox" name="commodity" class="xz"></td>
                <td>${order.commodityName}<img src="http://localhost:8080/${order.src}" alt=""></td>
                <td style="color: red;">￥${order.price}</td>
                <td>   <div id="timer">
                    <button id="sub" onclick="AS(${order.id},${order.commoditySize},'-')">-</button>
                    <div id="text">${order.commoditySize}</div>
                    <button id="add" onclick="AS(${order.id},${order.commoditySize},'+')">+</button>
                </div></td>
                <td style="color: red;">￥${order.commoditySize * order.price}</td>
                <td id="del"><a href="${pageContext.request.contextPath}/Commodity/del/${order.id}">删除</a></td>
            </c:forEach>

<%--            <td><input type="checkbox" name="commodity" class="xz"></td>--%>
<%--            <td>简约扫把<img src="http://localhost:8080/images/img21.png" alt=""></td>--%>
<%--            <td style="color: red;">￥300</td>--%>
<%--            <td>   <div id="timer">--%>
<%--                <button id="sub" @click="sub">-</button>--%>
<%--                <div id="text">{{conent}}</div>--%>
<%--                <button id="add" @click="add">+</button>--%>
<%--            </div></td>--%>
<%--            <td style="color: red;">￥300</td>--%>
<%--            <td id="del"><a href="">删除</a></td>--%>
        </tr>
        </tbody>
    </table>

    <div id="CAA">
        <span id="LLL">共计 <span class="jiacu">${index}</span> 件商品</span>
        <span >已优惠<span class="jiacu">0.00</span>元   , 合计(不含运费):</span>
        <span class="jiacu">￥${pricesum}</span>
        <a  href="${pageContext.request.contextPath}/Commodity/closing/${pricesum}"   name="" id="submit">去结算</a>
    </div>

</div>

<script>
    function AS(id,size,smg) {
        if (smg=='-'){
            size-=1;
        }else {
            size+=1;
        }
        if (size==0){
            alert("别点了,到底了!");
            return;
        }

        console.log(id+":"+size+":"+smg)
        $.ajax({
            url:"${pageContext.request.contextPath}/Commodity/updateSize",
            data:{
                "size":size,
                "id":id
            },
            success:function (){
                location.reload();
            }
        })
    }
</script>
</body>
</html>
