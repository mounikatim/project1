package com.hcl.config;


import java.util.Properties;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@PropertySource(value={"classpath:application.properties"})
public class HibernateConfig {
      
      @Autowired
      Environment environment;
      
      @Bean
      public DriverManagerDataSource dataSource(){
            DriverManagerDataSource dataSource = new DriverManagerDataSource();
            dataSource.setDriverClassName(environment.getProperty("database.driver"));
            dataSource.setUrl(environment.getProperty("database.url"));
            dataSource.setUsername(environment.getProperty("database.user"));
            dataSource.setPassword(environment.getProperty("database.password"));
            return dataSource;
      }
      
      @Bean
      public LocalSessionFactoryBean sessionFactory(DriverManagerDataSource dataSource){
            LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
            sessionFactory.setDataSource(dataSource);
            sessionFactory.setPackagesToScan(new String[] {"com.hcl.Model"});
            sessionFactory.setHibernateProperties(hibernateProperties());
            return sessionFactory;
      }
      
      public Properties hibernateProperties(){
            Properties p = new Properties();
            p.put("hibernate.dialect", environment.getRequiredProperty("hibernate.dialect"));
            p.put("hibernate.show_sql", environment.getRequiredProperty("hibernate.show_sql"));
            p.put("hibernate.hbm2ddl.auto", "update");
            return p;
      }
      
      @Bean
      public HibernateTransactionManager transactionManager(SessionFactory sessionFactory){
            HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
            return transactionManager;
      }

}
