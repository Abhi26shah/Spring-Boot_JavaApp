package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.daos.EmployeeRepository;
import com.models.Employee;
import com.service.EmployeeService;

@RestController
public class EmployeeController {
	 
	@Autowired  
	EmployeeService employeeService;  
	//creating a get mapping that retrieves all the Employees detail from the database   
	@GetMapping("/Employee")  
	private List<Employee> getAllEmployees()   
	{  
		return employeeService.getAllEmployee();  
	}  
	//creating a get mapping that retrieves the detail of a specific Employee  
	@GetMapping("/Employee/{Employeeid}")  
	private Employee getEmployees(@PathVariable("Employeeid") int employeeid)   
	{  
		return employeeService.getEmployeeById(employeeid);  
	}  
	//creating a delete mapping that deletes a specified Employee  
	@DeleteMapping("/Employee/{Employeeid}")  
	private void deleteEmployee(@PathVariable("Employeeid") int employeeid)   
	{  
		employeeService.delete(employeeid);  
	}  
	//creating post mapping that post the Employee detail in the database  
	@PostMapping("/Employees")  
	private int saveEmployee(@RequestBody Employee employee)   
	{  
		employeeService.saveOrUpdate(employee);  
		return employee.getEmpId();  
	}  
	//creating put mapping that updates the Employee detail   
	@PutMapping("/Employees")  
	private Employee update(@RequestBody Employee employee)   
	{  
		employeeService.saveOrUpdate(employee);  
		return employee;  
	}  
}  

