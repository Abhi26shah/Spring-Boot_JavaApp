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

import com.daos.EduQualificationRepository;
import com.models.EduQualification;
import com.service.EduQualiService;


@RestController
public class EduQualificationController {
	 
	@Autowired  
	EduQualiService eduQualiService;  
	//creating a get mapping that retrieves all the EduQualifications detail from the database   
	@GetMapping("/EduQualification")  
	private List<EduQualification> getAllEduQualifications()   
	{  
		return eduQualiService.getAllEduQualification();  
	}  
	//creating a get mapping that retrieves the detail of a specific EduQualification  
	@GetMapping("/EduQualification/{EduQualificationid}")  
	private EduQualification getEduQualifications(@PathVariable("EduQualificationid") int eduQualificationid)   
	{  
		return  eduQualiService.getEduQualificationById(eduQualificationid);  
	}  
	//creating a delete mapping that deletes a specified EduQualification  
	@DeleteMapping("/EduQualification/{EduQualificationid}")  
	private void deleteEduQualification(@PathVariable("EduQualificationid") int eduQualificationid)   
	{  
		 eduQualiService.delete(eduQualificationid);  
	}  
	//creating post mapping that post the EduQualification detail in the database  
	@PostMapping("/EduQualifications")  
	private int saveEduQualification(@RequestBody EduQualification eduQualification)   
	{  
		 eduQualiService.saveOrUpdate(eduQualification);  
		return eduQualification.getId();  
	}  
	//creating put mapping that updates the EduQualification detail   
	@PutMapping("/EduQualifications")  
	private EduQualification update(@RequestBody EduQualification eduQualification)   
	{  
		eduQualiService.saveOrUpdate(eduQualification);  
		return eduQualification;  
	}  
}  

