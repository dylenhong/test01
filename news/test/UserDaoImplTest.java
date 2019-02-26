import org.junit.Test;
import org.news.dao.user.UserDao;
import org.news.dao.user.impl.UserDaoImpl;
import org.news.entity.User;

import static org.junit.Assert.*;

public class UserDaoImplTest {
    @Test
    public void findUserTest(){
        UserDao userDao = new UserDaoImpl();
        User user = new User();
        user.setUname("leslie");
        user.setUpwd("111");
        try {
            User user1 = userDao.findUser(user);
            System.out.println(user1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}