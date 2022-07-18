package com.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCUtil {

    private static String driver="oracle.jdbc.driver.OracleDriver";
    private static String url="jdbc:oracle:thin:@127.0.0.1:1521:orcl";
    private static String user="scott";
    private static String password="123456";
    /*static {
        //IO流读取jdbc.properties文件
        InputStream in =  ClassLoader.getSystemResourceAsStream("db.properties");
        // 读取参数
        Properties p = new Properties();
        try {
            p.load(in);
        } catch (IOException e) {
            e.printStackTrace();
        }
        driver = p.getProperty("driver");
        url = p.getProperty("url");
        user = p.getProperty("user");
        password = p.getProperty("password");
    }*/
    public static Connection getConnection() {
        // 创建连接（通过反射机制）
        Connection connection=null;
        try {
            Class.forName(driver);
            connection = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;

    }

}
