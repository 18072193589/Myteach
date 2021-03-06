
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


    <title>学员列表</title>
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
<div class="container">
    <div class="row clearfix">
        <div class="row">
            <div class="col-md-4 column">

                <c:if test="${sessionScope.userLoginInfo!=null}">
                    <span>${sessionScope.userLoginInfo},欢迎</span>
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
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>学科</th>
                    <th>地点</th>
                    <th>描述</th>
                    <th>薪资</th>
                    <th>日期</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="stu" items="${pageInfo.list}">
                    <tr>
                        <td>${stu.subject_s}</td>
                        <td>${stu.city},${stu.plot}</td>
                        <td>${stu.need_work}</td>
                        <td>${stu.salary}</td>
                        <td>${stu.date}</td>
                        <td style="color:${stu.condition_s=="已接单"?"red":"blue"}">${stu.condition_s}</td>

                        <td>
                            <a href="${pageContext.request.contextPath}/stu/todetail?id=${stu.studentID}">详细</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<!--显示分页信息-->
<div class="row">
    <!--文字信息-->
    <div class="col-md-6 "style="text-align: center" >
        当前第 ${pageInfo.pageNum} 页.总共 ${pageInfo.pages} 页.一共 ${pageInfo.total} 条记录
    </div>

    <!--点击分页-->
    <div class="col-md-6">
        <nav aria-label="Page navigation">
            <ul class="pagination">

                <li><a href="${pageContext.request.contextPath}/stu/emps2?page=1">首页</a></li>

                <!--上一页-->
                <li>
                    <c:if test="${pageInfo.hasPreviousPage}">
                        <a href="${pageContext.request.contextPath}/stu/emps2?page=${pageInfo.pageNum-1}" aria-label="Previous">
                            <span aria-hidden="true">«</span>
                        </a>
                    </c:if>
                </li>

                <!--循环遍历连续显示的页面，若是当前页就高亮显示，并且没有链接-->
                <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                    <c:if test="${page_num == pageInfo.pageNum}">
                        <li class="active"><a href="#">${page_num}</a></li>
                    </c:if>
                    <c:if test="${page_num != pageInfo.pageNum}">
                        <li><a href="${pageContext.request.contextPath}/stu/emps2?page=${page_num}">${page_num}</a></li>
                    </c:if>
                </c:forEach>

                <!--下一页-->
                <li>
                    <c:if test="${pageInfo.hasNextPage}">
                        <a href="${pageContext.request.contextPath}/stu/emps2?page=${pageInfo.pageNum+1}"
                           aria-label="Next">
                            <span aria-hidden="true">»</span>
                        </a>
                    </c:if>
                </li>

                <li><a href="${pageContext.request.contextPath}/stu/emps2?pn=${pageInfo.pages}">尾页</a></li>
            </ul>
        </nav>
    </div>

</div>
<c:import url="../common/weiba.jsp"></c:import>
</body>
</html>
