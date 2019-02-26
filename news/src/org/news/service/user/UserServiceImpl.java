package org.news.service.user;

import org.news.dao.user.UserDao;
import org.news.dao.user.impl.UserDaoImpl;
import org.news.entity.User;
//import org.apache.log4j.Logger;


public class UserServiceImpl implements UserService {
    private UserDao userDao = new UserDaoImpl();
//    private Logger logger = Logger.getLogger(UserServiceImpl.class);
    @Override
    public boolean login(User user) {
        boolean flag = false;
        try {
            User user1 = userDao.findUser(user);
            if (user1 != null) {
                flag = true;
            }
        } catch (Exception e) {
//            logger.info("用户不存在",e);
        }
        return flag;
    }
}
