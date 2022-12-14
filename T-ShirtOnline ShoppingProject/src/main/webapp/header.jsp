<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>


<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="Index.jsp">Shirt Buy</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="Home.jsp"> <span class="fa fa-home"></span> Home <span class="sr-only">(current)</span></a>
      </li> 
      <li class="nav-item active">
        <a class="nav-link" href="AboutUs.jsp"><span class="fa fa-group"></span> About Us</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="ContactUs.jsp"><span class="fa fa-phone"></span> Contact Us</a>
      </li>
       <li class="nav-item active">
        <a class="nav-link" href="Cart.jsp"><span class="fa fa-shopping-cart"></span> Cart<span class="badge badge-danger px-1">${cart_List.size()}</span></a>
      </li>
 <%--     <% 
      if (uname!=null){%> --%>
<%--    	  <li class="nav-item active">
          <a class="nav-link" href="order.jsp"><span class="fa fa-cart-plus"></span> Order</a>
        </li>--%> 
        <li class="nav-item active">
          <a class="nav-link" href="LogoutServlet"><span class="fa fa-sign-outs"></span> LogOut</a>
        </li>
    	  
<%--      <%}else{%> --%>
    	  <li class="nav-item active">
          <a class="nav-link" href="Login.jsp"><span class="	fa fa-user-circle"></span> Login</a>
        </li>
        <li class="nav-item active">
        <a class="nav-link" href="Register.jsp"> <span class="fa fa-smile-o"></span> SignUp</a>
      </li>
      
<%--      <%}
      %>   --%>
     
       
    </ul>
  </div>
</nav>
</body>
</html>