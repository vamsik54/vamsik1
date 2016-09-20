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
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script>document.write('<base href="' + document.location + '" />');</script>
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="./resources/css/style.css" rel="stylesheet" media="screen">
    <script data-require="angular.js@1.0.x" src="http://code.angularjs.org/1.0.7/angular.min.js" data-semver="1.0.7"></script>
</head>
<body>

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
				<a class="navbar-brand" href="#">BookStore.com</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="current">
					<a href="#">Home
					</a>
				</li>
			
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> Categories 	
						<span class="caret">
						</span>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="toViewCategoryWise?category=Category1">Action and Adventure</a>
						</li>
						<li>
							<a href="toViewCategoryWise?category=Category2">Biographies</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="#">All Products</a>
				</li>
				<li>
					<a href="aboutUs">AboutUs</a>
				</li>
				<li>
					<a href="contactUs">Contact Us</a>
				</li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
		<li>
					<a href="viewCart">
						<span class="glyphicon glyphicon-shopping-cart">
						</span>View Cart
					</a>
				</li>
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
