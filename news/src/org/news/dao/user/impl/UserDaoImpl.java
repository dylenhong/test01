package org.news.dao.user.impl;

import org.news.dao.user.UserDao;
import org.news.entity.User;
import org.news.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDaoImpl implements UserDao {

    @Override
    public User findUser(User user) throws Exception {
        Connection conn = JDBCUtil.getConnection();
        System.out.println(conn);
        String sql = "SELECT  * FROM news_users WHERE uname=? AND upwd=?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1,user.getUname());
        ps.setString(2,user.getUpwd());
        ResultSet rs = ps.executeQuery();
        User registeredUser = null;
        while (rs.next()){
            registeredUser = new User();
            registeredUser.setUid(rs.getInt("uid"));
            registeredUser.setUname(rs.getString("uname"));
            registeredUser.setUpwd(rs.getString("upwd"));
        }
        JDBCUtil.close(conn,ps,rs);
        return registeredUser;
    }
}
