<%@ page import="java.text.NumberFormat" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/22
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>四则运算器</title>
</head>
<body>
<form action="" method="post">
    <div align="center">
        <table border="1">
            <tr>
                <th align="center">输入number1</th>
                <th align="center">选择运算符</th>
                <th align="center">输入number2</th>
            </tr>
            <tr>
                <td>
                    <input type="text" name="number1" size="15" value="1"
                           onfocus="if(this.value==this.defaultValue){this.value=''}"
                           class="text"/>
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
                    <!--onfocus 设置鼠标点击时默认文本清空并接受输入-->
                    <input type="text" name="number2" size="15" value="1"
                    onfocus="if(this.value==this.defaultValue){this.value=''}"/>
                </td>
            </tr>
        </table>
        <input type="submit" value="计算" class="button">
        <input type="reset" value="重置" class="button"><br>
        <hr>
    </div>
</form>
<%
    String A = request.getParameter("number1");
    String B = request.getParameter("number2");
    String operat = request.getParameter("operator");
%>
<c:comput number1="<%=A%>"
          operator="<%=operat%>"
          number2="<%=B%>"/>
<%
    NumberFormat f = NumberFormat.getInstance();
    // Specified decimal number
    f.setMaximumFractionDigits(3);
    if (result != null) {
        String resultt = f.format(result);
%>
<div align="center">
    运算结果: &nbsp;<%=A%>&nbsp;<%=operat%>&nbsp;<%=B%>&nbsp; = &nbsp;<%=resultt%>
    <%--
        out.print(resultt);
    --%>
</div>
<%
    }
%>
</body>
</html>
