package barbershop.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import barbershop.dao.UserDao;
import org.springframework.stereotype.Service;

import barbershop.dao.UserDao;
import barbershop.entity.User;

@Service
@Transactional
public class UserService {

    private final UserDao userDao;

    public UserService(UserDao userDao) {
        this.userDao = userDao;
    }

    public List<User> findAll() {
        List<User> users = new ArrayList<>();
        for(User user: userDao.findAll()) {
            users.add(user);
        }
        return users;
    }

    public boolean checkIfUserPasswordCorrect(String username, String password) {
        List<User> users = userDao.findByUsernameAndPassword(username,password);
        if(users.size() > 0)
            return true;
        return false;
    }

}
