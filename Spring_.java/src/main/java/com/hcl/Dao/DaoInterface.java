package com.hcl.Dao;

import java.util.List;

import com.hcl.Model.Customer;

public interface DaoInterface {

	void save(Customer employee);

	List<Customer> list();

	void delete(int id);

	Customer edit(int id);

	void upadte( Customer employee);

	Customer valdiate(Customer employee);

	void update1(int id);

	List<Customer> fetchbyid(int id);

}
