<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #9933ff;">
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
					<li class="nav-item" "><a class="nav-link active"
						aria-current="page" href="home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="addEmp">Register</a></li>
					<li class="nav-item"><a class="nav-link" href="login">Login</a></li>

				</ul>

			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header text-center">
						<h4>All Employee Details</h4>
						<c:if test="${not empty msg}">
							<h5 class="text-success">"${msg}"</h5>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<table class="table">
							<thead class="table-dark">
								<tr>
									<th scope="col">Id</th>
									<th scope="col">Name</th>
									<th scope="col">Date of Birth</th>
									<th scope="col">Gender</th>
									<th scope="col">Address</th>
									<th scope="col">City</th>
									<th scope="col">State</th>
									<th scope="col">LoginId</th>
									<th scope="col">Password</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${empList }" var="Emp">
									<tr>
										<th scope="row">${Emp.id }</th>
										<td>${Emp.name }</td>
										<td>${Emp.dob }</td>
										<td>${Emp.gender }</td>
										<td>${Emp.address }</td>
										<td>${Emp.city }</td>
										<td>${Emp.state }</td>
										<td>${Emp.loginId }</td>
										<td>${Emp.password }</td>
										<td><a href="editEmp/${Emp.id}"
											class="btn btn-sm btn-primary">Edit</a> <a
											href="deleteEmp/${Emp.id}" class="btn btn-sm btn-danger">Delete</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>