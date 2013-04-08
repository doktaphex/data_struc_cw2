<%@ page contentType="text/html; charset=windows-1256" language="java"  import="java.sql.*" errorPage="error.jsp" %>
<%@ include file ="connection.jsp" %>
<%
  
/** Jsp that processes a login form containing
 *  username and password .
 */
//initialise RequestDisptacher object; set forward to Member page by default
RequestDispatcher rd = request.getRequestDispatcher("index.jsp");


String username = request.getParameter("Uname");
String password = request.getParameter("Pword");

if (username != null && password != null && !username.trim().equals("") && !password.trim().equals("")){
		//check whether the user have the correct username and password
		String sqlQuery = "SELECT * FROM users where uname = ? and pword = ?";
		PreparedStatement statement = con.prepareStatement(sqlQuery);
		statement.setString(1,username);
		statement.setString(2,password);
		
		ResultSet results = statement.executeQuery();
		//if the resultSet has a record returned it means that there is such user with the //entered password
		if(results.next()){
			
				//set the session attributes
				session.setAttribute("validUser", results.getString("Uname"));
				session.setAttribute("Email", results.getString("email"));
				session.setAttribute("userType", results.getInt("userType"));
		}else{
			 //no record some login error. send to login error	 
			 request.setAttribute("Error","Invalid login username or password");
			 rd = request.getRequestDispatcher("error.jsp");
		}
}    

con.close();
//finally forward to LoginForm.jsp or Member.jsp
rd.forward(request,response);
%>

      
