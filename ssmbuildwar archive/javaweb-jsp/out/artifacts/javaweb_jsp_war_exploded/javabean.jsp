<%@ page import="com.zsj.pojo.People" %><%--
  Created by IntelliJ IDEA.
  User: zsj
  Date: 2021/2/23
  Time: 19:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
//    People people = new People();
%>
<jsp:useBean id="people" class="com.zsj.pojo.People" scope="page"/>
<jsp:setProperty name="people" property="id" value="1"/>
<jsp:setProperty name="people" property="name" value="朱"/>
<jsp:setProperty name="people" property="age" value="44"/>
<jsp:setProperty name="people" property="address" value="温州"/>

姓名:<jsp:getProperty name="people" property="name"/>
id:<jsp:getProperty name="people" property="id"/>
年龄:<jsp:getProperty name="people" property="age"/>
地址:<jsp:getProperty name="people" property="address"/>

</body>
</html>
