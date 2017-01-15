package barbershop.dao;

import barbershop.entity.Message;
import barbershop.entity.Task;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by Justinas on 2017-01-15.
 */
public interface MessageDao extends CrudRepository<Message, Integer> {
}
