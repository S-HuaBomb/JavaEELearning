package org.easybooks.test.servlet;

import org.easybooks.test.jdbc.SqlSrvDBConn;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "registerServlet", urlPatterns = {"/registerServlet"}, loadOnStartup = 1)

public class RegisterServlet extends HttpServlet {

     /** 重写 doGet 方法 */
     @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
         request.setCharacterEncoding("gb2312");
         // 获取提交注册的用户名
         String usr = request.getParameter("username");
         // 获取提交注册的密码
         String pwd = request.getParameter("password");

         /** 向数据库插入新用户名和密码 */
         PreparedStatement pstmt = null;
         SqlSrvDBConn sqlsrvdb = new SqlSrvDBConn();
         // 获取数据库连接
         Connection ct = sqlsrvdb.getConn();
         try {
             pstmt = ct.prepareStatement("insert into usertable values (?, ?);");
             pstmt.setString(1, usr);
             pstmt.setString(2, pwd);
             pstmt.executeUpdate();
             // 注册成功跳转到登录界面
             response.sendRedirect("login.jsp");
         } catch (SQLException e) {
             e.printStackTrace();
         }
     }

     /** 重写 doPost 方法 */
     @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
         doGet(request, response);
     }
}
