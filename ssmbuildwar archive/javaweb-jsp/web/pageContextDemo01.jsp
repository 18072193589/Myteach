<%--
  Created by IntelliJ IDEA.
  User: zsj
  Date: 2021/2/23
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

    pageContext.setAttribute("name1","zsj1");//保存的数据只在一次页面中有效
    request.setAttribute("name2","zsj2");//在一次请求中有效
    session.setAttribute("name3","zsj3");//在一次会话中有效
    application.setAttribute("name4","zsj4");//只在服务器中有效

%>
<%--    通过PageContext取出我们保存的值--%>
<%
    //PageContext取出我们保存的值
    String name1 = (String)pageContext.findAttribute("name1");
    String name2 = (String)pageContext.findAttribute("name2");
    String name3 = (String)pageContext.findAttribute("name3");
    String name4 = (String)pageContext.findAttribute("name4");
    pageContext.forward("pageDemo02.jsp");
%>
<h3>${name1}</h3>
<h3>${name2}</h3>
<h3>${name3}</h3>
<h3>${name4}</h3>
</body>
</html>
