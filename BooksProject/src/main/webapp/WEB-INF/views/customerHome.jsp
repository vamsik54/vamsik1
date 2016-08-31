<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="customerHomeHeader.jsp"%>
<% 
 response.setHeader("pragma", "no-cache");
 response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
 response.setHeader("Expires", "0");
 %>
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
    <th>Details</th>
    
    </tr>
        <tr ng-repeat="resource in names | filter:search">
             <td>{{resource.itemId}}</td>
            <td>{{resource.itemName}}</td>
            <td>{{resource.description}}</td>
            <td>{{resource.category}}</td>
            <td>{{resource.price}}</td>
            <td><img src="resources/images/{{resource.itemId}}.jpg" style="width:100px;height:100px;"/></td>
            <td><a href="viewSelectedItem?id={{resource.itemId}}">View Product Details</a></td>
           
           
        </tr>    
    </table>
</div>
<script>
angular.module('myApp',[]).controller('dataCtrl',function($scope)
		{
	
		$scope.names=${items};
		$scope.orderByMe=function(x)
		{
			$scope.myOrderBy=x;
			}
		});
</script>
<%@include file="footer.jsp"%>