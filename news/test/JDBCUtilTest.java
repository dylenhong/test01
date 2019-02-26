import org.junit.Test;
import org.news.util.JDBCUtil;

import java.sql.Connection;

import static org.junit.Assert.*;

public class JDBCUtilTest {
    @Test
    public void getConnection(){
        Connection conn = JDBCUtil.getConnection();
        System.out.println(conn);
    }

}