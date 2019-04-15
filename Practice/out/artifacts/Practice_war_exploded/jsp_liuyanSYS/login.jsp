<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/14
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>简易留言板</title>
</head>
<body bgcolor="#fffaf0">
<form action="mainServlet" method="post">
    <div align="center">
    <table>
        <caption>用户登录</caption>
        <tr>
            <td>用户名：</td>
            <td>
                <input type="text" name="username" size="20"/>
            </td>
        </tr>
        <tr>
            <td>密码：</td>
            <td>
                <input type="password" name="password" size="20"/>
            </td>
        </tr>
    </table>
    <input type="submit" value="登录"/>
    <input type="reset" value="重置"/>
    </div>
</form>
<div align="center">
若没有注册，请单击<a href="register.jsp">这里</a>注册！
</div>
</body>
</html>
