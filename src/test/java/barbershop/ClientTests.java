package barbershop;


import barbershop.entity.Client;
import barbershop.service.ClientService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ClientTests {

    @Autowired
    ClientService clientService;


    Client client = new Client("Tom", "Tomp", "Tom@Tomp.com", "+37060000000");

    @Test
    public void createClient_idEquals0() {
        Assert.assertEquals(0, client.getClientId());

    }

    @Test
    public void addClientToDatabase() {
            clientService.save(client);
            Assert.assertNotEquals(0, client.getClientId());
            clientService.delete(client);
    }


}