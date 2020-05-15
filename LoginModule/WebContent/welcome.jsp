<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // this is for cache control, 
																					//to avoid entering into secure pages 
																					//using back button 
		
		if(session.getAttribute("username")==null)			// if user doesn't provide username and just simply types in url..
		{													// so that he can not login secure pages and redirect to login page.
			response.sendRedirect("login.jsp");	
		}
	%>
	
	<h1> Welcome ${username} </h1><br>
	
	<p>
	Here is a video on <a href="videos.jsp">Linked Lists</a> from GeeksforGeeks.<br>
	Click <a href="https://github.com/OjasviChauhan">here</a> to visit my GitHub Profile.<br>
	Click <a href="https://www.linkedin.com/in/ojasvi-chauhan-852706173/">here</a> to visit my LinkedIn Profile.
	</p>
	
	<form action="Logout">
		<input type="submit" value="Logout">	
	</form>
	
</body>
</html>