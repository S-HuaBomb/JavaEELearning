<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="org.easybooks.test.jdbc.SqlSrvDBConn" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="org.easybooks.test.model.vo.LyTable" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/14
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>留言板信息</title>
</head>
<body bgcolor="#fffaf0">
<form action="liuyan.jsp" method="post">
    <div align="center">
    <table border="1">
        <caption>所有留言信息</caption>
        <tr>
            <th>留言者</th>
            <th>留言时间</th>
            <th>留言标题</th>
            <th>留言内容</th>
        </tr>
        <%
            /** 留言者谁 */
            PreparedStatement pstmt = null;
            SqlSrvDBConn sqlsrvdb = new SqlSrvDBConn();
            Connection ct = sqlsrvdb.getConn();
            ArrayList al = (ArrayList)session.getAttribute("al");
            // 迭代器
            Iterator iter = al.iterator();
            while (iter.hasNext()) {
                LyTable ly = (LyTable)iter.next();
                String usr = null;
                try {
                    // 取出 username
                    pstmt = ct.prepareStatement("SELECT username FROM usertable WHERE id = ?");
                    pstmt.setInt(1, ly.getUserId());
                    ResultSet rs = pstmt.executeQuery();
                    while (rs.next()) {
                        usr = rs.getString(1);
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
        %>
        <tr>
            <td><%=usr%>%></td>
            <td><%=ly.getDate().toString()%></td>
            <td><%=ly.getTitle()%></td>
            <td><%=ly.getContent()%></td>
        </tr>
        <%
            }
        %>
    </table>
    <input type="submit" value="留言"/>
    </div>
</form>
</body>
</html>
