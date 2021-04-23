package com.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daos.EduQualificationRepository;
import com.models.EduQualification;

@Service  
public class EduQualiService   
{  
	@Autowired  
	EduQualificationRepository eduQualificationRepository;  
	//getting all EduQualification record by using the method findaAll() of CrudRepository  
	public List<EduQualification> getAllEduQualification()   
	{  
		List<EduQualification> eduQualification = new ArrayList<EduQualification>();  
		eduQualificationRepository.findAll().forEach(eduQualification1 -> eduQualification.add(eduQualification1));  
		return eduQualification;  
	}  
	//getting a specific record by using the method findById() of CrudRepository  
	public EduQualification getEduQualificationById(int id)   
	{  
		return eduQualificationRepository.findById(id).get();  
	}  
	//saving a specific record by using the method save() of CrudRepository  
	public void saveOrUpdate(EduQualification eduQualification)   
	{  
		eduQualificationRepository.save(eduQualification);  
	}  
	//deleting a specific record by using the method deleteById() of CrudRepository  
	public void delete(int id)   
	{  
		eduQualificationRepository.deleteById(id);  
	}  
	//updating a record  
	public void update(EduQualification eduQualification, int bookid)   
	{  
		eduQualificationRepository.save(eduQualification);  
	}  
}  