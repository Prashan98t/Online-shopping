<%@page import="com.ShirtBuy.model.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ShirtBuy.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.ShirtBuy.connection.DbCon"%>
<%@page import="com.ShirtBuy.dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
ProductDao pd=new ProductDao(DbCon.getConnection());
List<Product> products=pd.getAllProducts();

ArrayList<Cart> cart_list =(ArrayList<Cart>) session.getAttribute("cart-list");
if(cart_list!=null){
	request.setAttribute("cart_List",cart_list);	
}
%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="card-header my-3">All Products</div>
		<div class="row">
		<%
			if(!products.isEmpty()){
				for(Product p:products){%>
					<div class="col-md-3 my-3">
					<div class="card w-100" style="width: 18rem;">
						<img class="card-img-top" src="product images/<%=p.getImage() %>" alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title"><%=p.getName() %></h5>
							<h6 class="price">Price:Rs.<%=p.getPrice() %></h6>
							<h6 class="category">Category:<%=p.getCategory() %></h6>
							<div class="mt-3 d-flex justify-content-between">
								<a href="AddToCartServlet?id=<%= p.getId() %>" class="btn btn-dark">Add to Cart</a>
								<a href="#" class="btn btn-primary">Buy Now</a>
							</div>
						</div>
					</div>
				</div>			
				<%}
			}
		%>
		</div>
	</div>
</body>
</html>