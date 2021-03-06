<%--
  Created by IntelliJ IDEA.
  User: zsj
  Date: 2021/2/23
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="common/header.jsp"%>
    <h1>网页主题</h1>
<%@include file="common/footer.jsp"%>
<hr>
名字<%=request.getParameter("name1")%>
<%--jsp标签--%>
<jsp:include page="/common/header.jsp"/>
</body>
</html>
