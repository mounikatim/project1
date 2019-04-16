package com.hcl.Dao;

import java.time.LocalDate;
import java.util.Iterator;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hcl.Model.Customer;


@Repository
public class DaoImplementation implements DaoInterface{
@Autowired
SessionFactory sessionFactory;

@Override
public void save(Customer employee) {
	sessionFactory.getCurrentSession().save(employee);
	System.out.println(employee);
	
}


public List<Customer> list() {
	return sessionFactory.getCurrentSession().createQuery("from Customer").list();
	
}



public void delete(int id) {
sessionFactory.getCurrentSession().createSQLQuery("delete from Customer where cid=?").addEntity(Customer.class).setParameter(0, id).executeUpdate();
	
}


@Override
public Customer edit(int id) {
	List<Customer> sql= sessionFactory.getCurrentSession().createQuery(" from Customer where id=?").setParameter(0, id).list();
	Iterator<Customer> it=sql.iterator();
	Customer p=null;
	while(it.hasNext())
	{
		p=it.next();
	}
	return p;
}




public void upadte( Customer employee) {
	SQLQuery sql=sessionFactory.getCurrentSession().createSQLQuery("update Customer set firstName=?,lastName=?,dOB=?,addressLine1=?, addressLine2=?, city=?,state=?,pincode=?,mobileNumber=?,email=?,aadhar=?,pan=?,userName=?,password=?,dobProof=?,addressProof=?,aadharProof=?,panProof=? where cid=?").addEntity(Customer.class);
	sql.setParameter(0, employee.getFirstName());
	sql.setParameter(1, employee.getLastName());
	sql.setParameter(2, employee.getdOB());
	sql.setParameter(3, employee.getAddressLine1());
	sql.setParameter(4, employee.getAddressLine2());
	sql.setParameter(5, employee.getCity());
	sql.setParameter(6, employee.getState());
	sql.setParameter(7, employee.getPincode());
	sql.setParameter(8, employee.getMobileNumber());
	sql.setParameter(9, employee.getEmail());
	sql.setParameter(10, employee.getAadhar());
	sql.setParameter(11, employee.getPan());
	sql.setParameter(12, employee.getUserName());
	sql.setParameter(13, employee.getPassword());
	sql.setParameter(14, employee.getDobProof());
	sql.setParameter(15, employee.getAddressProof());
	sql.setParameter(16, employee.getAadharProof());
	sql.setParameter(17, employee.getPanProof());
	sql.setParameter(18,employee.getCid());
	sql.executeUpdate();
}


@Override
public Customer valdiate(Customer employee) {
	String uname=employee.getUserName();
	String psw=employee.getPassword();

	List ls=sessionFactory.getCurrentSession().createQuery("from Customer where userName=? and password=?").setParameter(0, uname).setParameter(1, psw).list();
	Iterator it=ls.iterator();
	Customer us=null;
	while(it.hasNext()){
		us=(Customer) it.next();
		System.out.println(us);
	}
	return us;

}


@Override
public void update1(int id) {
	SQLQuery sql=sessionFactory.getCurrentSession().createSQLQuery("update fourthtable set accountNo=?,accountType=?,balance=?,createdDate=? where fourId=?" ).addEntity(Customer.class);
	sql.setParameter(0,"1234567890"+id);
	sql.setParameter(1,"Savings");
	sql.setParameter(2,"10000");
	sql.setParameter(3,LocalDate.now());
	sql.setParameter(4,id);
	sql.executeUpdate();
}


@Override
public List<Customer> fetchbyid(int id) {
	
	return (List<Customer>) sessionFactory.getCurrentSession().createSQLQuery("select * from fourthtable where fourId=?").addEntity(Customer.class).setParameter(0, id);
}
	
}
