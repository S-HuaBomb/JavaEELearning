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
    <title>�û�ע�����</title>
</head>
<body bgcolor="#e2e2e4">
<form action="result.jsp" method="post">
    <div align="center">
        <table border="1">
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
            <tr>
                <td>���䣺</td>
                <td>
                    <input type="number" name="age" size="20"/>
                </td>
            </tr>
            <tr>
                <td>�Ա�</td>
                <td>
                    <input type="radio" name="sex" value="��"/>��
                    <input type="radio" name="sex" value="Ů"/>Ů
                </td>
            </tr>
            <tr>
                <td>���ã�</td>
                <td>
                    <input type="checkbox" name="hobby" value="music"/>����
                    <input type="checkbox" name="hobby" value="movie"/>��Ӱ
                    <input type="checkbox" name="hobby" value="coding"/>���
                    <input type="checkbox" name="hobby" value="eat" checked/>���Ϸ�
                </td>
            </tr>
        </table>
        <input type="submit" name="ע��"/>
        <input type="reset" name="����">
    </div>
</form>
<%
    if ((String)request.getAttribute("str") == "true") {
%>
<script>
    alert("ע��ɹ���");
</script>
<%
    }
    if ((String)request.getAttribute("str") == "false"){
%>
<script>
    alert("��������䲻����");
</script>
<%
    }
%>
</body>
</html>
