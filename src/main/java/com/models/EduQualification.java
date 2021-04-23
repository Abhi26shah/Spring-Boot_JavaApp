package com.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="educational_qualification")
public class EduQualification implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id",nullable=false)
	private int id;
	
	@Column(name="type",nullable=false)
	private String type;
	
	@Column(name="start_Date",nullable=false)
	private String startDate;
	
	@Column(name="end_Date",nullable=false)
	private String endDate;
	
	@Column(name="institution",nullable=false)
	private String institution;
	
	@Column(name="address",nullable=false)
	private String address;
	
	@Column(name="percentage",nullable=false)
	private double percentage;
	
	public EduQualification() {
		super();
	}

	public EduQualification(int id, String type, String startDate, String endDate, String institution, String address,
			double d) {
		
		this.id = id;
		this.type = type;
		this.startDate = startDate;
		this.endDate = endDate;
		this.institution = institution;
		this.address = address;
		this.percentage = d;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getInstitution() {
		return institution;
	}

	public void setInstitution(String institution) {
		this.institution = institution;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public double getPercentage() {
		return percentage;
	}

	public void setPercentage(double percentage) {
		this.percentage = percentage;
	}
		
	
}
