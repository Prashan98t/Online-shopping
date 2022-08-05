<%@page import="com.ShirtBuy.connection.DbCon"%>
<%@page import="com.ShirtBuy.dao.ProductDao"%>
<%@page import="java.util.List"%>
<%@page import="com.ShirtBuy.model.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
ArrayList<Cart> cart_list =(ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;
if(cart_list!=null){
	ProductDao pDao = new ProductDao(DbCon.getConnection());
	cartProduct = pDao.getCartProducts(cart_list);
	double total =pDao.getTotalCartPrice(cart_list);
	request.setAttribute("cart_list", cart_list);
	request.setAttribute("total",total);
	
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart page</title>
<jsp:include page="header.jsp"></jsp:include>
<style type="text/css">
.table tbody td{
	vartical-align: middle;
}

.btn-incre, .btn-decre{
	box-shadow: none;
	font-size:25px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="d-flex py-3">
			<h3>Total Price:Rs. ${ (total>0)?total:0 }</h3>
			<a class="mx-3 btn btn-primary" href="#">Check Out</a>
		</div>
		<table class="table table-loght">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Category</th>
					<th scope="col">Price</th>
					<th scope="col">Buy Now</th>
					<th scope="col">cancel</th>
				</tr>
			</thead>
			<tbody>
			<% 
			if(cart_list !=null){
			for(Cart c:cartProduct){%>
				<tr>
				<td><%= c.getName() %></td>
				<td><%= c.getCategory() %></td>
				<td><%= c.getPrice() %></td>
				<td>
					<form action="" method="post" class="form-inline">
						<input type="hidden" name="id" value="<%= c.getId() %>" class="form-input">
						<div class="from-group d-flex justify-content-between">
						<a class="btn btn-sm btn-decre" href="QuantityIncDecServlet?action=dec&$id=<%=c.getId()%>"><i class="fas fa-minus-square"></i></a>
							 <input type="text" name="quantity" class="form-control" value="<%= c.getQuantity() %>" readonly>
								<a class="btn btn-sm btn-incre" href="QuantityIncDecServlet?action=inc&$id=<%=c.getId()%>"><i class="fas fa-plus-square"></i></a>
						</div>
					</form>
				</td>
				<td><a class="btn btn-sm btn-danger" href="RemoveFromCartServlet?id=<%= c.getId() %>">Remove</a></td>
			</tr>
					<%}
			}
			%>
			</tbody>
		</table>
	</div>
</body>
</html>