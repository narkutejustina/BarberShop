package barbershop.dao;

import barbershop.entity.Task;
import org.springframework.data.repository.CrudRepository;

public interface TaskDao extends CrudRepository<Task, Integer>{
}
