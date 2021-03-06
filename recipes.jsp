<%@ page contentType="text/html; charset=iso-8859-1" language="java"  import="java.text.*,java.util.*,java.sql.*" errorPage="error.jsp" %>
<%@ include file ="connection.jsp" %>
<%
   String validUser = (String)session.getAttribute("validUser");
   String Email = (String)session.getAttribute("Email");
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
        <form id="search_form" action="results.jsp" name="search_Form">
            <% if (validUser == null){%>
	<h1 id="h1_con">Log in to search Hungry Joe's..!</h1>
	<%} else {%>
	    <h1 id="h1_con">What You Wanna Eat..?</h1>
            <fieldset id="inputs">
                <select name="search" id="search" type="text" placeholder="Search" autofocus>
		    <option value=""></option>
		    <option value="Beef">Beef</option>
		    <option value="Chicken">Chicken</option>
		    <option value="Pork">Pork</option>
		    <option value="Lamb">Lamb</option>
		    <option value="Thai">Thai</option>
		    <option value="Mexican">Mexican</option>
		    <option value="American">American</option>
		    <option value="Viennese">Viennese</option>
		    <option value="French">French</option>
		    <option value="Cajun">Cajun</option>
		    <option value="Moroccan">Moroccan</option>
		    <option value="Indian">Indian</option>
		</select>
            </fieldset>
            <fieldset id="search_actions">
                <input type="submit" id="submit_search" value="Search">
            </fieldset>
	    <%}%>
        </form>
    </article>
    <%@ include file="/fragments/footer.jspf" %>
    </div>
</body>

</html>