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
                <li id="home"><a href="index.jsp">home</a></li>
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
        <section id="display_page">
	    <h1 id="h1_display">Indian Lamb Chops...</h1>
	    <br>
	    <img id="my_image" src="./images/lamb-chops.jpg" alt="Large picture of current recipe">
        </section>
	<section id="ingredients">
	    <h1 id="h1_ing">Ingredients...</h1>
	    <ul class="list">
		<li>8 double-boned lamb best end chops - you will need to ask your butcher for these</li>
		<li>juice of 1 lime</li>
		<li>3 tbsp malt vinegar</li>
		<li>1 tsp chilli powder</li>
		<li>125ml mustard oil or vegetable oil, plus extra for frying</li>
		<li>85g gram flour (chickpea flour)</li>
		<li>4 star anise toasted in a hot pan</li>
		<li>3 green chillies</li>
		<li>8 garlic cloves</li>
		<li>1 small papaya , peeled, seeded and chopped</li>
	    </ul>
	</section>
	</article>
	<article id="method">
	    <h1 id="h1_ing">Lets cook..!</h1>
	    <br>
	    <ol class="list">
		<li>Marinate the chops in the lime juice, vinegar, chilli powder and a pinch of salt while you make the rest of the marinade.</li><br>
		<li>Heat 100ml of the oil in a small saucepan and add the gram flour, stirring continuously for a minute or two until the flour forms a smooth sandy paste and you begin to smell a nutty aroma.</li><br>
		<li>Transfer the paste to a bowl and leave to cool.</li><br>
		<li>Crush the star anise using a pestle and mortar, then tip into a food processor with the chillies, garlic, papaya and the remaining oil and blend to a smooth paste.</li><br>
		<li>Mix both pastes over the marinated meat and refrigerate for a minimum of 4 hours.</li><br>
		<li>To cook the chops, preheat the oven to fan 180C/conventional 200C/gas 6.</li><br>
		<li>Lift the chops out of the marinade and wipe off any excess so the chops are just lightly coated.</li><br>
		<li>Heat 1 tbsp oil in a large frying pan and fry the chops in batches for a couple of minutes on each side until browned.</li><br>
		<li>Transfer to a roasting tray and roast for 10-20 minutes depending on how pink you like your lamb. Serve the chops with mint sauce and winter salad.</li>
	    </ol>
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