<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="error.jsp" %>
<%

/** Jsp membership area - username and password protected .
 */
//The next 4 statements are to prevent the browser from chaching and to avoid the back button //problem 
   //Force caches to obtain a new copy of the page from the origin server
   //response.setHeader("Cache-Control","no-cache"); 
   //Direct caches not to store the page under any circumstance
   //response.setHeader("Cache-Control","no-store"); 
   //Causes the proxy cache to see the page as "stale"
   //response.setDateHeader("Expires", 0); 
   //HTTP 1.0 backward compatibility
   //response.setHeader("Pragma","no-cache"); 

   String validUser = (String)session.getAttribute("validUser");
   String Email = (String)session.getAttribute("Email");
%>

<% String pageName="home"; %>
<!DOCTYPE html>    
<html lang="en">
<head>
    <meta charset=utf-8>
	<script type="text/javascript" src="js/forceHTML5IE.js"></script>
    <link href="css/reset.css" type="text/css" rel="stylesheet">
    <link href="css/main.css" type="text/css" rel="stylesheet" media="all">
    <title>Hungry Joe's</title>
</head>

<body id="body">
    
    <div id="site">
	<%@ include file="/fragments/header.jspf" %>
    <article id="main_art">
        <section id="index_page">
        <h1 id="h1_index">Howdy Folks..!</h1>
        <br>
        <h2 id="h2_index">...Welcome To Hungry Joe's</h2>
        <p id="welcome">Hungry..?  Well you've come to the right place.  Join up and you can search our catalogue of lip-smackingly delicious recipes.<br>
        You're gonna find something delicious to eat, whether you like it spicy or smooth.  We got food from all corners of the world.<br>
        So what the heck are you waiting for..?</p>
        </section>
    </article>
    <%@ include file="/fragments/footer.jspf" %>
    </div>
</body>

</html>