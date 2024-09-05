package com.online.food;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.online.food"})
public class DeliveryWebApplication {

	public static void main(String[] args) {
		SpringApplication.run(DeliveryWebApplication.class, args);
		System.out.println("hello!");
	}

}
