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
    <header id="header">
        <hgroup>
            <h1 id="main_head">HUNGRY JOE'S</h1>
            <h2 id="q_head">...lets eat..!</h2>
        </hgroup>
        <nav id="nav">
            <ul>
                <li id="home"><a href="display.jsp">home</a></li>
                <li id="recipes"><a href="recipes.jsp">recipes</a></li>
                <li id="contact"><a href="contact.jsp">contact</a></li>
            </ul>
        </nav>
        <nav id="nav_log">
            <ul>
		<li id="log"><% if (validUser == null){%><a href="login.jsp">log in</a><%} else {%><a href="logout.jsp"><%= Email%></a><%}%></li><br>
                <li id="log"><% if (validUser == null){%><a href="register.jsp">register</a><%} else {%><a href="logout.jsp">log out</a><%}%></li>
            </ul>
        </nav>
    </header>
    <article id="main_art">
    <form id="form" action="login_action.jsp" name="login_Form" onsubmit="return(validate());">
            <h1 id="h1_log">Come On In..!</h1>
            <fieldset id="inputs">
                <input name="Uname" id="uname" type="text" placeholder="Username" autofocus>   
                <input name="Pword" id="pword" type="password" placeholder="Password">
            </fieldset>
            <fieldset id="actions">
                <input type="submit" id="submit" value="Log in">
                <a href="forgot.jsp" id="forgot">Forgot your password?</a>
		<a href="register.jsp" id="reg">Register</a>
            </fieldset>
        </form>
    </article>
    <footer id="footer">
        &copy;2013 Jozef Kruszynski.
        <br>
        <a href="http://www.w3.org/html/logo/">
	<img src="http://www.w3.org/html/logo/badge/html5-badge-h-solo.png" width="30" height="30" alt="HTML5 Powered" title="HTML5 Powered">
	</a>
    </footer>
    </div>
</body>

</html>