package com.upes;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		//out.println("Hello");
		
		String uname = request.getParameter("name");
		String pass = request.getParameter("pass");
		if(uname.equalsIgnoreCase("Ojasvi") && pass.equals("ojasvi"))
		{
			out.print("Success");
		}
		else
		{
			out.print("Username or password is wrong");
		}
	}
}
