<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
	
	
		$(function() {
			
			$("#datepicker").datepicker({
				dateFormat : "dd-mm-yy"
			});
		});
	
</script> 
</head>
<body>
<form:form action ="update" name="aswin" modelAttribute="login">saved 

<c:set value="${userList}" var="userPageList" /> 
<table class="table table-striped">
<tr><th>CId</th><th>firstName</th><th>lastName</th><th>dOB</th><th>addressLine1</th><th>addressLine2</th><th>city</th><th>state</th><th>pincode</th><th>mobileNumber</th><th>email</th><th>aadhar</th><th>pan</th><th>userName</th><th>password</th><th>dobProof</th><th>addressProof</th><th>aadharProof</th><th>panProof</th><th>Edit</th><th>Delete</th></tr>

<c:forEach items="${list}" var="obj">

				<tr>
				<c:choose>
				<c:when test="${obj.cid==addform.cid}">
				<form:hidden path="cid" value='${obj.cid}'/>
				<td> ${obj.cid}</td>
				<td><form:input path="firstName" value='${obj.firstName}'/>
				<td><form:input path="lastName" value='${obj.lastName}'/>
				<td><form:input path="dOB" value='${obj.dOB}' id="datepicker"/>
				<td><form:input path="addressLine1" value='${obj.addressLine1}'/>
				<td><form:input path="addressLine2" value='${obj.addressLine2}'/>
				<td><form:input path="city" value='${obj.city}'/>
				<td><form:input path="state" value='${obj.state}'/>
				<td><form:input path="pincode" value='${obj.pincode}'/>
				<td><form:input path="mobileNumber" value='${obj.mobileNumber}'/>
				<td><form:input path="email" value='${obj.email}'/>
				<td><form:input path="aadhar" value='${obj.aadhar}'/>
				<td><form:input path="pan" value='${obj.pan}'/>
				<td><form:input path="userName" value='${obj.userName}'/>
				<td><form:input path="password" value='${obj.password}'/>
				<td><form:input path="dOB" type="file" value='${obj.dobProof}'/>
				<td><form:input path="dobProof" type="file" value='${obj.addressProof}'/>
				<td><form:input path="aadharProof" type="file" value='${obj.aadharProof}'/>
				<td><form:input path="panProof" type="file" value='${obj.panProof}'/>
				<td><a onclick="aswin.submit()"href="#">Update </a>
				<%-- <td><a  onclick="click.submit()" href="update?cid=${obj.cid}" />Update</a></td> --%>
			<!-- 	&nbsp;&nbsp;&nbsp;&nbsp; -->
				<td><a href="delete?cid=<c:out value='${obj.cid}' />">Delete</a></td>
				
				</c:when>
				<c:otherwise>
				<%-- <td><c:out value="${obj.Pojo.getId()}"/></td> --%>
					 <td>${obj.cid}</td>
	          <td>${obj.firstName}</td> 
				<td>${obj.lastName}</td>
				<td>${obj.dOB}</td>
				<td>${obj.addressLine1}</td>
	             <td>${obj.addressLine2}</td>
	             <td>${obj.city}</td>
	                <td>${obj.state}</td>
	             <td>${obj.pincode}</td>
	             <td>${obj.mobileNumber}</td>
	             <td>${obj.email}</td>
	              <td>${obj.aadhar}</td>
	               <td>${obj.pan}</td>
	              <td>${obj.userName}</td>
	              <td>${obj.password}</td>
	              <td>${obj.dobProof}</td>
	              <td>${obj.addressProof}</td>
	              <td>${obj.aadharProof}</td>
	                <td>${obj.panProof}</td> 
					
<td><a href="edit?cid=<c:out value='${obj.cid}' />"> EDIT</a></td>
<td><a href="delete?cid=<c:out value='${obj.cid}' />">Delete</a></td>
</c:otherwise>
				</c:choose>
				</tr>
			</c:forEach>
</table>

</form:form> 

</body>
</html>