package com.cjc.homeservice;

import java.util.List;
import java.util.Optional;

import com.cjc.model.Employee;

public interface HomeService {

	public void save(Employee emp);
	public Iterable<Employee> getall();
	public List<Employee> getasingle(String username, String password);
	public  Optional<Employee> getDatabyId(int id);
	public void delete(Employee emp);
	
}
