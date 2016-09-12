<!DOCTYPE html>
<html lang="en">
<head>
 <% 
 response.setHeader("pragma", "no-cache");
 response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
 response.setHeader("Expires", "0");
 %>
  <title>BookStore.com Action Books</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
					<a href="CustomerLogin">All Products</a>
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
		</ul>
			</div>
		</div>
	</nav>
<div>
</div>
<div>
<div class="container">
  <div ng-app="myApp" ng-controller="dataCtrl">
Search your item: <input type="text"  ng-model="search">&nbsp&nbsp<span class="glyphicon glyphicon-search"></span>
    <hr></hr>
    <table class="table table-striped">
    <tr>
    <th>Product Id</th>
    <th>Product Name</th>
    <th>Product Description</th>
    <th>Category</th>
    <th>Price</th>
    <th>Image</th>
    </tr>
        <tr ng-repeat="resource in names | filter:search">
             <td>{{resource.itemId}}</td>
            <td>{{resource.itemName}}</td>
            <td>{{resource.description}}</td>
            <td>{{resource.category}}</td>
            <td>{{resource.price}}</td>
            <td><img src="resources/images/{{resource.itemId}}.jpg" style="width:100px;height:100px;"/></td>
          </tr>    
    </table>
</div>
<script>
angular.module('myApp',[]).controller('dataCtrl',function($scope)
		{
	
		$scope.names=${categoryWiseList};
		$scope.orderByMe=function(x)
		{
			$scope.myOrderBy=x;
			}
		});
</script>
</body>
</html>
