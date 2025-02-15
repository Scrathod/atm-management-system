package com.govt.banksystem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class BankManagementSystemApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext run = SpringApplication.run(BankManagementSystemApplication.class, args);
	}

}
