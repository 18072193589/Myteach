<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-3.5.1.js"></script>
    <title>Title</title>
    <script>
        function a1(){
            $.post({
                url:"${pageContext.request.contextPath}/a3",
                data:{"name":$("#name").val()},
                success:function (data){
                    if(data.toString()=='ok'){
                        $("#userInfo").css("color","green");
                    }else{
                        $("#userInfo").css("color","red");
                    }
                    $("#userInfo").html(data)
                    console.log(data.toString());
                }
            })
        }
        function a2(){
            $.post({
                url:"${pageContext.request.contextPath}/a3",
                data:{"pwd":$("#pwd").val()},
                success:function (data){
                    if(data.toString()=='ok'){
                        $("#pwdInfo").css("color","green");
                    }else{
                        $("#pwdInfo").css("color","red");
                    }
                    $("#pwdInfo").html(data)
                    console.log(data.toString());
                    console.log(data.toString());
                }
            })
        }
    </script>
</head>
<body>
<p>
    用户名:<input type="text" id="name" onblur="a1()">
    <span id="userInfo"></span>
</p>
<p>
    密码:<input type="text" id="pwd" onblur="a2()">
    <span id="pwdInfo"></span>
</p>

</body>
</html>
