package org.news.dao.user;

import org.news.entity.User;

public interface UserDao {
    User findUser(User user) throws Exception;
}
