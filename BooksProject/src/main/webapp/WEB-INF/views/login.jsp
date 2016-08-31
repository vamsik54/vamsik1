<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
	<head>
		<title>BookStore.com Login</title>
			<link href="<c:url value="/resources/css/loginStyle.css" />" rel="stylesheet">  
	</head>
	<body>
		<div class="loginPage">
			<div class="form">
				<form class="loginForm" action="<c:url value='j_spring_security_check'/>" method='POST' >
					<input type="text" name='j_username' placeholder="username"/>
					<input type="password"  name='j_password' placeholder="password"/>
					<button>login</button>
					<p class="goToSignUp">Not registered? 
						<a href="sign_up_page.html">Create an account</a>
					</p>
				</form>
			</div>
		</div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>

    
    
    
  </body>
</html>
