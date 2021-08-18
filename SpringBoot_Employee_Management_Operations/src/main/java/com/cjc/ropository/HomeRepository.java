package com.cjc.ropository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.cjc.model.Employee;

public interface HomeRepository extends CrudRepository<Employee, Integer> {
	
	public List<Employee> findAllByUsernameAndPassword(String username, String password);                                                                                                                                                                                                                                            
}
