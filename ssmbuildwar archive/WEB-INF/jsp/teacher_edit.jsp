
<%--
  Created by IntelliJ IDEA.
  User: zsj
  Date: 2021/2/26
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%--BootStrap美化界面--%>
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教员详情</title>
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
<br>
<br>
<div class="container" align="center" >
    <form action="${pageContext.request.contextPath}/tea/edit" method="post">
        <input type="hidden" name="userid" value="${Qteacher.userid}">
        <div class="form-group">
            <label for="1">姓名:</label>
            <input type="text" value="${Qteacher.t_name}" class="form-control" name="t_name" id="1" required>
        </div>
        <div class="form-group">
            <label for="2">学校:</label>
            <input type="text" value="${Qteacher.t_school}" class="form-control" name="t_school" id="2" required>
        </div>
        <div class="form-group">
            <label for="3">空闲时间:</label>
            <input type="text" value="${Qteacher.free_time}" class="form-control" name="free_time" id="3" required>
        </div>
        <div class="form-group">
            <label for="4">专业:</label>
            <input type="text" value="${Qteacher.zhuanye}" class="form-control" name="zhuanye" id="4" required>
        </div>
        <div class="form-group">
            <label for="5">高中:</label>
            <input type="text" value="${Qteacher.gaozhong}" class="form-control" name="gaozhong" id="5" required>
        </div>
        <div class="form-group">
            <label for="6">详细情况:</label>
            <input type="text" value="${Qteacher.detail}" class="form-control" name="detail" id="6" required>
        </div>
        <div class="form-group">
            <label for="7">学科:</label>
            <input type="text" value="${Qteacher.subject}" class="form-control" name="subject" id="7" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>
    </form>
    <div class="form-group">
        <input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
    </div>

</div>
<c:import url="../common/weiba.jsp"></c:import>
</body>
</html>
