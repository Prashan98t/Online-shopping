<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<main class="primary-background  banner-background"  style="padding-bottom: 80px;">

	<div class="container">
	
	<div class="col-md-6 offset-md-3">
		
		<div class="card">
				<div class="card-header primary-background text-black text-center">
				<p>Register Here</p>
				</div>
				<div class="card-body">
				 
<form action="RegisterServlet" method="POST">
    <div class="form-group">
    <label for="UserName">UserName</label>
    <input name="username" type="text" class="form-control" id="username" placeholder="UserName">
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  
<%--  <div class="form-check">
    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Agree Terms and Condition</label>
  </div> --%>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
			   </div>
			   
				</div>
	</div>	
	
	</div>
	

</main>
</body>
</html>