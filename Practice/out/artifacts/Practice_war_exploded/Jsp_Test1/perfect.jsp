<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/12
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>计算1到1000的完数</title>
</head>
<body>
<table border="1">
    <tr>
        <td>1 到 1000 内的完数有:</td>
        <td >
            <%
                // 完数等于它的所有因子之和
                int i, j;
                int factor = 0;
                for (i = 1; i <= 1000; i++) {
                    for (j = 1; j < i; j++) {
                        if (i % j == 0)
                            factor = factor + j;
                    }
                    if (factor == i) {
                        out.print(i + " ");
                    }
                    factor = 0;
                }
            %>
        </td>
    </tr>
</table>
</body>
</html>
