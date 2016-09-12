
<!DOCTYPE html>
<html lang="en">
<head>
 <% 
 response.setHeader("pragma", "no-cache");
 response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
 response.setHeader("Expires", "0");
 %>
  <title>BookStore.com AllProducts Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="<c:url value="/resources/css/homeStyle.css" />">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script>document.write('<base href="' + document.location + '" />');</script>
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="./resources/css/style.css" rel="stylesheet" media="screen">
    <script data-require="angular.js@1.0.x" src="http://code.angularjs.org/1.0.7/angular.min.js" data-semver="1.0.7"></script>

  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
	.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  </style>
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
			
				<li>
					<a href="aboutUs">AboutUs</a>
				</li>
				<li>
					<a href="contactUs">Contact Us</a>
				</li>
				
			</ul>
			
				<ul class="nav navbar-nav navbar-right">
			<li>
				<a href="logout">
					<span class="glyphicon glyphicon-log-in">
					</span> Logout
				</a>
			</li>
			<li>
					<a href="#">
						<span class="glyphicon glyphicon-shopping-cart">
						</span>Add To Cart
					</a>
				</li>
		</ul>
		</div>
		</div>
	</nav>
<div class="container">
<div ng-app="myApp" ng-controller="dataCtrl">
  <div>
    <hr></hr>
    <table class="table table-striped">
    <tr>
    <th>Item Id</th>
    <th>Item Name</th>
    <th>Description</th>
    <th>Category</th>
    <th>Price</th>
    <th>Image</th>
    </tr>
        <tr>
             <td>${item.itemId}</td>
            <td>${item.itemName}</td>
            <td>${item.description}</td>
            <td>${item.category}</td>
            <td>${item.price}</td>
            <td><a href=""/>	
            		<img src="resources/images/${item.itemId}.jpg" style="width:100px;height:100px;"/>
            	</a>
            
            </td>
        </tr>    
    </table>
</div> 
</body>
</html>
