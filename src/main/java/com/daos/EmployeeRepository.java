package com.daos;
import com.models.*;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;


public interface EmployeeRepository extends CrudRepository<Employee, Integer>   {
	
}
 