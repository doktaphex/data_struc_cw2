<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ include file ="connection.jsp" %>
<%

/** Jsp that processes a login form containing
 *  username and password .
 */
//initialise RequestDisptacher object; set forward to login page by default
RequestDispatcher rd = request.getRequestDispatcher("login.jsp");

//get the user information from the form
String username = request.getParameter("Uname");
String password = request.getParameter("Pword");
String email = request.getParameter("Email");

String sqlQuery;
PreparedStatement statement;
if (username != null && password != null && !username.trim().equals("") && !password.trim().equals("") && email != null && !email.trim().equals("")){
   
   sqlQuery = "SELECT * FROM users where uname = ? ";
   statement = con.prepareStatement(sqlQuery);
   statement.setString(1,username);
   ResultSet results = statement.executeQuery();
   if(results.next()){
	 //Query returns 1 record if the user already exists
    request.setAttribute("Error", "Username already exist"); 
    rd = request.getRequestDispatcher("register.jsp");
   
	}
	else{
      sqlQuery = "INSERT INTO users (uname, pword, email, userType) values(?,?,?,0)";
      statement = con.prepareStatement(sqlQuery);
      statement.setString(1,username);
	  statement.setString(2,password);
	  statement.setString(3,email);
	 
	  statement.executeUpdate();
	 
}
}else{
     request.setAttribute("Error", "Some of the required fields are empty!"); 
     rd = request.getRequestDispatcher("register.jsp");
}
con.close();
//finally forward to LoginForm.jsp or RegisterForm.jsp
rd.forward(request,response);
%>
