<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%
//The next 4 statements are to prevent the browser from chaching and to avoid the back button //problem 
   //Force caches to obtain a new copy of the page from the origin server
   response.setHeader("Cache-Control","no-cache"); 
   //Direct caches not to store the page under any circumstance
   response.setHeader("Cache-Control","no-store"); 
   //Causes the proxy cache to see the page as "stale"
   response.setDateHeader("Expires", 0); 
   //HTTP 1.0 backward compatibility
   response.setHeader("Pragma","no-cache"); 


//Invalidate the session i.e. logout the user
session.removeAttribute("validUser");
session.removeAttribute("firstName");
session.removeAttribute("lastName");
session.invalidate();
//initialise RequestDisptacher object; set forward to Member page by default
RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
rd.forward(request,response);
%>
 

 