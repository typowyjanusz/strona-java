
<%@page import="java.sql.*"%>
<%@page import="db.connectionDB"%>  

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Panel Administracyjny</title>
	<link rel="stylesheet" href="/strona/css/style.css" type="text/css" charset="utf-8" />	
</head>
    <body>
        
        <div id="header">
		<a href="index.jsp" id="logo"><img src="/strona/images/logo.png" alt="LOGO" /></a>
		<div id="navigation">
			<ul>
				<li><a href="/strona">Home</a></li>
                                <li class="first selected"><a href="adminusers.jsp">Użytkownicy</a></li>
				<li><a href="adminnews.jsp">Oczekujące newsy</a></li>
                                <li><a href="adminpanel.jsp">Panel administracyjny</a></li>

			</ul>
                </div>
        </div>
                
            <div id="adbox">
		
		<div class="footer">

			<span class="bottom-shadow"></span>
		</div>
            </div> <!-- /#adbox -->
	<div id="contents">
		<div class="body">
		
			<div id="main">

                            <span>Zarządzanie użytkownikami</span>
				
				<p>Lista użytkowników:</p>
                                
                                <p><%
        Connection connectionStatus=connectionDB.getConnection(); 
        Statement statement = connectionStatus.createStatement();
        ResultSet resultset = statement.executeQuery("select nickname,registry_date from webpage.user where nickname not like 'admin';");
        %>
            <% while(resultset.next()){ %>
                <%= resultset.getString(1) %>   - zarejestrowany od:
                <%= resultset.getString(2) %>
                <br>           
                <% } %> </p>
			</div>
		</div>
	</div> <!-- /#contents -->
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
