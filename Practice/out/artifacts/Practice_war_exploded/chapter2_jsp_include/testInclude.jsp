<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/7
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>include动作的测试</title>
</head>
<body>
<p>这是 include 动作的测试</p>
<jsp:include page="sum.jsp" flush="true"/>
<jsp:include page="date.jsp"/>
</body>
</html>
