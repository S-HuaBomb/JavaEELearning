package org.easybooks.test.jdbc;

import java.sql.*;

public class SqlSrvDBConn {
    private Statement stmt;
    private Connection conn;
    ResultSet rs;

    // 定义驱动
    private static String driver = "com.mysql.jdbc.Driver";
    // 定义 URL
    private static String url = "jdbc:mysql://localhost:3306/jsplysys";
    // 定义用户名
    private static String user = "root";
    // 定义密码
    private static String psw = "123456";

    // 在构造方法中创建数据库连接
    public SqlSrvDBConn() {
        stmt = null;
        try {
            /** 加载并注册 MySQL 的 JDBC 驱动 */
            Class.forName(driver);
            /** 创建连接 */
            conn = DriverManager.getConnection(url, user, psw);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        rs = null;
    }

    // 获取数据连接
    public Connection getConn() {
        return this.conn;
    }

    // 执行查询类的 SQL 语句，有返回集
    public ResultSet executeQuery(String sql) {
        try {
            stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stmt.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }

    // 关闭对象
    public void closeStmt() {
        try {
            stmt.close();
        } catch (SQLException e) {
            System.err.println("Data.executeQuery: " + e.getMessage());
        }
    }

    // 关闭连接
    public void closeConn() {
        try {
            conn.close();
        } catch (SQLException e) {
            System.err.println("Data.executeQuery: " + e.getMessage());
        }
    }
}
