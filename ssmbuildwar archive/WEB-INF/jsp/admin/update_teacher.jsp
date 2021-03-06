
<%--
  Created by IntelliJ IDEA.
  User: zsj
  Date: 2021/2/28
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--BootStrap美化界面--%>
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-3.5.1.js"></script>
<html>
<head>


    <title>教员列表</title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>

<script type="text/css" src="${path}/CSS/daohang.css"></script>
<c:import url="../../common/header.jsp"></c:import>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/stu/toaddstudent">新增学员</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/stu/emps?page=1">首页</a>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="row">
            <div class="col-md-4 column">

                <c:if test="${sessionScope.userLoginInfo!=null}">
                    <span>${sessionScope.userLoginInfo}+,欢迎</span>
                    <a href="${pageContext.request.contextPath}/login/out">注销</a>
                </c:if>
                <%--                <c:if test="${sessionScope.userLoginInfo==null}">--%>
                <%--                    <a  class="btn btn-primary" href="${pageContext.request.contextPath}/login/tologin">登陆</a>--%>
                <%--                </c:if>--%>

            </div>
        </div>
    </div>
</div>
<br>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <form action="${pageContext.request.contextPath}/admin_t/update" method="post">
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
        </div>
    </div>
</div>

<c:import url="../../common/weiba.jsp"></c:import>
</body>
</html>
