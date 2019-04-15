<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/7
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>现在时间</title>
</head>
<body>
    <p>
    现在时间是：<%= new Date().toString()%>
    </p>
</body>
</html>
