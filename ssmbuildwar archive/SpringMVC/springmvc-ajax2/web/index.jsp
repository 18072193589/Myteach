<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-3.5.1.js"></script>
  <script>
    function a(){
      $.post({
        url:"${pageContext.request.contextPath}/a1",
        data:{"name":$("#username").val()},
        success:function (data,status){
          console.log("data="+data);
          console.log("status="+status);
        },
        error:function (){

        }
      })
    }

  </script>
</head>
<body>
<%--失去焦点时,发送一个请求到后台--%>
用户名:<input type="text" id="username" onblur="a()">
</body>
</html>
