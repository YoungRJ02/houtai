package cn.itcast.mq.listener;

import org.springframework.amqp.rabbit.annotation.Exchange;
import org.springframework.amqp.rabbit.annotation.Queue;
import org.springframework.amqp.rabbit.annotation.QueueBinding;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

import java.time.LocalTime;

@Component
public class SpringRabbitListener {
//    @RabbitListener(queues = "simple.queue")
//    public void listen(String msg){
//        System.out.println("消息为" + msg);
//    }

//    @RabbitListener(queues = "simple.queue")
//    public void listen(String msg) throws InterruptedException {
//        System.out.println("消费者1" + msg + LocalTime.now());
//        Thread.sleep(200);
//    }
//
//    @RabbitListener(queues = "simple.queue")
//    public void listen2(String msg) throws InterruptedException {
//        System.err.println("消费者2" + msg + LocalTime.now());
//        Thread.sleep(20);
//    }

    @RabbitListener(queues = "fanout.queue1")
    public void listen3(String msg){
        System.out.println("fanout.queue1消息为" + msg);
    }

    @RabbitListener(queues = "fanout.queue2")
    public void listen4(String msg){
        System.out.println("fanout.queue2消息为" + msg);
    }

    @RabbitListener(bindings = @QueueBinding(
            value = @Queue(name = "direct.queue1"),
            exchange = @Exchange(name = "itcast.direct"),
            key = {"red", "blue"}
    ))
    public void listenDirectQueue(String msg){
        System.out.println("direct.queue1消息为" + msg);
    }
    @RabbitListener(bindings = @QueueBinding(
            value = @Queue(name = "direct.queue2"),
            exchange = @Exchange(name = "itcast.direct"),
            key = {"red", "yellow"}
    ))
    public void listenDirectQueue2(String msg){
        System.out.println("direct.queue2消息为" + msg);
    }
}
