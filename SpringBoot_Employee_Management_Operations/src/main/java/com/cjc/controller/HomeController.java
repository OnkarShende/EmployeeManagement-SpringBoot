package com.cjc.controller;

import java.util.List;
import java.util.Optional;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.homeservice.HomeService;
import com.cjc.model.Address;
import com.cjc.model.Employee;

@Controller
public class HomeController {
	
	@Autowired
	HomeService hs;
	
	// Login Page
	@RequestMapping("/")
	public String prelogin() {
		return "Login";
	}
	
	// Registration Page
	@RequestMapping("/register")
	public String prereister() {
		return "Register";
	}
	
	// Post Registration Page
	@RequestMapping("/reg")
	public String postregister(@ModelAttribute("em") Employee emp, @ModelAttribute("addr") Address addr,Model m) 
	{
		emp.setAddr(addr);
		addr.setEmp(emp);		
		hs.save(emp);
		m.addAttribute("emp", emp);
		return "SignUpSuccess";
	}

	// Post Login Page
	@RequestMapping("/log")
	public String login(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session, Model m )
	{
		session.setAttribute("lusername", username);
		session.setAttribute("lpassword", password);
		
		if("admin".equals(username) && "admin".equals(password))
		{
		Iterable<Employee> l =hs.getall();
		m.addAttribute("user", "Admin");
		m.addAttribute("list", l);
		return "LoginSuccess";	
		}
		else
		{
			List<Employee> l=hs.getasingle(username, password);
			if(!l.isEmpty())
			{
				for(Employee em:l)
				{
					m.addAttribute("user", em.getName());
				}
				m.addAttribute("list", l);
				return "LoginSuccess";
			}
			else
			{
				m.addAttribute("msg", "Enter Correct Username & Password");
				return "Login";
			}
		}
	}
	
	// To Delete Employee
	@RequestMapping("/Delete")
	public String delete(@ModelAttribute("em") Employee emp, HttpSession session,  Model m)
	{
		String username=(String)session.getAttribute("lusername");
		String password=(String)session.getAttribute("lpassword");
		
		if("admin".equals(username) && "admin".equals(password))
		{
			Optional<Employee> em=hs.getDatabyId(emp.getEmpid());
			Employee e=	em.get();
			hs.delete(e);
			
			Iterable<Employee> l =hs.getall();
			
			m.addAttribute("user", "Admin");
			m.addAttribute("list", l);
			m.addAttribute("msg", "Employee Deleted Successfully");
			return "LoginSuccess";	
		}
		else
		{
			Optional<Employee> em=hs.getDatabyId(emp.getEmpid());
			Employee e=	em.get();
			hs.delete(e);
			m.addAttribute("msg", "Your Account Deleted Successfully");
			return "Login";		
		}
	}
	
	// To Edit Employee
	@RequestMapping("/Edit")
	public String editpage(@ModelAttribute("emp") Employee empl, Model m)
	{
	Optional<Employee> emp=hs.getDatabyId(empl.getEmpid());
		Employee em=emp.get();	
		m.addAttribute("e", em);
		m.addAttribute("msg", "You Can't Change Employee Id and PinCode");
		return "Edit";
	}
	
	// To Update Employee
	@RequestMapping("/Update")
	public String update(@ModelAttribute("emp")Employee emp, @ModelAttribute("add")	Address addr, HttpSession session, Model m  )
	{
		String username=(String)session.getAttribute("lusername");
		String password=(String)session.getAttribute("lpassword");
		addr.setEmp(emp);
		emp.setAddr(addr);	
		hs.save(emp);
		if("admin".equals(username) && "admin".equals(password))
		{
			Iterable<Employee> list =hs.getall();
			m.addAttribute("user", "Admin");
			m.addAttribute("msg", "Record Updated Successfully");		
			m.addAttribute("list", list);
			return "LoginSuccess";
		}
		else
		{	
		List<Employee> list = hs.getasingle(emp.getUsername(), emp.getPassword());
			for(Employee em:list)
			{
				m.addAttribute("user",em.getName());
			}
			m.addAttribute("list", list);
			m.addAttribute("msg", "Record Updated Successfully");
			return "LoginSuccess";
		}
	}
	
	@RequestMapping("/editcancel")
	public String updatecancel(@ModelAttribute("emp")Employee emp, @ModelAttribute("add")	Address addr, HttpSession session, Model m  )
	{
		String username=(String)session.getAttribute("lusername");
		String password=(String)session.getAttribute("lpassword");
		if("admin".equals(username) && "admin".equals(password))
		{
			Iterable<Employee> list =hs.getall();
			m.addAttribute("user", "Admin");	
			m.addAttribute("list", list);
			return "LoginSuccess";
		}
		else
		{	
		List<Employee> list = hs.getasingle(username, password);
			for(Employee em:list)
			{
				m.addAttribute("user",em.getName());
			}
			m.addAttribute("list", list);
			return "LoginSuccess";
		}
	}
}
