<%--
  Created by IntelliJ IDEA.
  User: zsj
  Date: 2021/2/22
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登錄</title>
</head>
<body>
    <h1>登錄</h1>
    <div style="text-align: center">
<%--        --%>
        <form action="${pageContext.request.contextPath}/login" method="post">
            用户名:<input type="username" name="username"><br>
            密码:<input type="password" name="password"><br>
            爱好:
            <input type="checkbox" name="hobby" value="女孩">女孩
            <input type="checkbox" name="hobby" value="男孩">男孩
            <input type="checkbox"name="hobby" value="唱歌">唱歌
            <input type="checkbox"name="hobby" value="跳舞">跳舞
            <br>
            <input type="submit">
        </form>
    </div>
</body>
</html>
