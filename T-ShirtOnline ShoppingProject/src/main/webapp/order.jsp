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
<title>Order Page</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

</body>
</html>