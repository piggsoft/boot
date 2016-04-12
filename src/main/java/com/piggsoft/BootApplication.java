package com.piggsoft;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement
public class BootApplication {

	public static void main(String[] args) {
		SpringApplication.run(BootApplication.class, args);
	}
}
