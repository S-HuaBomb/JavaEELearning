<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/19
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>审核注册信息</title>
</head>
<body>
<%
    //request.setCharacterEncoding("bg2312");
    String password = request.getParameter("password");
    String age = request.getParameter("age");
    if (password.length()<6 || Integer.parseInt(age)<10
            || Integer.parseInt(age)>100){
        //response.getWriter().print("<p>密码或年龄不符合</p>");
        request.setAttribute("str", "false");
        //response.sendRedirect("register.jsp");
        request.getRequestDispatcher("register.jsp").forward(request, response);
    } else {
        request.setAttribute("str", "true");
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }
%>
</body>
</html>
