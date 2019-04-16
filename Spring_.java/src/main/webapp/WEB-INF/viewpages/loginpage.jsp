<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.hero-image {
  background-image: url("C:\aswin programs\Banking_Hackaton\src\main\resources\images\bank.jpg");
  background-color: #cccccc;
  height: 500px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.hero-text {
   text-align: center;
  position: absolute;
  top: 50%;
  left: 50%; 
  /* transform: translate(-50%, -50%); */
  color: white;
}
</style>
</head>
<body>
<div class="hero-image">
  <div class="hero-text">
<h1> Login Page</h1>

<form:form action="login" modelAttribute="login">
<table class="table">
<tr><td><form:input path="userName"   placeholder="userName"/></td></tr>
<tr><td><form:password path="password" placeholder="password"/></td></tr>
 
  <tr> <td><center>	<input type="submit" path="submit"  class="btn btn-primary" value="Login"/></center></td></tr>
</table>
  </form:form>
</body>
</html>