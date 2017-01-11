package barbershop.service;

import barbershop.dao.TaskDao;
import barbershop.entity.Task;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by nnjus on 2017-01-09.
 */
@Service
@Transactional
public class TaskService {
    private final TaskDao dao;

    public TaskService(TaskDao dao) {
        this.dao = dao;
    }

    public List<Task> findAll() {
        List<Task> tasks = new ArrayList<>();
        for(Task task: dao.findAll()) {
            tasks.add(task);
        }
        return tasks;
    }

    public Task getById(int taskId) {return dao.findOne(taskId); }

    public void save(Task task) {
        dao.save(task);
    }


}