
package barbershop;


import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.apache.httpcomponents;

@RunWith(SpringRunner.class)
@SpringBootTest
public class HomepageTest {


@Test
public void homePage() throws Exception {
    final WebClient webClient = new WebClient();
    try (final WebClient webClient = new WebClient()) {
        final HtmlPage page = webClient.getPage(http://104.199.99.130/home);
        Assert.assertEquals("Barbershop", page.getTitleText());

        final String pageAsXml = page.asXml();
        Assert.assertTrue(pageAsXml.contains("<body class=\"composite\">"));

        final String pageAsText = page.asText();
        Assert.assertTrue(pageAsText.contains("Barbershop project for Uninz"));
    }
}
}
