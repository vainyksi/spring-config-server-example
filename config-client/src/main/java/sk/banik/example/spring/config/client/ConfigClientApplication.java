package sk.banik.example.spring.config.client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
public class ConfigClientApplication {

    public static void main(String[] args) {
        SpringApplication.run(ConfigClientApplication.class, args);
    }
}

@RefreshScope
@RestController
class MessageRestController {

    @Value("${message:Hello default}")
    private String message;

    private final GreeterProperties greetingProperties;

    @Autowired
    public MessageRestController(final GreeterProperties greetingProperties) {
        this.greetingProperties = greetingProperties;
    }

    @RequestMapping("/message")
    String getMessage() {
        return this.message;
    }

    @RequestMapping("/greetings")
    String getGreeting() {
        return "Hi, " + greetingProperties.getName() + ". ;)";
    }
}

@Component
@ConfigurationProperties("greeter")
class GreeterProperties {

    private String name;

    public String getName() {
        return name;
    }

    public void setName(final String name) {
        this.name = name;
    }
}
