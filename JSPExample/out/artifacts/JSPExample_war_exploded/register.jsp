<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/14
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>简易留言板</title>
</head>
<body bgcolor="#f0f8ff">
<form action="registerServlet" method="post">
    <div align="center">
    <table>
        <caption>用户注册</caption>
        <tr>
            <td>登录名：</td>
            <td>
                <input type="text" name="username"/>
            </td>
        </tr>
        <tr>
            <td>密码：</td>
            <td>
                <input type="password" name="password"/>
            </td>
        </tr>
    </table>
    <input type="submit" value="注册"/>
    <input type="reset" value="重置"/>
    </div>
</form>
</body>
</html>
