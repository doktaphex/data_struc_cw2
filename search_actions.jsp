<%@ page contentType="text/html; charset=windows-1256" language="java"  import="java.sql.*" errorPage="error.jsp" %>
<%@ include file ="connection.jsp" %>
<%
  
/** Jsp that processes a login form containing
 *  username and password .
 */
//initialise RequestDisptacher object; set forward to Member page by default
RequestDispatcher rd = request.getRequestDispatcher("results.jsp");


String search = request.getParameter("search");

if (search != null && !search.trim().equals("")){
		//check whether the user have the correct username and password
		String sqlQuery = "SELECT * FROM recipes where cuisine&protein&recipeName like '%"+search+"%'";
		PreparedStatement statement = con.prepareStatement(sqlQuery);
		statement.setString(1,search);
                
		ResultSet resultSet = statement.executeQuery();
		//if the resultSet has a record returned it means that there is such user with the //entered password
		if(resultSet.next()){
			
				//set the session attributes
		}else{
			 //no record some login error. send to login error	 
			 request.setAttribute("Error","You dummy..! You put the wrong username or password in the box..! Go on now, go back and try again..!");
			 rd = request.getRequestDispatcher("error.jsp");
		}
}    

con.close();
//finally forward to LoginForm.jsp or Member.jsp
rd.forward(request,response);
%>

      
