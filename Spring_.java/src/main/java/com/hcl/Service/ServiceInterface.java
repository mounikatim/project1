package com.hcl.Service;

import java.util.List;

import com.hcl.Model.Customer;

public interface ServiceInterface {

void save(Customer employee);

List<Customer> list();

void delete(int id);

void update( Customer employee);

Customer edit(int id);

Customer validate(Customer employee);

void update1(int id);

List<Customer> fetchbyid(int id);

}
