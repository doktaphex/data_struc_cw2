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
   Integer ID = (int)request.getParameter("ID");
%>

<% String pageName="recipes"; %>
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
        <section id="display_page">
	    <h1 id="h1_display">Indian Lamb Chops...</h1>
	    <br>
	    <img id="my_image" src="./images/lamb-chops.jpg" alt="Large picture of current recipe">
        </section>
	<section id="ingredients">
	    <h1 id="h1_ing">Ingredients...</h1>
	    <ul class="list">
		<%@ include file="/fragments/indian-ing.jspf" %>
	    </ul>
	</section>
	</article>
	<article id="method">
	    <h1 id="h1_ing">Lets cook..!</h1>
	    <br>
	    <ol class="list">
		<%@ include file="/fragments/indian-meth.jspf" %>
	    </ol>
	</article>
    <%@ include file="/fragments/footer.jspf" %>
    </div>
</body>

</html>