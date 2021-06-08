<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录界面</title>
</head>

<link href="${pageContext.request.contextPath}/images/logo.ico" rel="icon" type="image/x-ico">

<body>


<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">

<form id="formId" action="/login/login" method="post">
    <div class="login">
        <h2>用户登录</h2>

        <!-- required="required" 表示该文本框的值必须被输入 -->
        <div class="login_box"><input type="text" required="required" name="username" id="username">
            <label >用户名</label></div>
        <div class="login_box"><input type="password" required="required" name="password" id="password">
            <label >密码</label></div>
        <a onclick="document:formId.submit()">
            登录
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </a>
    </div>
</form>
</body>
</html>
