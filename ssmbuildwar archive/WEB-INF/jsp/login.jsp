<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--BootStrap美化界面--%>
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-3.5.1.js"></script>

<html>
<head>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<%--    <link rel="stylesheet" href="${path}/CSS/login.css" type="text/css">--%>
    <script type="text/css" src="${path}/CSS/daohang.css"></script>
    <c:import url="../common/header.jsp"></c:import>
    <title>Title</title>
</head>
<body>


<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <u1>
                <li><a href="${pageContext.request.contextPath}/stu/emps2?page=1">学员库</a></li>
                <li><a href="${pageContext.request.contextPath}/tea/emps?page=1">教员库</a></li>
                <c:if test="${sessionScope.userLoginInfo!=null}">
                    <li><a href="${pageContext.request.contextPath}/tea/toaddsx?id=${sessionScope.userLoginInfoid}">简历登记</a></li>
                </c:if>
                <li><a href="${pageContext.request.contextPath}/login/tofind">找家教</a></li>
                <li><a href="${pageContext.request.contextPath}/login/toshoufei">收费标准</a></li>
                <c:if test="${sessionScope.userLoginInfo==null}">
                    <li><a href="${pageContext.request.contextPath}/login/tologin">登录</a></li>
                </c:if>
            </u1>
        </div>
    </div>
</div>
<div id="login"  align="center">
    <h1>Login</h1>
    <form action="${pageContext.request.contextPath}/login/cheak" method="post">
        <input type="text" required="required" placeholder="用户名" name="username"><br>
        <input type="password" required="required" placeholder="密码" name="password"><br>
        <input type="text" required="required" placeholder="验证码" name="yz"><br>
        <img src="/login/checkCode" alt="" width="100" height="32" class="passcode" style="height:43px;cursor:pointer;" onclick="this.src=this.src+'?'"><br>
        <button class="btn btn-primary" type="submit">登录</button>
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/login/toregiser">注册</a><br>
        <small style="color: red">${sessionScope.error}</small>

    </form>
</div>


</body>
<c:import url="../common/weiba.jsp"></c:import>
</html>
