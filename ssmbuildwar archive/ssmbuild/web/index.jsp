
<%--
  Created by IntelliJ IDEA.
  User: zsj
  Date: 2021/2/25
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--BootStrap美化界面--%>
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<html>
<head>
  <title>好学家教网</title>

</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>

<script type="text/css" src="${path}/CSS/daohang.css"></script>
<c:import url="WEB-INF/common/header.jsp"></c:import>

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


<c:import url="WEB-INF/common/weiba.jsp"></c:import>

</body>
</html>
