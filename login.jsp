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

<% String pageName="login"; %>
<!DOCTYPE html>    
<html lang="en">
<head>
    <meta charset=utf-8>
	<script type="text/javascript" src="js/login.js"></script>
	<script type="text/javascript" src="js/forceHTML5IE.js"></script>
    <link href="css/reset.css" type="text/css" rel="stylesheet">
    <link href="css/main.css" type="text/css" rel="stylesheet" media="all">
    <title>Hungry Joe's</title>
</head>

<body id="body">
    
    <div id="site">
    <%@ include file="/fragments/header.jspf" %>
    <article id="main_art">
    <form id="form" action="login_action.jsp" name="login_Form" onsubmit="return(validate());">
            <h1 id="h1_log">Come On In..!</h1>
            <fieldset id="inputs">
                <input name="Uname" id="uname" type="text" placeholder="Username" autofocus>   
                <input name="Pword" id="pword" type="password" placeholder="Password">
            </fieldset>
            <fieldset id="actions">
                <input type="submit" id="submit" value="Log in">
                <a href="forgot.jsp" id="forgot" <% if(pageName=="forgot"){%>class="currentPage"<%}; %>>Forgot your password?</a>
		<a href="register.jsp" id="reg" <% if(pageName=="register"){%>class="currentPage"<%}; %>>Register</a>
            </fieldset>
        </form>
    </article>
    <%@ include file="/fragments/footer.jspf" %>
    </div>
</body>

</html>