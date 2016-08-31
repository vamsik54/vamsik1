<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="adminHeader.jsp"%>
<title>Add Item</title>
<style>
table {
    margin-left:23%;
    margin-top:15%;
}

</style>
<form:form action="addProduct" commandName="item" enctype="multipart/form-data">
<table style="width:100%">
	<tr>
		<th>Item Name:</th><td><form:input path="itemName"></form:input><form:errors path="itemName" style="color:blue"></form:errors></td></tr>
	<tr>
		<th>Description:</th><td><form:input path="description"></form:input><form:errors path="description" style="color:blue"></form:errors></td></tr>
	<tr>
		<th>Price:</th><td><form:input path="price"></form:input><form:errors path="price" style="color:blue"></form:errors></td></tr>
	<tr>
		<th>Categories:</th><td><form:select path="category">

<form:option value="Category1">Category1</form:option>
<form:option value="Category2">Category2</form:option>
</form:select>
<tr><td>
	<tr>
		<th>Item Image:</th><td><input type="file" name="file"/></td></tr>
<tr><td><input type="submit" value="AddProduct"/></td></tr>
</table>
</form:form>
<%@include file="footer.jsp"%>