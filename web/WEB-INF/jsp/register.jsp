<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册界面</title>
</head>

<link href="${pageContext.request.contextPath}/images/logo.ico" rel="icon" type="image/x-ico">

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
<script src="${pageContext.request.contextPath}/JQuery/jquery-3.6.0.js"></script>
<!-- 开发环境版本，包含了有帮助的命令行警告 -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

<body>
<style>
    .smg{
        margin-left: 100px;
        color: red;
    }
</style>

<form id="formId" action="${pageContext.request.contextPath}/login/register">
    <div class="login" id="login">
        <h2>用户注册</h2>

        <!-- required="required" 表示该文本框的值必须被输入 -->
        <div class="login_box"><input type="text" required="required" name="username" id="username" @blur="isname">
            <label >用户名  <span class="smg" id="namesmg"></span></label></div>
        <div class="login_box"><input type="password" required="required"  v-model="pwd1">
            <label >密码</label></div>
        <div class="login_box"><input type="password" required="required" v-model="pwd2" @blur="pwd" name="password">
            <label >确认密码 <span class="smg">{{pwdsmg}}</span></label></div>
        <a onclick="document:formId.submit()">
            注册
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </a>
    </div>
    <div class="error"></div>
</form>

<script>
    var login=new Vue({
        el:"#login",
        data:{
            usersmg:"11",
            pwdsmg:"",
            pwd1:"",
            pwd2:""
        },
        methods:{
            pwd:function (){
                if (this.pwd1==this.pwd2){
                    this.pwdsmg=""
                }else{
                    this.pwdsmg="密码不一致"
                }
            },

            isname:function (){
                console.log("ajax")
                $.ajax({
                    url:"${pageContext.request.contextPath}/login/nameAjax",
                    data:{"username":$("#username").val()},
                    success: function (data){
                        if (data==""){
                            $("#namesmg").text("")
                        }else {
                            $("#namesmg").text("用户已存在")
                        }
                    }
                })
            }
        }
    });
</script>
</body>
</html>
