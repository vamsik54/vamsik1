<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html >
	<head>
		<title>BookStrore.com SignUp</title>
			<link href="<c:url value="/resources/css/loginStyle.css" />" rel="stylesheet">   
	</head>
	<body>
		<div class="loginPage">
			<div class="form">
				<form:form class="loginForm" action="Register" commandName="customerObj" method="POST">
				<form:input type="text" placeholder="username" path="username"></form:input><form:errors path="username" style="color:red"></form:errors>
				<form:password path="password"  placeholder="password"></form:password><form:errors path="password" style="color:red"></form:errors>
				<form:input type="email" path="emailid"  placeholder="Email Id"></form:input><form:errors path="emailid" style="color:red"></form:errors>
					<button>Register</button>
				</form:form>
			</div>
		</div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>

    
    
    
  </body>
</html>