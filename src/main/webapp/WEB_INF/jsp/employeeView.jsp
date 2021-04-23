<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<html>
<head>
<meta charset="UTF-8">
<title>Spring-JavaApp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
	body{
		background-color: #F5F5F5;
		color: #566787;
		font-family: Arial, Helvetica, sans-serif;
		font-size: 14px;
	}
	
	.table-wrapper {
		background-color: white;
		padding: 20px 25px;
		margin: 30px 0;
		border-radius: 1px;
		box-shadow: 0 1px 1px rgba(0,0,0,0.247);
	}
	
	.table-title {
		padding-bottom: 15px;
		background: linear-gradient(40deg, #2096FF, #05FFA3) !important;
		color: white;
		padding: 36px 30px;
		margin: -20px -25px 10px;
		border-radius: 1px 1px 0px 0px;
		box-shadow: 0 1px 1px rgba(0,0,0,0.247);
	}
	
	.table-title h2 {
		margin: 5px 0 0;
		font-size: 26px;
	}
	
	.table-title .btn {
		border: none;
		outline: none;
		box-shadow: 0 1px 1px rgba(0,0,0,0.247);
		padding: 10px 18px;
	}
	
	i {
		margin-right: 7px;
		cursor: pointer;
	}
	
	table.table tr th, table.table tr td {
		border-color: #E9E9E9;
		padding: 12px 15px;
		vertical-align: middle;
	}
	
	table.table td a {
		font-weight: bold;
		display: inline-block;
		text-decoration: none;
		font-size: 22px;
		outline: none !important;
	}
	
	table.table td a:hover {
		color: #2196F3;
	}
</style>
</head>
<body>
<%
      try {
        
          String connectionURL = "jdbc:mysql://localhost:3306/icf";
          Connection connection = null;
          Statement statement = null;
          ResultSet rs = null;
          Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
          connection = DriverManager.getConnection(connectionURL, "root", "Root");
          statement = connection.createStatement();
          String QueryString = "SELECT * from employee";
          rs = statement.executeQuery(QueryString);
%>
	<div class="container-fluid">
		<div class="table-wrapper">
		
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>Manage <b>Employees</b></h2>
					</div>
					<div class="col-sm-6">
						<a href="#addEmployeeModal" class="btn btn-success float-right" data-toggle="modal"><i class="material-icons float-left">&#xE147;</i> Add New Employee</a>

						<!-- <a href="#deleteEmployeeModal" class="btn btn-danger float-right mr-3" data-toggle="modal"><i class="material-icons float-left">&#xE15C;</i> Delete</a> -->
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover" id="my_table">
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Emp ID</th>
						<th>Start Date</th>
						<th>Designation</th>
						<th>Department</th>
						<th>End Date</th>
						<th>Status</th>
						<th>Date Of Birth</th>
						<th>Reporting Manager</th>
						<th>Gender</th>
						<th>Blood Group</th>
						<th>Address</th>
						<th width="100px">Action</th>
					</tr>
				</thead>
				 
				<tbody class="w-100">
				<%
    while (rs.next()) {
    %>
					<tr>
						 <TD><%=rs.getString("first_name")%></TD>
						  <TD><%=rs.getString("last_name")%></TD>
						   <TD><%=rs.getString("emp_id")%></TD>
						    <TD><%=rs.getString("start_date")%></TD>	
						     <TD><%=rs.getString("designation")%></TD>
						      <TD><%=rs.getString("department")%></TD>
						       <TD><%=rs.getString("end_date")%></TD>
						        <TD><%=rs.getString("status")%></TD>
						         <TD><%=rs.getString("dob")%></TD>
						          <TD><%=rs.getString("reporting_manager")%></TD>
						           <TD><%=rs.getString("gender")%></TD>
						            <TD><%=rs.getString("bgroup")%></TD>
						             <TD><%=rs.getString("address")%></TD>		
					
						<TD>
							<a href="#editEmployeeModal" class="edit float-left text-primary" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>

							<a href="#deleteEmployeeModal" class="delete text-danger" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
						</TD>
					</tr>
					<%   }    %>
    <%
    // close all the connections.
    rs.close();
    statement.close();
    connection.close();
} 
 catch (Exception ex) {}
%>
				</tbody>
			</table>
		</div>
	</div>
	
	<!-- Add Employee Modal View -->
	<div id="addEmployeeModal" class="modal fade">
		<div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				
					<div class="modal-header">
						<h4 class="modal-title">Add Employee</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<form:form id="addEmployeeForm" method="POST" action="/" modelAttribute="employee">
							<form:hidden path="id" />
							<div class="row">
								<div class="col-md-6 form-group">
									<form:label for="first_name" path="first_name">First Name</form:label>
									<form:input type="text" path="first_name"  name="first_name" id="first_name" class="form-control" required/>
								</div>

								<div class="col-md-6 form-group">
									<form:label for="last_name" path="last_name">Last Name</form:label>
									<form:input type="text" name="last_name" path="last_name" id="last_name" class="form-control" required/>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 form-group">
									<form:label path="address" for="address">Address</form:label>
									<form:input type="text" path="address" name="address" id="address" class="form-control" required/>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6 form-group">
									<form:label for="gender" path="gender">Gender</form:label>
									<form:select path="gender" class="form-control" required>
										<option>Male</option>
										<option>Female</option>
									</form:select>
								</div>

								<div class="col-md-6 form-group">
									<form:label path="bgroup" for="bgroup">Blood Group</form:label>
									<form:input type="text" path="bgroup" name="bgroup" id="bgroup" class="form-control" required/>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 form-group">
									<form:label path="dob" for="dob">Date of Birth</form:label>
									<form:input type="date" path="dob" name="dob" id="dob" class="form-control" required/>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 form-group">
									<form:label path="emp_id" for="emp_id">Employee ID</form:label>
									<form:input type="text" path="emp_id" name="emp_id" id="emp_id" class="form-control" required/>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6 form-group">
									<form:label path="start_date" for="start_date">Start Date</form:label>
									<form:input type="date" path="start_date" name="start_date" id="start_date" class="form-control" required/>
								</div>

								<div class="col-md-6 form-group">
									<form:label path="end_date" for="end_date">End Date</form:label>
									<form:input type="date" path="end_date" name="end_date" id="end_date" class="form-control" required/>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6 form-group">
									<form:label path="designation" for="designation">Designation</form:label>
									<form:input type="text" path="designation" name="designation" id="designation" class="form-control" required/>
								</div>

								<div class="col-md-6 form-group">
									<form:label path="department" for="department">Department</form:label>
									<form:input type="text" path="department" name="department" id="department" class="form-control" required/>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 form-group">
									<form:label path="reporting_manager" for="reporting_manager">Reporting Manager</form:label>
									<form:input type="text" path="reporting_manager" name="reporting_manager" id="reporting_manager" class="form-control" required/>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 form-group">
									<form:label for="status" path="status">Status</form:label>
									<form:input type="text" path="status" name="status" id="status" class="form-control" required/>
								</div>
							</div>
						</form:form>
						<form id="addEducationalDetails" method="POST" action="#">
							<fieldset>
								<legend>Educational Details</legend>
								<div class="row">
									<div class="col-md-12 form-group">
										<label for="type">Type</label>
										<select class="form-control">
											<option>Select</option>
											<option>10<sup>th</sup></option>
											<option>12<sup>th</sup></option>
											<option>Under Graduate</option>
											<option>Post Graduate</option>
										</select>
									</div>
								</div>

								<div class="row">
									<div class="col-md-6 form-group">
										<label for="edu_start_date">Start Date</label>
										<input type="date" name="edu_start_date" id="edu_start_date" class="form-control" required>
									</div>

									<div class="col-md-6 form-group">
										<label for="edu_end_date">End Date</label>
										<input type="date" name="edu_end_date" id="edu_end_date" class="form-control" required>
									</div>
								</div>

								<div class="row">
									<div class="col-md-12 form-group">
										<label for="institute">Institute</label>
										<input type="text" name="institute" id="institute" class="form-control" required>
									</div>
								</div>

								<div class="row">
									<div class="col-md-12 form-group">
										<label for="addr">Address</label>
										<input type="text" name="addr" id="addr" class="form-control" required>
									</div>
								</div>

								<div class="row">
									<div class="col-md-12 form-group">
										<label for="perc">Percentage</label>
										<input type="number" name="perc" id="perc" class="form-control" required>
									</div>
								</div>
							</fieldset>
						</form>
					</div>

					<div class="modal-footer">
						<input type="button" name="btn_cancel" id="btn_cancel" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="button" name="btn_add_employee" id="btn_add_employee" class="btn btn-primary" value="Save" onclick="submitForms()">
					</div>
				
			</div>
		</div>
	</div>
	
	<script>
		function submitForms() {
			document.getElementById("addEmployeeForm").submit();
			document.getElementById("addEducationalDetails").submit();
		}
	</script>

	<!-- Edit Employee Modal View -->
	<div id="editEmployeeModal" class="modal fade">
		<div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				
					<div class="modal-header">
						<h4 class="modal-title">Edit Employee</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<form id="editEmployeeForm" method="POST" action="#">
							<div class="row">
								<div class="col-md-6 form-group">
									<label for="edit_first_name">First Name</label>
									<input type="text" name="edit_first_name" id="edit_first_name" class="form-control" required>
								</div>

								<div class="col-md-6 form-group">
									<label for="edit_last_name">Last Name</label>
									<input type="text" name="edit_last_name" id="edit_last_name" class="form-control" required>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 form-group">
									<label for="edit_address">Address</label>
									<input type="text" name="edit_address" id="edit_address" class="form-control" required>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6 form-group">
									<label for="edit_gender">Gender</label>
									<select id="edit_gender" name="edit_gender" class="form-control" required="">
										<option>Select</option>
										<option>Male</option>
										<option>Female</option>
									</select>
								</div>

								<div class="col-md-6 form-group">
									<label for="edit_bgroup">Blood Group</label>
									<input type="text" name="edit_bgroup" id="edit_bgroup" class="form-control" required>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 form-group">
									<label for="edit_dob">Date of Birth</label>
									<input type="date" name="edit_dob" id="edit_dob" class="form-control" required>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 form-group">
									<label for="edit_emp_id">Employee ID</label>
									<input type="text" name="edit_emp_id" id="edit_emp_id" class="form-control" required>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6 form-group">
									<label for="edit_start_date">Start Date</label>
									<input type="date" name="edit_start_date" id="edit_start_date" class="form-control" required>
								</div>

								<div class="col-md-6 form-group">
									<label for="edit_end_date">End Date</label>
									<input type="date" name="edit_end_date" id="edit_end_date" class="form-control" required>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6 form-group">
									<label for="edit_designation">Designation</label>
									<input type="text" name="edit_designation" id="edit_designation" class="form-control" required>
								</div>

								<div class="col-md-6 form-group">
									<label for="edit_department">Department</label>
									<input type="text" name="edit_department" id="edit_department" class="form-control" required>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 form-group">
									<label for="edit_reporting_manager">Reporting Manager</label>
									<input type="text" name="edit_reporting_manager" id="edit_reporting_manager" class="form-control" required>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 form-group">
									<label for="edit_status">Status</label>
									<input type="text" name="edit_status" id="edit_status" class="form-control" required>
								</div>
							</div>
						</form>
					</div>

					<div class="modal-footer">
						<input type="button" name="btn_cancel" id="btn_cancel" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="button" name="btn_edit_employee" id="btn_edit_employee" class="btn btn-success" value="Save">
					</div>
				
			</div>
		</div>
	</div>


	<!-- Delete Employee Modal View -->
	<div id="deleteEmployeeModal" class="modal fade">
		<div class="modal-dialog modal-dialog-scrollable">
			<div class="modal-content">
				
					<div class="modal-header">
						<h4 class="modal-title">Delete Employee</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<p>Are you sure you want to delete this record?</p>
						<p class="text-warning"><small>This action cannot be undone.</small></p>
					</div>

					<div class="modal-footer">
						<input type="button" name="btn_cancel" id="btn_cancel" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="button" name="btn_delete_employee" id="btn_delete_employee" class="btn btn-danger" value="Delete">
					</div>
				
			</div>
		</div>
	</div>
</body>
</html>
