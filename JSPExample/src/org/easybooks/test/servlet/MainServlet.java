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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "mainServlet", urlPatterns = {"/mainServlet"}, loadOnStartup = 1)

public class MainServlet extends HttpServlet {

    /** 重写 doGet 方法 */
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 设置请求编码
        request.setCharacterEncoding("gb2312");
        // 获取表单提交的用户名
        String usr = request.getParameter("username");

        // 获取表单提交的密码
        String pwd = request.getParameter("password");
        // 验证成功标识
        boolean validated = false;
        SqlSrvDBConn sqlsrvdb = new SqlSrvDBConn();
        // 获取会话对象，用来保存当前登录用户的信息
        HttpSession session = request.getSession();

        /**
         先获得 UserTable 对象，若是第一次访问页面，用户对象肯定为空，但若是第二次或是第三次，
         就直接登录主页，而无须再次重复验证该用户的信息
         **/
        UserTable user = null;
        user = (UserTable)session.getAttribute("user");

        /** 若是用户第一次进入，会话中尚未存储 user 持久化对象，故为 null */
        if (null == user) {
            // 查询 userTable 表中的记录
            String sql = "select * from userTable";
            // 取得结果集
            ResultSet rs = sqlsrvdb.executeQuery(sql);
            try {
                while (rs.next()) {
                    if ((rs.getString("username").trim().compareTo(usr) == 0)
                            && (rs.getString("password").compareTo(pwd)) == 0) {
                        // 持久化的 Javabean 对象 user
                        user = new UserTable();
                        user.setId(rs.getInt(1));
                        user.setUsername(rs.getString(2));
                        user.setPassword(rs.getString(3));
                        // 把 user 对象存储在 session 中
                        session.setAttribute("user", user);
                        // 验证通过
                        validated = true;
                    }
                }
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            sqlsrvdb.closeStmt();
        } else {
            /** 该用户之前已经登陆过 */
            validated = true;
        }

        /** 验证成功，转向主界面，其中包含了所有留言信息，所以要从留言表中查出来，并暂存在会话中 */
        if (validated) {
            ArrayList al = new ArrayList();
            try {
                String sql = "select * from lytable";
                // 取得结果集
                ResultSet rs = sqlsrvdb.executeQuery(sql);
                while (rs.next()) {
                    // 实例化留言对象
                    LyTable ly = new LyTable();
                    // 获取留言信息
                    ly.setId(rs.getInt(1));
                    ly.setUserId(rs.getInt(2));
                    ly.setDate(rs.getDate(3));
                    ly.setTitle(rs.getString(4));
                    ly.setContent(rs.getString(5));
                    // 添加入留言信息列表
                    al.add(ly);
                }
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            sqlsrvdb.closeStmt();
            // 留言存入会话
            session.setAttribute("al", al);
            // 然后重定向到 main.jsp
            response.sendRedirect("main.jsp");
            /*
            RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
            rd.forward(request,response);
            */
        } else {
            // 验证试验重定向到 error.jsp
            response.sendRedirect("error.jsp");
        }
    }

    /** 重写 doPost 方法 */
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        doGet(request, response);
    }
}
