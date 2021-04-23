package com.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="employee")
@JsonIgnoreProperties({"hibernateLazyInitializer","handler"})
public class Employee implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id",nullable=false)
	private int id;
	
	@Column(name="first_name",nullable=false)
	private String firstName;
	
	@Column(name="last_name",nullable=false)
	private String lastName;
	
	@Column(name="emp_id",nullable=false)
	private int empId;
	
	@Column(name="start_date",nullable=false)
	private String startDate;
	
	@Column(name="designation",nullable=false)
	private String designation;
	
	@Column(name="department",nullable=false)
	private String department;
	
	@Column(name="end_date",nullable=false)
	private String endDate;
	
	@Column(name="status",nullable=false)
	private String status;
	
	@Column(name="dob",nullable=false)
	private String dob;
	
	@Column(name="reporting_manager",nullable=false)
	private String reportingManager;
	
	@Column(name="gender",nullable=false)
	private String gender;
	
	@Column(name="bgroup",nullable=false)
	private String bgroup;
	
	@Column(name="address",nullable=false)
	private String address;

	public Employee() {
		super();
	}
	public Employee(int id, String firstName, String lastName, int empId, String startDate, String designation,
			String department, String endDate, String status, String dob, String reportingManager, String gender,
			String bgroup, String address) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.empId = empId;
		this.startDate = startDate;
		this.designation = designation;
		this.department = department;
		this.endDate = endDate;
		this.status = status;
		this.dob = dob;
		this.reportingManager = reportingManager;
		this.gender = gender;
		this.bgroup = bgroup;
		this.address = address;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getReportingManager() {
		return reportingManager;
	}
	public void setReportingManager(String reportingManager) {
		this.reportingManager = reportingManager;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBgroup() {
		return bgroup;
	}
	public void setBgroup(String bgroup) {
		this.bgroup = bgroup;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
