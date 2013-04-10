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

<!DOCTYPE html>    
<html lang="en">
<head>
    <meta charset=utf-8>
	<script type="text/javascript" src="js/forceHTML5IE.js"></script>
    <link href="css/reset.css" type="text/css" rel="stylesheet">
    <link href="css/main.css" type="text/css" rel="stylesheet" media="all">
    <title>Hungry Joe's</title>
</head>

<body id="error_site">
 <h1 id="error_head">Golly bob darn it...<br>...Hungry Joe done gone messed somethin' up..!</h1>
 <h2 id="er_head">...Let's see what happened now..!</h2>
 <h3 id="e_head"><%= Error%></h3>
 <footer id="e_footer">
        &copy;2013 Jozef Kruszynski.
        <br>
        <a href="http://www.w3.org/html/logo/">
	<img src="http://www.w3.org/html/logo/badge/html5-badge-h-solo.png" width="30" height="30" alt="HTML5 Powered" title="HTML5 Powered">
	</a>
    </footer>
</body>
</html>