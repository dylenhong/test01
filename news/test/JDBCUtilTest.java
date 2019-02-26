import org.junit.Test;
import org.news.util.JDBCUtil;

import java.sql.Connection;

import static org.junit.Assert.*;
/**
*JDBC测试
 * master分支上有更新，merge到new_branch上
 *测试fetch
 *测试pull
 * 测试head
*/
public class JDBCUtilTest {
    @Test
    public void getConnection(){
        Connection conn = JDBCUtil.getConnection();//获取连接
        System.out.println(conn);
    }

}
