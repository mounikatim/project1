package com.hcl.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hcl.Dao.DaoInterface;
import com.hcl.Model.Customer;

@Service
@Transactional
public class ServiceImplementation implements ServiceInterface {
@Autowired
DaoInterface dao;


public void save(Customer employee) {
	dao.save(employee);
	
}


@Override
public List<Customer> list() {
	 return dao.list();
	
}


@Override
public void delete(int id) {
	dao.delete(id);
	
}


@Override
public void update(Customer employee) {
dao.upadte(employee);
	
}


@Override
public Customer edit(int id) {
	
	return dao.edit(id);
}


@Override
public Customer validate(Customer employee) {
	return dao.valdiate(employee);
	
}


@Override
public void update1(int id) {
	dao.update1(id);
	
}


@Override
public List<Customer> fetchbyid(int id) {
	
	return dao.fetchbyid(id);
}
}
