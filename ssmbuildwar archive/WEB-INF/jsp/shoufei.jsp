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
                    <small>平台收费标准</small>
                </h1>
                <h6>1.好学家教网提供温大周边师资,一到两天内联系到合适教员</h6>
                <h6>2.在教员执教前,平台将对教员简历进行审核,并提供简历让家长选择</h6>
                <h6>3.平台收取教员首次执教费用(由教员代收)为服务费,若不满意首次执教,平台退还所有费用</h6>
                <h6>4.课时费建议参照平台收费标准,或由家长学生视情况而定</h6>
            </div>
        </div>
    </div>
</div>
<c:import url="../common/weiba.jsp"></c:import>

</body>
</html>
