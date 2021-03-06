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
    <title>修改书籍</title>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表------修改书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <input type="hidden" name="bookID" value="${Qbooks.bookID}">
        <div class="form-group">
            <label for="bkname">书籍名称:</label>
            <input type="text" value="${Qbooks.bookName}" class="form-control" name="bookName" id="bkname" required>
        </div>
        <div class="form-group">
            <label for="bksum">书籍数量:</label>
            <input type="text" value="${Qbooks.bookCounts}" class="form-control" name="bookCounts" id="bksum" required>
        </div>
        <div class="form-group">
            <label for="bkdail">书籍描述:</label>
            <input type="text" value="${Qbooks.detail}" class="form-control" name="detail" id="bkdail" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>
    </form>
</div>
</body>
</html>
