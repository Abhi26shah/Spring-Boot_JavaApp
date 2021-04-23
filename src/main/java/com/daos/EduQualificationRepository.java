package com.daos;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.models.EduQualification;
import com.models.Employee;



public interface EduQualificationRepository extends CrudRepository<EduQualification, Integer>    {
	


}