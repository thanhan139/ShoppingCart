/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author Khanhhy
 */
public class DBUtils {
    private static final String DB_USER_NAME="SA";
    private static final String DB_PASSWORD="12345";
    private static final String DB_NAME="UserManagement";
    public static Connection getConnection() throws ClassNotFoundException,SQLException{
        Connection conn=null;
        //load thư viện jsbc để kết nối với MS SQL Server
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url="jdbc:sqlserver://localhost:1433;databaseName="+DB_NAME;
        conn=DriverManager.getConnection(url,DB_USER_NAME,DB_PASSWORD);
        return conn;
    }
    public static Connection getConnectionV2() throws ClassNotFoundException,SQLException, NamingException{
        Connection conn=null;
        Context context = new InitialContext();
        Context end=(Context)context.lookup("java:comp/env");
        DataSource ds=(DataSource)end.lookup("DBConn");
        conn=ds.getConnection();
        return conn;
    }
}
