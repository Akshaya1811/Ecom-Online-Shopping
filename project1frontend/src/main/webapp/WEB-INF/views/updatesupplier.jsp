<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<h2 align="center">Supplier Page</h2>
	
	<form action="<c:url value ='/UpdateSupplier'/>"  method="post">
		<table align="center">
			<tr>
				<td colspan="2">SupplierInformation</td>
			</tr>
			<tr>
				<td>SupplierID</td>
				<td><input type="text" name="supId"
					value="${supplier.supplierId}" /></td>
			</tr>
			<tr>
				<td>SupplierName</td>
				<td><input type="text" name="supName"
					value="${supplier.supplierName}" /></td>
			</tr>
			<tr>
				<td>SupplierDesc</td>
				<td><input type="text" name="supDesc"
					value="${supplier.supplierDesc}" /></td>
			</tr>

			<tr>
						<td><input type="submit" value="Update Supplier" /></td>
              </tr>
				
		</table>
      </form>

	
</body>
</html>
