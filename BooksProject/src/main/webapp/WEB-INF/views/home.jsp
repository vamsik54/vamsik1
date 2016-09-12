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
</head>
<%@include file="header1.jsp"%>
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
		<h1>Trending Now</h1>
			<div class="product_box">
            	<h1>Wings of Fire</h1>
				<img src=<c:url value="/resources/images/wings_of_fire.jpg"/> alt="Wings of Fire">
                <div class="product_info">
                	<p>Biography of Abdul Kalam</p>
					<h3>&#8377; 250.00</h3>
						<div class="buy_now_button"><a href="CustomerLogin">Buy Now</a>
						</div>
					<!--  	<div class="detail_button"><a href="wings_of_fire.html">Detail</a>
						</div>-->
                </div>
                <div class="space">&nbsp;</div>
			</div>
            
            <div class="space_width">&nbsp;</div>
	
            <div class="product_box">
            	<h1>Philosopher Stone</h1>
       	    <img src=<c:url value="/resources/images/harry_potter1.jpg"/> alt="Philosopher Stone">
                <div class="product_info">
                	<p>Harry Potter Series</p>
                    <h3>&#8377; 859.00</h3>
						<div class="buy_now_button"><a href="CustomerLogin">Buy Now</a>
						</div>
						<!-- <div class="detail_button"><a href="philosopher_stone.html">Detail</a>
						</div>-->
                </div>
                <div class="space">&nbsp;</div>
            </div>
            
            <div class="space_height">&nbsp;</div>
            
            <div class="product_box">
            	<h1>Order of Pheonix</h1>
				<img src=<c:url value="/resources/images/harry-potter3.jpeg"/> alt="Order of Pheonix">
                <div class="product_info">
                	<p>Harry Potter Series</p>
                    <h3>&#8377; 453.00</h3>
						<div class="buy_now_button"><a href="CustomerLogin">Buy Now</a>
						</div>
					<!-- 	<div class="detail_button"><a href="order_of_pheonix.html">Detail</a>
						</div>  -->
                </div>
                <div class="space">&nbsp;</div>
            </div>
            
            <div class="space_width">&nbsp;</div>
            
				<div class="product_box">
					<h1>Biography of Albert Einstein</h1>
					<img src=<c:url value="/resources/images/einstein.jpg"/> alt="Einstein Biography">
						<div class="product_info">
						<p>World's greatest scientist</p>
						<h3>&#8377; 999.00</h3>
							<div class="buy_now_button"><a href="CustomerLogin">Buy Now</a>
							</div>
						<!-- 	<div class="detail_button"><a href="einstein.html">Detail</a>
							</div>  -->
						</div>
						<div class="space">&nbsp;</div>
				</div>
            
				<div class="space_height">&nbsp;</div>
        </div>
	</div>
    <!-- Carousel Started-->
	<div class="carouselStart">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src=<c:url value="/resources/images/carousel1c.jpg"/> alt="book image1" width="460" height="345">
      </div>

      <div class="item">
        <img src=<c:url value="/resources/images/carousel2c.jpg"/> alt="book image2" width="460" height="345">
      </div>
    
      <div class="item">
        <img src=<c:url value="/resources/images/carousel3c.jpg"/> alt="book image3" width="460" height="345">
      </div>

      <div class="item">
        <img src=<c:url value="/resources/images/carousel4c.jpg"/> alt="book image4" width="460" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div><br><br><br>
 <!-- Carousel Ended--> 
 <%@include file="footer.jsp"%>