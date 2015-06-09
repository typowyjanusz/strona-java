<%@page import="db.identifyUser"%> 
<%@page import="db.news"%>
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
                            
                            
                            
                         
                            
   
        
        
        <%String loginName = request.getParameter("logname");%>
        <jsp:useBean id="object" class="db.user"/>  
        <jsp:setProperty property="*" name="object"/>  
        <%
        String loginStatus=identifyUser.logIn(object);
        out.print(loginStatus);
        if(loginStatus.equals("Zalogowano!")){
            session.setAttribute("sessionName",loginName);
            out.print(" Witaj " + loginName);
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
