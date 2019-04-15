<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/14
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>留言板</title>
</head>
<body bgcolor="#f0ffff">
<form action="addServlet" method="post">
    <div align="center">
    <table border="1">
        <caption>填写留言信息</caption>
        <tr>
            <td>留言标题</td>
            <td>
                <input type="text" name="title"/>
            </td>
        </tr>
        <tr>
            <td>留言内容</td>
            <td>
                <textarea name="content" rows="5" cols="35"></textarea>
            </td>
        </tr>
    </table>
    <input type="submit" value="提交"/>
    <input type="reset" value="重置"/>
    </div>
</form>
</body>
</html>
