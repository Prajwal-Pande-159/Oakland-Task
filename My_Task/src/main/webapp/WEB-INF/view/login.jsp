<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
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
						aria-current="page" href="home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="addEmp">Register</a></li>
					<li class="nav-item"><a class="nav-link" href="login">Login</a></li>
				</ul>

			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header text-center">
						<h3>Login Page</h3>
						<c:if test="${not empty msg}">
							<h5 class="text-success">"${msg}"</h5>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<form action="emplogin" method="post" class="center-form">
							<div class="mb-3">
								<label>LoginId</label> <input type="text" name="loginId"
									class="form-control">
							</div>
							<div class="mb-3">
								<label>Password</label> <input type="text" name="password"
									class="form-control">
							</div>
							<button class="btn btn-primary col-md-12">Login</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>