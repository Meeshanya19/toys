package toys.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import toys.dao.UserDao;
import toys.entity.User;
import toys.service.UserService;

import java.util.List;

/**
 * Created by Michail on 7/23/2019.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    public void save(User user) {
userDao.save(user);
    }

    public List<User> findAll() {
        return userDao.findAll();
    }

    public void delete(int id)
    {
userDao.delete(id);
    }

    public void update(User user,int id) {
userDao.delete(id);
        userDao.save(user);
    }

    public User findOne(int id) {
        return userDao.findOne(id);
    }

    public String getShipping(int id) {
        return userDao.findOne(id).getShippindAddress();
    }
}
