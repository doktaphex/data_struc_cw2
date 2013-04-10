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

<% String pageName="contact"; %>
<!DOCTYPE html>    
<html lang="en">
<head>
    <meta charset=utf-8>
        <script type="text/javascript" src="js/contact.js"></script>
	<script type="text/javascript" src="js/forceHTML5IE.js"></script>
    <link href="css/reset.css" type="text/css" rel="stylesheet">
    <link href="css/main.css" type="text/css" rel="stylesheet" media="all">
    <title>Hungry Joe's</title>
</head>
<body id="body">
    <div id="site">
    <%@ include file="/fragments/header.jspf" %>
    <article id="main_art">
    <form id="form" action="ContactServlet" name="contact_Form" onsubmit="return(validate());">
	<% if (validUser == null){%>
	<h1 id="h1_con">Log in to send Hungry Joe's a message..!</h1>
	<%} else {%>
            <h1 id="h1_con">Say Hello..!</h1>
            <fieldset id="inputs">
                <input name="Uname" id="uname" type="text" placeholder="Name" autofocus maxlength="40">   
                <input name="Email" id="email" type="text" placeholder="Email" maxlength="40">
		<textarea name="Message" id="message" placeholder="...What you gonna say..?" maxlength="200"></textarea>
            </fieldset>
            <fieldset id="message_actions">
		<input type="submit" id="submit_message" value="Send">
            </fieldset>
        </form> 
    <%}%>
    </article>
    <%@ include file="/fragments/footer.jspf" %>
    </div>
</body>

</html>