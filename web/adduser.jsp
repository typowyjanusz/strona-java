<%@page import="db.saveUser"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Logowanie</title>
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
                                    out.print("<li><a href=\"typenews.jsp\">Napisz news</a></li>");
                                    out.print("<li><a href=\"logout.jsp\">Wyloguj</a></li>");
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
            </div> <!-- /#adbox -->
	<div id="contents">
		<div class="body">
		
			<div id="main">
                            
                            
                            
                         
                            
                            <jsp:useBean id="object" class="db.user"/>  
        <jsp:setProperty property="*" name="object"/> 
        <%
        String errorMsg=saveUser.validation(object);
        if(errorMsg!=null) {
            out.print(errorMsg);
        }
        else {
            int registryStatus=saveUser.register(object);
            if(registryStatus==1) {
              out.print("Zarejestrowano!");  
            }
            else {
                out.print("Podany login już istnieje!"); 
            }
        }
        %>
				
				
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
