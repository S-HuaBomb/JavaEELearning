<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/4
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<form action="login.jsp" method="post">
    <center>
        <table border="1">
            <caption>用户登录</caption>
            <tr>
                <td>用户名</td>
                <td>
                    <input type="text" name="username" id="username"/>
                </td>
            </tr>
            <tr>
                <td>密码</td>
                <td>
                    <input type="password" name="userpwd" id="userpwd"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" name="submit" id="submit" value="登录"/>
                </td>
            </tr>
        </table>
    </center>
</form>
</body>
</html>
