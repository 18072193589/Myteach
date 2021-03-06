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
    <title>修改学员</title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>

<script type="text/css" src="${path}/CSS/daohang.css"></script>
<c:import url="../../common/header.jsp"></c:import>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/admin_stu/addstudent">新增学员</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/admin_stu/emps?page=1">首页</a>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>学员列表------修改学员</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/admin_stu/Update" method="post">
        <input type="hidden" name="studentID" value="${Qstudent.studentID}">
        <div class="form-group">
            <label for="sbjname">学科名称:</label>
            <input type="text" value="${Qstudent.subject_s}" class="form-control" name="subject_s" id="sbjname" required>
        </div>
        <div class="form-group">
            <label for="ssex">学员性别:</label>
            <input type="text" value="${Qstudent.sex_s}" class="form-control" name="sex_s" id="ssex" required>
        </div>
        <div class="form-group">
            <label for="cityname">市:</label>
            <input type="text" value="${Qstudent.city}" class="form-control" name="city" id="cityname" required>
        </div>
        <div class="form-group">
            <label for="poltname">区:</label>
            <input type="text" value="${Qstudent.plot}" class="form-control" name="plot" id="poltname" required>
        </div>
        <div class="form-group">
            <label for="addressyname">详细地址:</label>
            <input type="text" value="${Qstudent.address}" class="form-control" name="address" id="addressyname" required>
        </div>
        <div class="form-group">
            <label for="conditionname">接单情况:</label>
            <input type="text" value="${Qstudent.condition_s}" class="form-control" name="condition_s" id="conditionname" required>
        </div>
        <div class="form-group">
            <label for="needsex">需求性别:</label>
            <input type="text" value="${Qstudent.need_sex}" class="form-control" name="need_sex" id="needsex" required>
        </div>
        <div class="form-group">
            <label for="needwork">工作内容:</label>
            <input type="text" value="${Qstudent.need_work}" class="form-control" name="need_work" id="needwork" required>
        </div>
        <div class="form-group">
            <label for="salaryname">薪资:</label>
            <input type="text" value="${Qstudent.salary}" class="form-control" name="salary" id="salaryname" required>
        </div>
        <div class="form-group">
            <label for="datename">日期:</label>
            <input type="text" value="${Qstudent.date}" class="form-control" name="date" id="datename" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>
    </form>
</div>
</body>
</html>
