<%--
  Created by IntelliJ IDEA.
  User: 25001
  Date: 2021/4/27
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/title.jsp"%>
<html>
<head>
    <title>商品详情页</title>
</head>

<link href="${pageContext.request.contextPath}/images/logo.ico" rel="icon" type="image/x-ico">

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/JQuery/jquery-3.6.0.js"></script>
<body>
<style>

    a {
        text-decoration: none;
        color: black;
    }

    .details{
        width: 100%;
        height: 500px;
    }

    .batton {
        width: 100%;
    }

    .top {
        height: 100px;
    }

    .left {
        position: relative;
        width: 40%;
        float: left;
        height: 500px;
    }

    .left img {
        width: 100%;
        height: 100%;
    }

    .right {
        width: 55%;
        float: right;
    }

    .right h3 {
        font: 700 16px Arial, "microsoft yahei";
        color: #666;
        padding-top: 5px;
        line-height: 28px;
        margin-bottom: 5px;
        text-indent: 2em;
    }

    .right p {
        font-size: 12px;
        color: #e4393c;
    }

    .price {
        width: 100%;
        height: 180px;
        background: #f3f3f3;
        padding: 10px 10px 0;
    }

    #jiesho {
        font-size: 12px;
        color: #666;
    }

    #jine {
        font-size: 22px;
        color: #e4393c;
        margin: 0 15px;
    }

    .price a {
        font-size: 12px;
        color: #005aa0;
    }

    .price a:hover {
        color: #e4393c;
    }

    .mack {
        display: none;
        position: absolute;
        top: 0;
        left: 0;
        width: 200px;
        height: 200px;
        background: rgba(208, 235, 57,0.4);
        cursor: move;
    }

    .big{
        position: relative;
        display: none;
        position: absolute;
        top: 0;
        right: -530px;
        width: 500px;
        height: 500px;
        overflow: hidden;
    }

    .big img{
        position: absolute;
        top: 0;
        left: 0;
        width: 1000px;
        height: 1000px;
    }

    .bottom{
        width: 100px;
        height: 50px;
        line-height: 50px;
        text-align: center;
        background: #e4393c;
        border-radius: 5px;
        margin-top: 50px;
        margin-left: 10px;
    }

    .bottom a{
        text-decoration: none;
        color: #f3f3f3;
        font-size: 14px;
    }

    .bottom a:hover{
        color: #f3f3f3;
    }

    .xiangqin{
        width: 100%;
        height: 500px;
        margin-top: 200px;
    }

    .xiangqin p{
        width: 100%;
        height: 50px;
        background: rgb(235, 0, 0);
        font-size: 30px;
        text-align: center;
        line-height: 50px;
        color: #f3f3f3;
    }

    .xiangqin img{
        margin-left: 70px;
    }

    #pop{
        width: 500px;
        height: 400px;
        background: rgba(218, 217, 217,0.8);
        position: fixed;
        top: 30%;
        left: 36%;
        display: none;
    }

    #pop p{
        width: 100%;
        text-align: center;
        height: 50px;
        font-size: 35px;
        margin-top: 50px;
        color: #ff0707;
    }

    #button{
        width: 100%;
        height: 100px;
        margin-top: 200px;
    }

    #button button{
        width: 100px;
        height: 50px;
        border: none;
        user-select: none;
        background: rgb(135, 191, 243);
        border-radius: 5px;
        float: right;
        margin: 20px;
    }

    #button button a{
        text-decoration: none;
    }

    #button #red{
        background: rgb(218, 199, 199);
        float: left;
    }

</style>



<div class="details">
    <div class="batton">
        <div class="top"></div>
        <div class="left">
            <img src="/${commodity.src}" alt="" />

            <div class="mack"></div>

            <div class="big">
                <img src="/${commodity.src}" alt="" id="fdj">
            </div>
        </div>
        <div class="right">
            <h3>
                ${commodity.name}
                ${commodity.describe}
            </h3>
            <p>${commodity.name}</p>
            <div class="price">
                <span id="jiesho">铺价</span> <span id="jine">￥ ${commodity.price}</span>
                <a href="">降价通知</a>
                <div class="bottom">
                    <a href="javascript:void(0);" onclick="add(${commodity.id})">加入购物车</a>
                </div>
            </div>
        </div>


    </div>
</div>

<div class="xiangqin">
    <p>商品介绍</p>
    <img src="/images/xiangqin21.png" alt="">
</div>


<div id="pop">
    <p id="smg">加入购物车成功</p>
    <div id="button">
        <button id="red"><a href="javascript:void(0);" onclick="goon()">继续浏览</a></button>
        <button><a href="${pageContext.request.contextPath}/index.jsp">返回首页</a></button>
    </div>

</div>
<script>
    var pop=document.getElementById("pop");

    function add(commodityID){
        $.ajax({
            url:"${pageContext.request.contextPath}/Commodity/add/"+commodityID,
            success:function (data){
                pop.style.display="block";
                $("#smg").text(data);
            }
        })
    }


    function goon(){
        pop.style.display="none";
    }

    var mack=document.querySelector('.mack');
    var big=document.querySelector('.big');
    var left=document.querySelector('.left');
    var img=document.querySelector('#fdj');

    left.addEventListener('mouseover',function(){
        mack.style.display='block';
        big.style.display='block';
    });

    left.addEventListener('mouseout',function(){
        mack.style.display='none';
        big.style.display='none';
    });

    //遮罩层盒子内移动
    left.addEventListener('mousemove',function(e){
        var x=e.pageX-left.offsetLeft;
        var y=e.pageY-left.offsetTop;
        //当x小于黄盒子的一般则x等于黄盒子的一半
        if(x<mack.offsetWidth/2){//不超过左边
            x=mack.offsetWidth/2
        }
        //当x大于大盒子减黄盒子的一半 极限距离
        if(x>left.offsetWidth-mack.offsetWidth/2){//不超过右边
            x=left.offsetWidth-mack.offsetWidth/2
        }

        //当x小于黄盒子高度的一般则x等于黄盒子高度的一半
        if(y<mack.offsetHeight/2){//不超过上面
            y=mack.offsetHeight/2
        }
        //当x大于大盒子高度减黄盒子高度的一半 极限距离
        if(y>left.offsetHeight-mack.offsetHeight/2){//不超过下面
            y=left.offsetHeight-mack.offsetHeight/2
        }
        mack.style.top=y-mack.offsetWidth/2+'px';
        mack.style.left=x-mack.offsetHeight/2+'px';


        // 放大镜移动效果
        var imgleft=x-mack.offsetWidth/2;
        var imgright=y-mack.offsetHeight/2;
        img.style.left=-imgleft*1.3+'px';//注意要反着走 -数
        img.style.top=-imgright*1.3+'px';
    })

</script>
</body>
</html>
