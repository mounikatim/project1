package com.hcl.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages="com.hcl")

public class InternalView {
	@Bean	
public ViewResolver viewResolver(){
	

InternalResourceViewResolver irvr =new InternalResourceViewResolver();
irvr.setPrefix("WEB-INF/viewpages/");
irvr.setSuffix(".jsp");
return irvr;
}
}
