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
    <title>�������԰�</title>
</head>
<body bgcolor="#fffaf0">
<form action="mainServlet" method="post">
    <div align="center">
    <table>
        <caption>�û���¼</caption>
        <tr>
            <td>�û�����</td>
            <td>
                <input type="text" name="username" size="20"/>
            </td>
        </tr>
        <tr>
            <td>���룺</td>
            <td>
                <input type="password" name="password" size="20"/>
            </td>
        </tr>
    </table>
    <input type="submit" value="��¼"/>
    <input type="reset" value="����"/>
    </div>
</form>
<div align="center">
��û��ע�ᣬ�뵥��<a href="register.jsp">����</a>ע�ᣡ
</div>
</body>
</html>
