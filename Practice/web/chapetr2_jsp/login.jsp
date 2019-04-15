<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/4
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login.jsp</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String userpwd = request.getParameter("userpwd");
    if (username.trim().equals("test") && userpwd.trim().equals("123")) {
        // 成功登录，跳转到 success.jsp
%>
<jsp:forward page="success.jsp"/>
<%
    } else {
        // 失败，跳转到 fail.jsp
%>
<jsp:forward page="fail.jsp"/>
<%
    }
%>
</body>
</html>
