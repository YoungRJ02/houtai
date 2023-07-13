package cn.itcast.mq.spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SpringAmqpTest {
    @Autowired
    private RabbitTemplate rabbitTemplate;

    @Test
    public void testSendMessage(){
        String queueName = "simple.queue";
        String message = "hhhhh";
        rabbitTemplate.convertAndSend(queueName, message);
    }

    @Test
    public void testSendMessage2() throws InterruptedException {
        String queueName = "simple.queue";
        String message = "hhhhh";
        for(int i = 0; i < 50; i++){
            rabbitTemplate.convertAndSend(queueName, message + i);
            Thread.sleep(20);
        }
    }

    @Test
    public void testSendFanoutExchange(){
        String exchangeName = "itcast.fanout";
        String msg = "hello, hhhh";
        rabbitTemplate.convertAndSend(exchangeName, "", msg);
    }

    @Test
    public void testSendDirectExchange(){
        String exchangeName = "itcast.direct";
        String msg = "hello, red";
        rabbitTemplate.convertAndSend(exchangeName, "red", msg);
    }
}
