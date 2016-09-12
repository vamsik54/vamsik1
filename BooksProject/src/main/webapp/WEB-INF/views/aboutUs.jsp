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
		<h1>About our BookStore.com</h1>
		<p>BookStore.com is a leading Indian company head quarted in Hyderabad.
		This is one of the largest Internet-based retailer in India and the world.
		The company was founded in 1992. The initial business plan was unusual; 
		we did not expect to make a profit for four to five years. 
	This "slow" growth caused stockholders to complain about the company not reaching profitability fast enough to justify investing in,
		 or to even survive in the long-term. But we survived, and grew up to become a huge player in online sales. 
		 We finally turned its first profit in the fourth quarter of 2000 on revenues of more than 50Crore Rupees.
		 This profit margin, though extremely modest, recognizing the company's success in popularizing online shopping.
		</p>
			
	</div> 
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 <%@include file="footer.jsp"%>