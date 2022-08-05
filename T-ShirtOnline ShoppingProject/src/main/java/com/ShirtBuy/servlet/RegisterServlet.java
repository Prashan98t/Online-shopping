package com.ShirtBuy.servlet;


import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//Right click on project -> build path -> configure build path -> libraries tab
//add external jar -> select jar and hit enter.

@WebServlet(urlPatterns = "/RegisterServlet")
public class RegisterServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{	
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		
		String url="jdbc:mysql://localhost:3306/mydb";
		String user="root";
		String Password="root@123";
		
		Connection con=null;
		
		String username=req.getParameter("username");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		Pattern p=Pattern.compile("(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[@#]).{6,18}");
		Matcher m=p.matcher(password);
	
		if(!m.find())
		{
			out.println("<script>"
					+ "alert('Password is weak!!!');"
					+ "location.href='Register.jsp';"
					+ "</script>");
		}
		
		try 
		{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url,user,Password);
			
		PreparedStatement ps= con.prepareStatement("insert into users values(?,?,?)");
			
		ps.setString(1, username);
		ps.setString(2, email);
		ps.setString(3, password);
		ps.executeUpdate();
		
			out.print("You are successfully registered...");  
			      
		
			out.println("<script>"
					+ "alert('User Registered successfully!!!');"
					+ "location.href='Login.jsp';"
					+ "</script>");
		}
		catch (Exception e) 
		{
			out.println("<script>"
					+ "alert("+e+");"
					+ "location.href='Register.jsp';"
					+ "</script>");
		}
	}
}

