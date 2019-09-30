package com.imooc.sell.logger;

import com.imooc.sell.SellApplicationTests;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.springframework.stereotype.Component;

@Component
@Slf4j
public class LoggerTest extends SellApplicationTests {


    @Test
    public void test(){
        log.debug("debug....");
        log.info("info....");
        log.error("error....");
    }
}
