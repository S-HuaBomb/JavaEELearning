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
    <title>���԰���Ϣ</title>
</head>
<body bgcolor="#fffaf0">
<form action="liuyan.jsp" method="post">
    <div align="center">
    <table border="1">
        <caption>����������Ϣ</caption>
        <tr>
            <th>������</th>
            <th>����ʱ��</th>
            <th>���Ա���</th>
            <th>��������</th>
        </tr>
        <%
            /** ������˭ */
            PreparedStatement pstmt = null;
            SqlSrvDBConn sqlsrvdb = new SqlSrvDBConn();
            Connection ct = sqlsrvdb.getConn();
            ArrayList al = (ArrayList)session.getAttribute("al");
            // ������
            Iterator iter = al.iterator();
            while (iter.hasNext()) {
                LyTable ly = (LyTable)iter.next();
                String usr = null;
                try {
                    // ȡ�� username
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
    <input type="submit" value="����"/>
    </div>
</form>
</body>
</html>
