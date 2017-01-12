package barbershop.dao;

import java.util.List;
import org.springframework.data.repository.CrudRepository;

import barbershop.entity.User;


public interface UserDao  extends CrudRepository<User, Long>{
    List<User> findByUsernameAndPassword(String username, String password);
}
