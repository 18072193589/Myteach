<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>学员详情</title>
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

        <input type="hidden" name="studentID" value="${Qstudent.studentID}">
        <div class="form-group">
            <label >学科名称:${Qstudent.subject_s}</label>
        </div>
        <div class="form-group">
            <label >学员性别:${Qstudent.sex_s}</label>
       </div>

        <div class="form-group">
            <label >教学地址:${Qstudent.city}${Qstudent.plot}${Qstudent.address}</label>
       </div>
        <div class="form-group">
            <label >接单情况:${Qstudent.condition_s}</label>
        </div>
        <div class="form-group">
            <label >教员性别要求:${Qstudent.need_sex}</label>
        </div>
        <div class="form-group">
            <label >工作内容:${Qstudent.need_work}</label>
      </div>
        <div class="form-group">
            <label >薪资:${Qstudent.salary}</label>
       </div>
        <div class="form-group">
            <label >日期:${Qstudent.date}</label>
      </div>
        <div class="form-group">
            <label >    申请方式: 电话:18072193589<br>
                VX:18072193589(全天在线)<br>
                QQ:1219068459(全天在线)<br>
                更多及时家教信息:珞珞家教温州地区一群:91364396</label>
        </div>
        <div class="form-group">
            <input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
        </div>

</div>
<c:import url="../common/weiba.jsp"></c:import>
</body>
</html>
