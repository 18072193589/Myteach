<%--
  Created by IntelliJ IDEA.
  User: zsj
  Date: 2021/2/23
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
<%-- JSP表达式 --%>
  <%=new java.util.Date()%>
  <hr>
<%--  JSP脚本片段--%>
<%int sum = 0;
      for(int i=0;i<=100;i++){
        sum+=i;
      }
      out.print("<h1>Sum="+sum+"</h1>");

%>
<%--JSP声明--%>
<%!
  static {
    System.out.println("Loading Servlet");
  }
  private int globalVar=0;
  public void zsj(){
    System.out.println("进入了方法zsj");
  }

%>








  </body>
</html>
