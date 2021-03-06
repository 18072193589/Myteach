<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--BootStrap美化界面--%>
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表------新增书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/addBook" method="post">
        <div class="form-group">
            <label for="bkname">书籍名称:</label>
            <input type="text" class="form-control" name="bookName" id="bkname" required>
        </div>
        <div class="form-group">
            <label for="bksum">书籍数量:</label>
            <input type="text" class="form-control" name="bookCounts" id="bksum" required>
        </div>
        <div class="form-group">
            <label for="bkdail">书籍描述:</label>
            <input type="text" class="form-control" name="detail" id="bkdail" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>
    </form>
</div>

</body>
</html>
