<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/7
  Time: 18:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>1到100的连续和</title>
</head>
<body>
<%
    int i, sum = 0;
    for (i=1; i<=100; i++) {
        sum = sum + i;
    }
%>
<p>1到100的连续和是：<%=sum%></p>
</body>
</html>
