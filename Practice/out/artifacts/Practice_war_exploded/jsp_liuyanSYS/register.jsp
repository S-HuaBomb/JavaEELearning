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
    <title>�������԰�</title>
</head>
<body bgcolor="#f0f8ff">
<form action="registerServlet" method="post">
    <div align="center">
    <table>
        <caption>�û�ע��</caption>
        <tr>
            <td>��¼����</td>
            <td>
                <input type="text" name="username"/>
            </td>
        </tr>
        <tr>
            <td>���룺</td>
            <td>
                <input type="password" name="password"/>
            </td>
        </tr>
    </table>
    <input type="submit" value="ע��"/>
    <input type="reset" value="����"/>
    </div>
</form>
</body>
</html>
