package com.ShirtBuy.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns="/LoginServlet")
public class LoginServlet extends HttpServlet
{

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.service(arg0, arg1);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
	
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		

		String url="jdbc:mysql://localhost:3306/mydb";
		String user="root";
		String pass="root@123";
		
		Connection con=null;
		
		resp.setContentType("text/html");
		PrintWriter pw=resp.getWriter();
		
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection(url,user,pass);
		System.out.println("connection succesfully");
	PreparedStatement ps=con.prepareStatement("select * from users where username=? and password=?");
	
	ps.setString(1,username);
	ps.setString(2,password);
	ResultSet rs=ps.executeQuery();

	if(rs.next())
	{
		HttpSession hs=req.getSession();
		hs.setAttribute("uname",username);
		
		pw.print("<script>"+"alert('welcome"+username+"');"+"location.href='Index.jsp'"+"</script>");
		pw.print("Registered Succesfully!!");
	}
	else
	{
		pw.print("<script>"+"alert('Incorrect username or password!');"+"location.href='Login.jsp'"+"</script>");
		
	}
}
catch(Exception e)
{
	System.out.println(e);
	pw.print("<script>"+"alert("+e+");"+"</script>");
	
}
}
}
	