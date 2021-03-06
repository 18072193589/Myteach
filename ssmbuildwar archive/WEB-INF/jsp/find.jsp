<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--BootStrap美化界面--%>
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-3.5.1.js"></script>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>

<script type="text/css" src="${path}/CSS/daohang.css"></script>
<c:import url="../common/header.jsp"></c:import>

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
<div class="container" align="center">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                <small>家长请联系微信:18072193589或扫描二维码,平台将免费为您发布家教信息</small>

                    <img height="200" width="200" src="../../img/weixin.png"/>
                </h1>
            </div>
        </div>
    </div>
</div>
<c:import url="../common/weiba.jsp"></c:import>

</body>
</html>
