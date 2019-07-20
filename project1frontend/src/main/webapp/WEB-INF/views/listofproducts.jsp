<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FashionHi5</title>
<script type="text/javascript">
$(document).ready(function(){
	var searchCondition='${searchCondition}'
	$('.table').DataTable({
		"lengthMenu":[[5,7,-1],[5,7,"All"]],
	    "oSearch" : {
		"sSearch" : searchCondition
		}
	})
})
</script>
</head>
<body>
LIST OF PRODUCTS
	<div class="container">
	
		<table class="table table-striped" border="1">
			<thead>
				<tr>
			
					<th>Image</th>
					<th>Product Name</th>
					<th>Price</th>
					<th>Supplier</th>
					<th>Category</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<!-- For each object in the list, tr has to be repeated -->
				<!--  items refers to the collection of objects -->
				<!-- var is local variable ,takes objects one by one from the collection -->
				<c:forEach var="p" items="${productsList }">
					<tr>
					   <td><img src="<c:url value='/resources/images/${p.id }.jpg'></c:url>" height="50px" width="50px" alt="Image not available"></td>
						<td>${p.productname }</td>
						<td>${p.price }</td>
						<td>${p.supplier.supplierName }</td>
						<td>${p.category.categoryname }</td>
						<td>
						
						   <c:url value="/all/getproduct/${p.id }" var="viewUrl"></c:url> 
					       <c:url value="/admin/deleteproduct/${p.id }" var="deleteUrl"></c:url>
			               <c:url value="/admin/getupdateform/${p.id }" var="editUrl"></c:url>
							
							<a href="${viewUrl }"><span class="glyphicon glyphicon-info-sign"></span></a>
							<security:authorize access="hasRole('ROLE_ADMIN')">
							<a href="${deleteUrl }"><span class="glyphicon glyphicon-trash"></span></a>
							<a href="${editUrl }"><span class="glyphicon glyphicon-pencil"></span></a>
							</security:authorize>
						 </td>
                              
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
</body>
</html>


