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
    <title>���԰�</title>
</head>
<body bgcolor="#f0ffff">
<form action="addServlet" method="post">
    <div align="center">
    <table border="1">
        <caption>��д������Ϣ</caption>
        <tr>
            <td>���Ա���</td>
            <td>
                <input type="text" name="title"/>
            </td>
        </tr>
        <tr>
            <td>��������</td>
            <td>
                <textarea name="content" rows="5" cols="35"></textarea>
            </td>
        </tr>
    </table>
    <input type="submit" value="�ύ"/>
    <input type="reset" value="����"/>
    </div>
</form>
</body>
</html>
