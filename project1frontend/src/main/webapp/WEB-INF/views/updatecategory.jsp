<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<h2 align="center">Category Page</h2>
	
	<form action="<c:url value ='/updateCategory'/>"  method="post">
		<table align="center">
			<tr>
				<td colspan="2">CategoryInfo</td>
			</tr>
			
			<tr>
				<td>CategoryID</td>
				<td><input type="text" name="catId"
					value="${categorydata.id}" /></td>
			</tr>
			<tr>
				<td>CategoryName</td>
				<td><input type="text" name="categoryname"
					value="${categorydata.categoryname}" /></td>
			</tr>
			<tr>
				<td>CategoryDesc</td>
				<td><input type="text" name="catDesc"
					value="${categorydata.categoryDesc}" /></td>
			</tr>


			<tr>
						<td><input type="submit" name="/updateCategory" value="Update Category" /></td> </tr>
				
			</table>
				</form>
		


	
</body>
</html>
