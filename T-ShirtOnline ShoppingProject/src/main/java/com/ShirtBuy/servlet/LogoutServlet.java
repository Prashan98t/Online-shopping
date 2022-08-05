package com.ShirtBuy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try(PrintWriter out=resp.getWriter()){
			if(req.getSession().getAttribute("uname")!=null) {
				req.getSession().removeAttribute("uname");
				resp.sendRedirect("Login.jsp");
			}else {
				resp.sendRedirect("Index.jsp");
			}
		}
	}
	
	

}
