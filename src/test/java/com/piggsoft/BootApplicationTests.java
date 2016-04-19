package com.piggsoft;

import com.piggsoft.config.Props;
import com.piggsoft.model.TFlow;
import com.piggsoft.service.FlowService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.math.BigDecimal;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = BootApplication.class)
@WebAppConfiguration
public class BootApplicationTests {

	@Autowired
	private Props props;

	@Autowired
	private FlowService flowService;

	@Test
	public void contextLoads() {
		System.out.println(props.getUrl());
	}

	@Test
	public void test() {
		TFlow flow = new TFlow();
		flow.setId("1");
		flow.setSize(new BigDecimal("123"));
		flowService.save(flow);
	}

}
