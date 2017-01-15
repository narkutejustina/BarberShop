package barbershop.service;

import barbershop.dao.MessageDao;
import barbershop.entity.Message;
import barbershop.entity.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Justinas on 2017-01-15.
 */

@Service
@Transactional
public class MessageService {

    private final MessageDao dao;

    @Autowired
    public MessageService(MessageDao dao) {
        this.dao = dao;
    }

    public List<Message> findAll() {
        List<Message> messageList = new ArrayList<>();
        for(Message message: dao.findAll()) {
            messageList.add(message);
        }
        return messageList;
    }

    public void saveMessage(Message message) {
        dao.save(message);
    }


}
