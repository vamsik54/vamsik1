<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BookStore.com</title>
<link href="<c:url value="/resources/css/homeStyle.css" />"
	rel="stylesheet">
<link rel="shortcut icon" href="css/images/favicon.icon"/>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
  </script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
  </script>
</head>
<body>


<!--
	<div id="menu">
		<ul>
            <li><a href="home_page.html" class="current">Home</a></li>
			<li><a href="new_releases.html">New Releases</a></li>
            <li><a href="about_us.html">About Us</a></li> 
            <li><a href="contact_us.html">Contact Us</a></li>
			<li><a href="sign_up_page.html">Sign In</a></li>
			<li><a href="login_page.html">Login</a></li>
    	</ul>
    </div>
	-->
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">
					<span class="glyphicons glyphicons-shopping-bag">
					</span>
				</a>
				<a class="navbar-brand" href="home_page.html">BookStore.com</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="current">
					<a href="home_page.html">Home
					</a>
				</li>
				<li>
					<a href="new_releases.html">New Releases</a>
				</li>
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> Categories 	
						<span class="caret">
						</span>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="action_adventure.html">Action and Adventure</a>
						</li>
						<li>
							<a href="biographies.html">Biographies</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="allProducts.html">All Products</a>
				</li>
				<li>
					<a href="about_us.html">AboutUs</a>
				</li>
				<li>
					<a href="contact_us.html">Contact Us</a>
				</li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li>
				<a href="logout">
					<span class="glyphicon glyphicon-log-in">
					</span> Logout
				</a>
			</li>
		</ul>
			</div>
		</div>
	</nav>
