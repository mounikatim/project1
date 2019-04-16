<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	function valid() {
		
		if (document.getElementById("firstName").value == "") {
			document.getElementById("error1").innerHTML = "<center>Enter Your FirstName</center>";
			return false;
		}

		else if (document.getElementById("lastName").value == "") {
			document.getElementById("error2").innerHTML = "<center>Enter Your LastName</center>";
			document.getElementById("error1").innerHTML = "";
			return false;
		} else if (document.getElementById("dOB").value == "") {
			document.getElementById("error3").innerHTML = "<center>Enter Your DOB</center>";
			document.getElementById("error2").innerHTML = "";
			return false;
		} else if (document.getElementById("addressLine1").value == "") {
			document.getElementById("error4").innerHTML = "<center>Enter Your Address1</center>";
			document.getElementById("error3").innerHTML = "";
			return false;
		} else if (document.getElementById("addressLine2").value == "") {
			document.getElementById("error5").innerHTML = "<center>Enter Your Address2</center>";
			document.getElementById("error4").innerHTML = "";
			return false;
		} else if (document.getElementById("city").value == "") {
			document.getElementById("error6").innerHTML = "<center>Enter Your Address2</center>";
			document.getElementById("error5").innerHTML = "";
			return false;
		} else if (document.getElementById("state").value == "") {
			document.getElementById("error7").innerHTML = "<center>Enter Your Address2</center>";
			document.getElementById("error6").innerHTML = "";
			return false;
		}
		else if (document.getElementById("pincode").value == "") {
			document.getElementById("error8").innerHTML = "<center>Enter Your Address2</center>";
			document.getElementById("error7").innerHTML = "";
			return false;
			}
		else if (document.getElementById("mobileNumber").value == "") {
			document.getElementById("error9").innerHTML = "<center>Enter Your Address2</center>";
			document.getElementById("error8").innerHTML = "";
			return false;
			}
		else if (document.getElementById("email").value == "") {
			document.getElementById("error10").innerHTML = "<center>Enter Your Address2</center>";
			document.getElementById("error9").innerHTML = "";
			return false;
			}
		else if (document.getElementById("aadhar").value == "") {
			document.getElementById("error11").innerHTML = "<center>Enter Your Address2</center>";
			document.getElementById("error10").innerHTML = "";
			return false;
			}
		else if (document.getElementById("panm").value == "") {
			document.getElementById("error12").innerHTML = "<center>Enter Your Address2</center>";
			document.getElementById("error11").innerHTML = "";
			return false;
			}
		else {
			return true;
		}

	}
</script>
<style>
h1 {
	background-color: lightblue;
}

p {
	font-color: red;
}
/* body {background-color: powderblue;} */
h1 {
	color: blue;
}
</style>
<script>
	$(function() {

		$("#datepicker").datepicker({
			dateFormat : "dd-mm-yy"
		});
	});
</script>
</head>
<body>
	<form:form action="loginpage" modelAttribute="login">
Welcome......
<h1 style="color: blue;">Customer Registration</h1>
		<table class="table table-striped">
			<tr>
				<td>First Name</td>
				<td>Last Name</td>
				<td>DOB</td>
			</tr>
			<tr>
				<td><form:input path="firstName" /></td>
				<p id="error1"></p>
				<!-- <input type="text"> -->


				<td><form:input path="lastName" /></td>
				<p id="error2"></p>
				<!-- <input type="text"> -->

				<td><form:input path="dOB" id="datepicker" /></td>
				<p id="error3"></p>
				<!-- <input type="text"></td></tr> -->
			<tr>
				<td>Address Line 1</td>
				<td>Address Line 2</td>
				<td>City</td>
			</tr>
			<tr>
				<td><form:input path="addressLine1" /></td>
				<p id="error4"></p>
				<!-- <input type="text"> -->

				<td><form:input path="addressLine2" /></td>
				<p id="error5"></p>
				<!-- <input type="text"> -->
				</td>
				<td><form:input path="city" /></td>
				<p id="error6"></p>
				<!-- <input type="text"> -->
				</td>
			</tr>
			<tr>
				<td>State</td>
				<td>PinCode</td>
				<td>MobileNumber</td>
			</tr>
			<tr>
				<td><form:input path="state" /></td>
				<p id="error7"></p>
				<!-- <input type="text"> -->

				<td><form:input path="pincode" /></td>
				<p id="error8"></p>
				<!-- <input type="text"> -->

				<td><form:input path="mobileNumber" /></td>
				<p id="error9"></p>
				<!-- <input type="text"> -->

			</tr>
			<tr>
				<td>Email</td>
				<td>AadharNo</td>
				<td>Pan</td>
			</tr>
			<tr>
				<td><form:input path="email" /></td>
				<p id="error10"></p>
				<!-- <input type="text"> -->
				<td><form:input path="aadhar" /></td>
				<p id="error11"></p>
				<!-- <input type="text"> -->

				<td><form:input path="pan" /></td>
				<p id="error12"></p>
				<!-- <input type="text"> -->

			</tr>
			<tr>
				<td>UserName</td>
				<td>Password</td>
				<td>ConfirmPassword</td>
			</tr>
			<tr>
				<td><form:input path="userName" /></td>
				<p id="error13"></p>
				<!-- <input type="text"> -->
				</td>
				<td><form:input path="password" /></td>
				<p id="error14"></p>
				<!-- <input type="text"> -->
				</td>
				<td>
					<%-- <form:input path="password"/> --%> <input type="text">
				</td>
				<p id="error15"></p>
				</td>
			</tr>
			<tr>
				<td>Date Of Birth Proof</td>
				<td><form:input type="file" path="dobProof" /></td>
				<p id="error16"></p>
				<!-- <input type="text"> -->
			
				<td><p>Ex: Passport, Birth Certificate, Upload only PDF,
						JPG, JPEG Documents</p></td>
			</tr>
			<tr>
				<td>Address Proof</td>
				<td><form:input type="file" path="addressProof" />
			
		
			<p id="error17"></p></td>
			
			<td><p>Ex: License, Voter Id, Upload only PDF, JPG, JPEG
					Documents</p></td></tr>
			<tr>
				<td>Aadhar Proof</td>
				<td><form:input type="file" path="aadharProof" /></td>
				<p id="error18"></p>
				<!-- <input type="text"> -->
				</td>
				<td>
					<p>Upload only PDF, JPG, JPEG Documents</p>
				</td>
			</tr>
			<tr>
				<td>Pan Proof</td>
				<td><form:input type="file" path="panProof" /></td>
				<p id="error19"></p>
				<!-- <input type="text"> -->
				</td>
				<td><p>Upload only PDF, JPG, JPEG Documents</p></td>
			</tr>
			<tr>
				<td>
				<td><input type="submit" onclick="return valid()"
					class="btn btn-primary" value="Register"> <input
					type="reset" class="btn btn-warning" value="Reset">
		</table>
	</form:form>
</body>
</html>
