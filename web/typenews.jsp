<%-- 
    Document   : typenews
    Created on : 2015-06-05, 19:26:53
    Author     : Bany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Napisz</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" charset="utf-8" />	
    </head>
    <body>
        <div id="header">
		<a href="index.jsp" id="logo"><img src="images/logo.png" alt="LOGO" /></a>
		<div id="navigation">
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="registration.jsp">Rejestracja</a></li>
				<% if(session.getAttribute("sessionName")==null){
                                out.print("<li><a href=\"login.jsp\">Zaloguj</a></li>");
                                        } %>
                                
                                <% if(session.getAttribute("sessionName")!=null){
                                    %> <li class="first selected"> <% out.print("<a href=\"typenews.jsp\">Napisz news</a></li>");
                                    out.print("<li><a href=\"logout.jsp\"> Wyloguj </a></li>");
                                    if(session.getAttribute("sessionName").equals("admin")){
                                        out.print("<li><a href=\"adminpanel/adminpanel.jsp\">Panel administratora</a></li>");
                                    }
                                } %>
			</ul>
                </div>
        </div>
                
            <div id="adbox">
		
		<div class="footer">

			<span class="bottom-shadow"></span>
		</div>
            </div>
        
        <div id="contents">
		<div class="body">
		
			<div id="main">
                            <div id="window">
        <form action="addnews.jsp">
            <input type="text" name="newsTitle" maxlength="20" required value="Tytuł..." onclick="this.value=''"/><br/>
            <textarea name="newsContent" rows="30" cols="50">Treść...</textarea><br/>
            <input type="text" name="authorName" maxlength="20" required value="Imię i nazwisko autora..." onclick="this.value=''"/><br/>
            <input type="submit" value="Wyślij"/>
        </form>
                                
                            </div>
                            </div>
                    </div>
            </div>
                        
                        
    	<div id="footer">
		<ul class="contacts">
			<h3>Informacje</h3>
			<li><span>Prowadzący</span><p>: mgr inż. Rafał Jędryka</p></li>
			<li><span>Wykonanie</span><p>: Tomasz Żołądź</p></li>
			<li><span> </span><p>: Maciej Szarek</p></li>
		</ul>
		
		
            <span class="footnote">T.Żołądź &AMP M.Szarek &copy</span>
	</div>
    
    <br>
    </body>
</html>
