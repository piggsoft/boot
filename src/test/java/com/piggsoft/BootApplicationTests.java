package com.piggsoft;

import com.piggsoft.config.Props;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = BootApplication.class)
@WebAppConfiguration
public class BootApplicationTests {

	@Autowired
	private Props props;

	@Test
	public void contextLoads() {
		System.out.println(props.getUrl());
	}

}
