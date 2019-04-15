package org.easybooks.test;

import org.easybooks.test.jdbc.SqlSrvDBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class SqlTest {
    public static void main(String[] args) {
        SqlSrvDBConn sqlsrvdb = new SqlSrvDBConn();
        Connection ct = sqlsrvdb.getConn();
        PreparedStatement pstmt;

        {
            try {
                pstmt = ct.prepareStatement("INSERT INTO usertable(username, password) VALUES (?, ?)");
                pstmt.setString(1, "KKK");
                pstmt.setString(2, "LLL");
                pstmt.executeUpdate();
                System.out.print("successfully");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
