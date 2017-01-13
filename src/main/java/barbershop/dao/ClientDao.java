package barbershop.dao;

import barbershop.entity.Client;
import org.springframework.data.repository.CrudRepository;
import java.util.List;

public interface ClientDao extends CrudRepository<Client, Integer>{
}
