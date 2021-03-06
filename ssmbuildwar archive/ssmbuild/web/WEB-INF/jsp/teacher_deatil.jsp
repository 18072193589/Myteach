
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

    <input type="hidden" name="studentID" value="${Qteacher.userid}">
    <div class="form-group">
        <label >姓名:${Qteacher.t_name}</label>
    </div>
    <div class="form-group">
        <label >毕业院校:${Qteacher.t_school}</label>
    </div>

    <div class="form-group">
        <label >空闲时间:${Qteacher.free_time}</label>
    </div>
    <div class="form-group">
        <label >专业:${Qteacher.zhuanye}</label>
    </div>
    <div class="form-group">
        <label >毕业高中:${Qteacher.gaozhong}</label>
    </div>
    <div class="form-group">
        <label >个人简述:${Qteacher.detail}</label>
    </div>
    <div class="form-group">
        <label >擅长学科:${Qteacher.subject}</label>
    </div>


    <div class="form-group">
        <input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
    </div>

</div>
<c:import url="../common/weiba.jsp"></c:import>
</body>
</html>
