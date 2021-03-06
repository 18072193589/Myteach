<%--
  Created by IntelliJ IDEA.
  User: zsj
  Date: 2021/2/23
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--引入JSTL核心标签库--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="coreif.jsp" method="get">
    <input type="text" name="username" value="${param.username}">
    <input type="submit"value="登陆">
</form>
<%--判断用户如果是管理员,则登陆成功--%>

    <c:if test="${param.username=='admin'}" var="isAdmin">
        <c:out value="管理员,欢迎"/>
    </c:if>
<c:out value="${isAdmin}"/>
</body>
</html>
