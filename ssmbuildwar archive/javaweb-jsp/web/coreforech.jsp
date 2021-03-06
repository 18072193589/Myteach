<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: zsj
  Date: 2021/2/23
  Time: 18:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ArrayList<String> people = new ArrayList<>();
    people.add(0,"李四");
    people.add(1,"李本");
    people.add(2,"在田");
    request.setAttribute("list",people);

%>
<c:forEach var="people" items="${list}">
    <c:out value="${people}"/><br>
</c:forEach>

<hr>

<c:forEach items="${list}" begin="1" end="2" step="1" var="people">
    <c:out value="${people}"/><br>
</c:forEach>
</body>
</html>
