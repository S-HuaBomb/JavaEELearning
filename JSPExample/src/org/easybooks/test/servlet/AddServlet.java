package org.easybooks.test.servlet;

import org.easybooks.test.jdbc.SqlSrvDBConn;
import org.easybooks.test.model.vo.LyTable;
import org.easybooks.test.model.vo.UserTable;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "addServlet", urlPatterns = {"/addServlet"}, loadOnStartup = 1)

public class AddServlet extends HttpServlet {

    /** 重写 doGet 方法 */
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("gb2312");
        // 获取留言标题
        String title = request.getParameter("title");
        // 获取留言内容
        String content = request.getParameter("content");
        // 获取会话对象，用来保存当前的留言信息
        HttpSession session = request.getSession();

        // 从会话中取出当前会话对象
        UserTable user = (UserTable)session.getAttribute("user");
        // 实例化留言表对应的 Javabean 对象（LyTable），把数据封装进去
        LyTable ly = new LyTable();
        // 获取当前登录用户的 id
        ly.setUserId(user.getId());
        // 获取当前系统时间
        ly.setDate((java.sql.Date) new Date(System.currentTimeMillis()));
        ly.setTitle(title);
        ly.setContent(content);
        ArrayList al = (ArrayList)session.getAttribute("al");

        /** 添加新的留言要保存到一份会话中，这样在刷新主页时，就无须每次都去查询数据库留言表了 */
        al.add(ly);

        // 向数据库插入新的留言记录
        PreparedStatement pstmt = null;
        SqlSrvDBConn sqlsrvdb = new SqlSrvDBConn();
        // 获取数据库连接
        Connection ct = sqlsrvdb.getConn();
        try {
            // 预编译 SQL 语句
            pstmt = ct.prepareStatement("insert INTO lytable(userId, date, title, content) values(?, ?, ?, ?)");
            /** 实例化 ？ 中的字段和对应的值 */
            pstmt.setInt(1, ly.getUserId());
            pstmt.setDate(2, ly.getDate());
            pstmt.setString(3, ly.getTitle());
            pstmt.setString(4, ly.getContent());
            // 执行该插入操作
            pstmt.executeUpdate();
            // 插入成功跳转去主页面
            response.sendRedirect("main.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            // 失败跳转去留言页
            response.sendRedirect("liuyan.jsp");
        }
    }

    /** 重写 doPost 方法 */
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        doGet(request, response);
    }
}
