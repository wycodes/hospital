package com.hospital;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.hospital.mapper")
public class HospitalcenterX02Application {

	public static void main(String[] args) {
		SpringApplication.run(HospitalcenterX02Application.class, args);
	}

}
