<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/12
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>乘法口诀表</title>
</head>
<body>
<table align="center">
    <tr>
        <td>
            <%
                int i, j;
                for (i = 1; i <= 9; i++) {
                    for (j = 1; j <= i; j++) {
                        out.print(i + "*" + j + "=" + i*j + "\t ");
                    }
                    out.print("<br>");
                }
            %>
        </td>
    </tr>
</table>
</body>
</html>
