package com.movie.springboot;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages= {"com.movie.springboot"})
public class MovieLibraryApplication {

	public static void main(String[] args) {
		SpringApplication.run(MovieLibraryApplication.class, args);
		System.out.println("Hello This is Movie Library");
	}

}
