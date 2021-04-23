package com;

import org.hibernate.SessionFactory;
import org.hibernate.ejb.HibernateEntityManagerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class IcfJavaAppApplication {
	  
	public static void main(String[] args) {
		SpringApplication.run(IcfJavaAppApplication.class, args);
	}

}
