<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/4
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="circle" class="com.test.circle.Circle" scope="page"/>
<html>
<head>
    <title>圆周长和面积</title>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
</head>
<body>
<jsp:setProperty name="circle" property="radius"/>
<%
    circle.area();
    circle.perimeter();
%>

<center>
    周长：<jsp:getProperty name="circle" property="perimeter"/><br>
    面积：<jsp:getProperty name="circle" property="area"/>
</center>
<hr>
<form action="/chapetr2_jsp/circle.jsp" method="post">
    <table align="center" border="1">
        <caption>计算圆的周长和面积</caption>
        <tr>
            <td>请输入圆的半径: </td>
            <td>
                <label>
                    <input type="text" name="radius" size="21"/>
                </label>
            </td>
        </tr>
    </table>
    <center>
        <input type="submit" value="计算"/>
        <input type="reset" value="重置"/>
    </center>
</form>
</body>
</html>