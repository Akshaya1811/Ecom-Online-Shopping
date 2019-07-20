<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=ISO-8859-1>
<title>Categories</title>
</head>
<body>

	<h2 align="center">Category Page</h2>

	<form action="<c:url value ='/InsertCategory'/>"  method="post">
	

			<table align="center">
				<tr>
					<td colspan="2">Category Info</td>
				</tr>
				<tr>
					<td>Category Name</td>
					<td><input type="text" name="categoryname" /></td>
				</tr>
				<tr>
					<td>Category Desc</td>
					<td><input type="text" name="catDesc" /></td>
				</tr>
				<tr>
					<td colspan="2"><center>
							<input type="submit" name="/InsertCategory" value="Save Category" />
						</center>
						</td>
				</tr>

			</table>
			</br></br>
			
			<table align="center" border="1">
				<tr>
					<td>Category ID</td>
					<td>Category Name</td>
					<td>Category Desc</td>
					<td>Operation</td>
				</tr>
		
				<c:forEach items="${categoryList}" var="category">
					
				<tr>
						<td>${category.id}</td>
						<td>${category.categoryname}</td>
						<td>${category.categoryDesc}</td>
						<td>
						<a href="<c:url value="/editCategory/${category.id}"/>"class="btn btn-success">Edit</a>
						<a href="<c:url value="/deleteCategory/${category.id}"/>"class="btn btn-danger">Delete</a>
						</td>
					</tr>
				</c:forEach>

			</table>

		</form>
</body>	
					
</html>