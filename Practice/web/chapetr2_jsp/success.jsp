<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/4
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>success.jsp</title>
</head>
<body>
<center>
    <%
        out.print(request.getParameter("username"));
    %>
    ，你登录成功了！
    <a href="video.jsp">请点击这里</a><br>
    <a href="circle.jsp">或者点击这里</a>
</center>
</body>
</html>
