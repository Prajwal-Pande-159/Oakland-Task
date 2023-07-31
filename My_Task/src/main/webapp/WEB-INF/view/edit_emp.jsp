<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Employee</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light"
		style="background-color: #9933ff;">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Fresher Task</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${pageContext.request.contextPath}/home">Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/addEmp">Add Employee</a></li>
				</ul>

			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center">
						<h3>Edit Employee</h3>
					</div>
					<div class="card-body" >
						<form action="${pageContext.request.contextPath}/updateEmp"
							method="post">
							<input type="hidden" name="id" value="${emp.id}">
							<div class="mb-3">
								<label>Name</label> <input type="text" name="name"
									class="form-control" value="${emp.name}">
							</div>
							<div class="mb-3">
								<label>Date of Birth</label> <input type="text" name="dob"
									class="form-control" value="${emp.dob}">
							</div>
							<div class="mb-3">
								<label>Gender </label> <input type="text" name="gender"
									class="form-control" value="${emp.gender}">
							</div>
							<div class="mb-3">
								<label>Address</label> <input type="text" name="address"
									class="form-control" value="${emp.address}">
							</div>
							<div class="mb-3">
								<label>City</label> <input type="text" name="city"
									class="form-control" value="${emp.city}">
							</div>
							<div class="mb-3">
								<label>State</label> <input type="text" name="state"
									class="form-control" value="${emp.state}">
							</div>
							<div class="mb-3">
								<label>LoginId</label> <input type="text" name="loginId"
									class="form-control" value="${emp.loginId}">
							</div>
							<div class="mb-3">
								<label>Password</label> <input type="text" name="password"
									class="form-control" value="${emp.password}">
							</div>
							<button class="btn btn-primary text-center col-md-12">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>