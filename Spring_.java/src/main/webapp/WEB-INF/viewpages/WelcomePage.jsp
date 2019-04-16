<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<%-- <h1>User ${uname} </h1> --%>


	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Welcome ${rx.firstName} ${rx.lastName}
			</a>
		</div>

		<ul class="nav navbar-nav navbar-right">
			<li><a class="nav-link" href="Index.jsp"> HOME</a></li>
			<li><a class="nav-link" href="loginpage"> LOGOUT</a></li>
		</ul>
	</div>
	</nav>
	<div class="container">
 
  <div class="panel panel-Info">
    <div class="panel-heading">Account Summary</div>
	<table>
		<tr>
			<td>
				<div class="dropdown">
					<button class="btn btn-primary dropdown-toggle" type="button"
						data-toggle="dropdown">
						Account <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="savings?id=${rx.cid}">Create savings
								account</a></li>
						<li><a href="list"> AllCustomers</a></li>
						<!--  <li><a href="#">JavaScript</a></li> -->
					</ul>
				</div>
			</td>
		
	
			<td>
				<div class="dropdown">
					<button class="btn btn-primary dropdown-toggle" type="button"
						data-toggle="dropdown">
						Fund Transfer <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="savings?id=${rx.cid}">Add Beneficiary</a></li>
						<li><a href="list"> Funds Transfer</a></li>
						<!--  <li><a href="#">JavaScript</a></li> -->
					</ul>
				</div>
			</td>
			<td>
				<div class="dropdown">
					<button class="btn btn-primary dropdown-toggle" type="button"
						data-toggle="dropdown">
						Others <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="savings?id=${rx.cid}">Cheque Book</a></li>
						<li><a href="list"> Funds Transfer</a></li>
						<!--  <li><a href="#">JavaScript</a></li> -->
					</ul>
				</div>
			</td>
		</tr>
	</table>
	<c:if test="">
		<table class="table table-bordered">
			<tr>
				<td>${rs.accountNo}</td>
				<td>${rs.accountType}</td>
				<td>${rs.balance}</td>
				<td>${rs.createdDate}</td>
			</tr>
		</table>
	</c:if>

</body>
</html>

