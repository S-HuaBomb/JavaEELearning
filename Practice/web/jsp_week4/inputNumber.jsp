<%@ page import="java.text.NumberFormat" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/18
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>四则运算器</title>
</head>
<body bgcolor="#fffaf0">
<form action="" method="post">
    <div align="center">
        <table border="1">
            <tr>
                <th>输入number1</th>
                <th>选择运算符</th>
                <th>输入number2</th>
            </tr>
            <tr>
                <td>
                    <input type="text" name="number1" size="7"/>
                </td>
                <td>
                    <select name="operator">
                        <option value="+">+</option>
                        <option value="-">-</option>
                        <option value="*">*</option>
                        <option value="/">/</option>
                    </select>
                </td>
                <td>
                    <input type="text" name="number2" size="7"/>
                </td>
            </tr>
        </table>
        <input type="submit" value="计算">
        <input type="reset" value="重置"><br>
        <hr>
    </div>
</form>
<%
    String A = request.getParameter("number1");
    String B = request.getParameter("number2");
    String operator = request.getParameter("operator");
%>
<c:comput number1="<%=A%>" operator="<%=operator%>" number2="<%=B%>"/>
<%
    NumberFormat f = NumberFormat.getInstance();
    // Specified decimal number
    f.setMaximumFractionDigits(3);
    if (result != null) {
        String resultt = f.format(result);
%>
<div align="center">
    运算结果: &nbsp;<%=A%>&nbsp;<%=operator%>&nbsp;<%=B%>&nbsp; = &nbsp;<%=resultt%>
    <%--
        out.print(resultt);
    --%>
</div>
<%
    }
%>
</body>
</html>
