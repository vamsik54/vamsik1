<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
	<head>
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
		<title>BookStore.com Login</title>
			<link href="<c:url value="/resources/css/loginStyle.css" />" rel="stylesheet">  
    <style>
input.ng-invalid {
    background-color: #9fff80;
}
</style>
	</head>
	<body>
		<div class="loginPage">
			<div class="form">
			<!-- I Used AJS here..To display background colors -->
			
				<form ng-app="" class="loginForm" action="<c:url value='j_spring_security_check'/>" method='POST' >
					<input type="text" name='j_username' placeholder="username" ng-model="myColor1" required/>
					<input type="password"  name='j_password' placeholder="password" ng-model="myColor2" required/>
					<button>login</button>
					<p class="goToSignUp">Not registered? 
						<a href="Register">Create an account</a>
					</p>
				</form>
			</div>
		</div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>

    
  </body>
</html>
