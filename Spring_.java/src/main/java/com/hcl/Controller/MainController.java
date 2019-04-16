package com.hcl.Controller;

import java.util.Base64;
import java.util.List;
//ooo
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.Base64Utils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hcl.Model.Customer;
import com.hcl.Service.ServiceInterface;



@Controller
public class MainController {
	@Autowired
	ServiceInterface service;
/*@RequestMapping(value="/welcome")
	public String hello(){
	return "first";
}*/
@RequestMapping(value="/one")
public ModelAndView newcustomer(@ModelAttribute("login")Customer employee)
{
	
	return new ModelAndView("first");
}
@RequestMapping(value="/loginpage")
public ModelAndView loginCustomer(@ModelAttribute("login")Customer employee)
{
	
	String encode=employee.setPassword(Base64.getEncoder().encodeToString(employee.getPassword().getBytes()));
	

	service.save(employee);
	return new ModelAndView("loginpage");
}
@RequestMapping(value="/welcomepage")
public ModelAndView Customer(@ModelAttribute("login")Customer employee)
{

	return new ModelAndView("Welcomepage");
}
@RequestMapping(value="/list")
public ModelAndView ListCustomer(@ModelAttribute("login")Customer employee)
{
	List<Customer> ls= service.list();
	return new ModelAndView("ViewPage","list",ls);
}

/*@RequestMapping("/saved")
public ModelAndView savecustomer(@ModelAttribute("login")Customer employee)
{
	service.save(employee);
	
	return new ModelAndView("redirect:/ListCustomer");
}*/
/*@RequestMapping("/ListCustomer")
public ModelAndView Listcustomer(HttpSession session,HttpServletRequest req,@ModelAttribute("login")Customer employee)
{
	
	List<Customer> ls= service.list();
	return new ModelAndView("ViewPage","list",ls);
	Customer user1=service.validate(employee);
	int cid=user1.getCid();
	String name=user1.getUserName();
	String psw=user1.getPassword();
	if((name.equals(employee.getUserName()))&&psw.equals(employee.getPassword())){
		session.setAttribute("uid",cid);
		session.setAttribute("uname", user1.getUserName());
		session.setAttribute("lastName", user1.getLastName());
		session.setAttribute("firstName", user1.getFirstName());
		return new ModelAndView("redirect:/welcomepage");
	
	}
	else
		
	return new ModelAndView("loginpage");
}*/
@RequestMapping("/login")
public ModelAndView check(@ModelAttribute("login") Customer employee)
{
	
	Customer r=service.validate(employee);
                if(r.getFirstName()!=null)
                {
                                return new ModelAndView("WelcomePage","rx",r);
                }
                else
                {
                                return new ModelAndView("loginpage");
                }
                
}

@RequestMapping(value="/delete")
public ModelAndView Delete(HttpServletRequest req,@ModelAttribute("login") Customer employee){
int id=Integer.parseInt(req.getParameter("cid"));
System.out.println(id);
	service.delete(id);
return new ModelAndView("redirect:/ListCustomer");

}
@RequestMapping(value="/edit")
public ModelAndView edit(HttpServletRequest req,@ModelAttribute("login") Customer employee ){
	int id=Integer.parseInt(req.getParameter("cid"));
	Customer ee=service.edit(id);
	
	List<Customer> ls=service.list();
	
 ModelAndView model=new ModelAndView("edit","list",ls);
 model.addObject("addform",ee);
 return model;

}
@RequestMapping(value="/update")
public ModelAndView Update(HttpServletRequest req,@ModelAttribute("login") Customer employee ){
	/*int id=Integer.parseInt(req.getParameter("cid"));*/
	service.update(employee);
return new ModelAndView("redirect:/ListCustomer");

}
@RequestMapping(value="/savings")
public ModelAndView Savings(HttpServletRequest req,@ModelAttribute("login") Customer employee ){
	int id=Integer.parseInt(req.getParameter("id"));
	service.update1(id);
	List<Customer> ls=service.fetchbyid(id);
return new ModelAndView("WelcomePage","rx",ls);

}
}

