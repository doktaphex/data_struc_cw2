<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="error.jsp" %>
<%

/** Jsp membership area - username and password protected .
 */
//The next 4 statements are to prevent the browser from chaching and to avoid the back button //problem 
   //Force caches to obtain a new copy of the page from the origin server
   response.setHeader("Cache-Control","no-cache"); 
   //Direct caches not to store the page under any circumstance
   response.setHeader("Cache-Control","no-store"); 
   //Causes the proxy cache to see the page as "stale"
   response.setDateHeader("Expires", 0); 
   //HTTP 1.0 backward compatibility
   response.setHeader("Pragma","no-cache"); 

   String Error = (String)request.getAttribute("Error");
%>

 <!DOCTYPE>
	  <HTML>
      <HEAD>
	   <meta http-equiv="Pragma" content="no-cache">
      <meta http-equiv="Expires" content="-1">
      <TITLE> Member Area</TITLE>
      </HEAD>
       <BODY "#FDF5E6">
	   <h1><%= Error%></h1>
     </BODY>
 </HTML>     
   