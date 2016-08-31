<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<link href="<c:url value="/resources/css/homeStyle.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/adminHome.css" />"
	rel="stylesheet">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BookStore.com</title>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
  </script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
  </script>
  <style>
  html{
  background-color:#C0C0C0;
  }
  </style>
</head>
<body>
<!-- 
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
				<a class="navbar-brand" href="">BookStore.com</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				
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
	</nav>-->
	
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
				<a class="navbar-brand" href="">BookStore.com</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				
				<!-- <li>
					<a href="about_us.html">AboutUs</a>
				</li>
				<li>
					<a href="contact_us.html">Contact Us</a>
				</li>-->
				 <li><a href="addItem">Add Products</a></li>
				<li><a href="ViewCustomers">View All Customers</a></li>
				<li><a href="ViewProducts">View All Products</a></li>
		
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

	