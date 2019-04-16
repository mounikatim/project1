<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- <div align="center">
<div class="container">
<ul class="nav nav-tabs">
<li class="active">
<a href="#" > ViewCustomer</a></li>
<li><a href="add"> AddCustomer</a></li>
<li ><a href="loginpage"> LogOut</a></li> -->
<form:form action="#" modelAttribute="login">
<c:set value="${userList}" var="userPageList" /> 
<table class="table table-striped">
<tr><th>EmployeeId</th>
<th>FirstName</th>
<th>LastName</th>
<th>DOB</th>
<th>Address Line 1</th>
<th>Address Line 2</th>
<th>City</th>
<th>State</th>
<th>Pincode</th>
<th>MobileNumber</th>
<th>Email</th>
<th>Aadhar</th>
<th>Pan</th>
<th>UserName</th>
<th>Password</th>
<!-- <th>ConfirmPassword</th> -->
<th>DOB Proof</th>
<th>Address Proof</th>
<th>Aadhar Proof</th>
<th>Pan Proof</th>
<th>Edit</th>
<th>Delete</th></tr>

<c:forEach items="${list}" var="obj">

				<tr>
				 <%-- <td><c:out value="${obj.user.getId()}"/></td>  --%>
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
<td><a href="edit?cid=<c:out value='${obj.cid}' />">EDIT</a></td>
<td><a href="delete?cid=<c:out value='${obj.cid}' />">Delete</a></td> 
						
				</tr>
			</c:forEach>
</table>

<%--   <c:choose>
   
   <c:when test="${userPageList.firstPage}">
 
    </c:when>
    <c:otherwise>
        <c:url value="/prev" var="url" />                  
        <a href='<c:out value="${url}" />'>Prev</a>
    </c:otherwise>
</c:choose>
<c:forEach begin="1" end="${userPageList.pageCount}" step="1"  varStatus="tagStatus">
    <c:choose>
        
        <c:when test="${(userPageList.page + 1) == tagStatus.index}">
            <span>${tagStatus.index}</span>
        </c:when>
        <c:otherwise>
            <c:url value="/${tagStatus.index}" var="url" />                  
            <a href='<c:out value="${url}" />'>${tagStatus.index}</a>
        </c:otherwise>
    </c:choose> 
</c:forEach>
<c:choose>
    
    <c:when test="${userPageList.lastPage}">
   
    </c:when>
    <c:otherwise>
        <c:url value="/next" var="url" />                  
        <a href='<c:out value="${url}" />'>Next</a>
    </c:otherwise>
</c:choose>  --%>

</form:form>
</body>
</html>