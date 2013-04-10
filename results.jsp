<%@ page contentType="text/html; charset=iso-8859-1" language="java"  import="java.text.*,java.util.*,java.sql.*" errorPage="error.jsp" %>
<%@ include file ="connection.jsp" %>
<%

RequestDispatcher rd = request.getRequestDispatcher("results.jsp");
  String search = request.getParameter("search");
  PreparedStatement statement = null;
  ResultSet resultSet = null;
  if (search != null){
       statement  = con.prepareStatement("select * from recipes where cuisine&protein like '%"+search+"%'");	
	   resultSet = statement.executeQuery();
           }
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
        <form id="search_form" name="search_Form">
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
    <article id="display">
	<table id="results">
            <h1 id="s_head">How's about these..?</h1>
	    <tr id="t_head">
		<td>Recipe:</td>
		<td>Cuisine Type:</td>
		<td>Main Ingredient:</td>
		<td></td>
	    </tr>
	    <% while (resultSet.next()) { %>
	    <tr id="t_results">
		<td style="vertical-align:middle"><%= resultSet.getString("recipeName")%></td>
		<td style="vertical-align:middle"><%= resultSet.getString("cuisine")%></td>
		<td style="vertical-align:middle"><%= resultSet.getString("protein")%></td>
		<td><a href="display.jsp" onclick="<% request.setParameter(resultSet.getInt("ID")); %>"><img style="border-radius:100px;
                                border:10px solid;
                                border-color:grey;
                                -webkit-transform:rotate(-3deg);
                                -webkit-box-shadow:4px 4px 4px black;
                                -moz-transform:rotate(-3deg);
                                -moz-box-shadow:4px 4px 4px black;
                                -o-transform:rotate(-3deg);
                                -o-box-shadow:4px 4px 4px black;
                                -transform:rotate(-3deg);
                                -box-shadow:4px 4px 4px black;"
                                src="./images/<%= resultSet.getString("pic")%>" height="150" width="150"></a></td>
	    </tr>
	    <%}con.close();%>
	</table>
    </article>
    <%@ include file="/fragments/footer.jspf" %>
    </div>
</body>

</html>