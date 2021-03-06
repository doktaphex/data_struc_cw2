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

<% String pageName="forgot"; %>
<!DOCTYPE html>    
<html lang="en">
<head>
    <meta charset=utf-8>
	<script type="text/javascript" src="js/forgot.js"></script>
	<script type="text/javascript" src="js/forceHTML5IE.js"></script>
    <link href="css/reset.css" type="text/css" rel="stylesheet">
    <link href="css/main.css" type="text/css" rel="stylesheet" media="all">
    <title>Hungry Joe's</title>
</head>

<body id="body">
    
    <div id="site">
    <%@ include file="/fragments/header.jspf" %>
    <article id="main_art">
    <form id="form" name="forgot_Form" onsubmit="return(validate());">
            <h1 id="h1_forgot">You Forgot your Password..!<br>...You're Kidding Right..?</h1>
            <fieldset id="inputs">
                <input name="Uname" id="uname" type="text" placeholder="Username" autofocus>   
                <input name="Email" id="email" type="text" placeholder="Email">
            </fieldset>
            <fieldset id="forgot_actions">
                <input type="submit" id="submit_forgot" value="Send">
            </fieldset>
        </form>
    </article>
    <%@ include file="/fragments/footer.jspf" %>
    </div>
</body>

</html>