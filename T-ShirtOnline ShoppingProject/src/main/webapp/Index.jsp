<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Shirt Buy</title>
	<style>
		.banner-background{
		clip-path:polygon(0 0, 100% 0, 100% 89%, 45% 84%, 0 94%, 0% 50%);}
	</style>
 
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	
	<!-- banner -->
	
	<div class="container-fluid p-0 m-0">
	
		<div class="jumbotron primary-background text-Black banner-background">
			<div class="container">
				<h3 class="display-3">Welcome to Shirt_Buy-website </h3>
				<p>Welcome to Shirt Buy   ! ! !</p>
				<p>Thanks for visiting to Shirt Buy Website</p>
				
				<a href=Register.jsp class="btn btn-outline-light btn-lg text-Black"><span class="fa fa-user-plus"></span>Sign up</a>
				<a href="Login.jsp" class="btn btn-outline-light btn-lg text-Black"><span class="fa fa-user-circle fa-spin"></span>Login</a>
		</div>
	</div>
	
</div>
</body>
</html>