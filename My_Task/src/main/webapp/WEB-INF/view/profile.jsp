<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
			<a class="navbar-brand" href="#">My Profile</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center">
						<h1>Hello, ${loginEmp.name}</h1>
					</div>
					<div class="card-body">
						<form action="${pageContext.request.contextPath}/home"
							method="post">
							<div class="mb-3 text-center"><label><h4>Welcome</h4></label></div>
							<div class="mb-3 text-center"><label><h6>You have Successfully Logged in</h6></label></div>
							<center><button class="btn btn-primary text-center">Logout</button></center>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>