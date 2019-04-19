<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/19
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>用户注册界面</title>
</head>
<body bgcolor="#e2e2e4">
<form action="result.jsp" method="post">
    <div align="center">
        <table border="1">
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
            <tr>
                <td>年龄：</td>
                <td>
                    <input type="number" name="age" size="20"/>
                </td>
            </tr>
            <tr>
                <td>性别：</td>
                <td>
                    <input type="radio" name="sex" value="男"/>男
                    <input type="radio" name="sex" value="女"/>女
                </td>
            </tr>
            <tr>
                <td>爱好：</td>
                <td>
                    <input type="checkbox" name="hobby" value="music"/>音乐
                    <input type="checkbox" name="hobby" value="movie"/>电影
                    <input type="checkbox" name="hobby" value="coding"/>编程
                    <input type="checkbox" name="hobby" value="eat" checked/>螺蛳粉
                </td>
            </tr>
        </table>
        <input type="submit" name="注册"/>
        <input type="reset" name="重置">
    </div>
</form>
<%
    if ((String)request.getAttribute("str") == "true") {
%>
<script>
    alert("注册成功！");
</script>
<%
    }
    if ((String)request.getAttribute("str") == "false"){
%>
<script>
    alert("密码或年龄不符合");
</script>
<%
    }
%>
</body>
</html>
