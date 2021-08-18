package com.cjc.homeserviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.homeservice.HomeService;
import com.cjc.model.Employee;
import com.cjc.ropository.HomeRepository;

@Service
public class HomeServiceImpl implements HomeService {

	@Autowired
	HomeRepository hr;
	
	@Override
	public void save(Employee emp) {
		hr.save(emp);	
	}
	
	@Override
	public Iterable<Employee> getall() {
		return hr.findAll();
	}

	@Override
	public List<Employee> getasingle(String username, String password) {
		return hr.findAllByUsernameAndPassword(username, password);
	}

	@Override
	public Optional<Employee> getDatabyId(int id) {
		return hr.findById(id);
	}

	@Override
	public void delete(Employee emp) {
		hr.delete(emp);
	}	
}	
