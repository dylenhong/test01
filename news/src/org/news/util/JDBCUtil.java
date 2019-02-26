package org.news.util;

//import org.apache.log4j.Logger;

import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

/**
 * JDBC工具类
 */
public class JDBCUtil {
    private static String driver;
    private static String url;
    private static String username;
    private static String password;
//    private static Logger logger = Logger.getLogger(JDBCUtil.class);
    static {
        try {
            Properties prop = new Properties();
            InputStream is = JDBCUtil.class.getClassLoader().getResourceAsStream("database.properties");
//            InputStream is = JDBCUtil.class.getResourceAsStream("/database.properties");
            prop.load(is);
            driver = prop.getProperty("driver");
            url = prop.getProperty("url");
            username = prop.getProperty("user");
            password = prop.getProperty("password");
            Class.forName(driver);//加载驱动
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    public static Connection getConnection(){
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url,username,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
    public static void close(Connection conn, PreparedStatement ps, ResultSet rs){
        try{
            if(rs != null){
                rs.close();
            }
        }catch (Exception e){
//            logger.error(e);
        }finally {
            try {
                if(ps != null){
                    ps.close();
                }
            }catch (Exception e){
//                logger.error(e);
            }finally {
                try{
                    if(conn != null){
                        conn.close();
                    }
                }catch (Exception e){
//                    logger.error(e);
                }
            }
        }

    }
}
