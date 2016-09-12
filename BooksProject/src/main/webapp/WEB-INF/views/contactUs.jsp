<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BookStore.com Contact Us </title>
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
					<a href="aboutUs">AboutUs</a>
				</li>
				<li>
					<a href="contactUs">Contact Us</a>
				</li>
		</ul>
			</div>
		</div>
	</nav>
			 <div id="container">
    
    <div id="content">
    <div id="content_left">
        	<div class="content_left_section">
            	<h1>Categories</h1>
                <ul>
                    <li><a href="toViewCategoryWise?category=Category1">Action & Adventure Books</a></li>
                    <li><a href="toViewCategoryWise?category=Category2">Biographies</a></li>
            	</ul>
            </div>
            <div class="content_left_section">
            	<h1>Discounts</h1>
                <ul>
                    <li><a href="discount">Upto 20% Discount</a></li>
                    <li><a href="discount">More Than 20% Discount</a></li>
					
                </ul>
            </div>
        </div>
        <div id="content_right">
        <br><br><br><br><br><br><br><br>
		<h1>Contact Us</h1>
		&nbsp &nbsp<span class="glyphicon glyphicon-envelope"></span>
		&nbsp &nbsp <span>Mail Us at bookstore@gmail.com</span>
		
		<br>
		&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
		<b>Or</b>
		<br>
		&nbsp &nbsp<span class="glyphicon glyphicon-envelope"></span>
		&nbsp &nbsp <span>Mail Us at bookstore@yahoo.co.in</span>
		<br>
		<!-- <span class="glyphicon glyphicon-earphone"></span>
		
		-->
			
	</div> 
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 <%@include file="footer.jsp"%>