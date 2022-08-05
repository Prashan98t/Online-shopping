<%@page import="com.ShirtBuy.model.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
ArrayList<Cart> cart_list =(ArrayList<Cart>) session.getAttribute("cart-list");
if(cart_list!=null){
	request.setAttribute("cart_List",cart_list);	
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<main class="d-flex align-items-center" style="height: 70vh">
		<div class="container">
			<div class="row">
				<div class="col-md-4 offset-md-4">

					<div class="card">
						<div class="card-header primary-background text-black text-center">
							<p>Login Here</p>
						</div>
						<div class="card-body">
							<form action="LoginServlet" method="GET">
								<div class="form-group">
									<label for="UserName">UserName</label> <input name="username"
										type="text" class="form-control" id="username"
										placeholder="UserName">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> <input
										name="password" type="password" class="form-control"
										id="exampleInputPassword1" placeholder="Password" required>
								</div>
								<%--  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div> --%>
								<button type="submit" class="btn btn-primary">Submit</button>
							</form>

						</div>

					</div>

				</div>
			</div>



		</div>
	</main>

</body>
</html>