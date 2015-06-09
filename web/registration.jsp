

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Rejestracja</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" charset="utf-8" />	
</head>
    <body>
        
        <div id="header">
		<a href="index.jsp" id="logo"><img src="images/logo.png" alt="LOGO" /></a>
		<div id="navigation">
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li class="first selected"><a href="registration.jsp">&nbspRejestracja</a></li>
				<% if(session.getAttribute("sessionName")==null){
                                out.print("<li><a href=\"login.jsp\"> Zaloguj </a></li>");
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
                            <div id="window">
                            <form action="adduser.jsp"> 
                            <table>
                            <tr>
                            <td>Login:</td><td><input type="text" name="uname" maxlength="20" required onclick="this.value=''"/></td>
                            </tr>
                            <tr>
                            <td>Hasło:</td><td><input type="password" name="upass"  maxlength="20" required onclick="this.value=''"/></td>
                            </tr>
                            <tr>
                            <td>Powtórz hasło:</td><td><input type="password" name="urepass"  maxlength="20" required onclick="this.value=''"/></td>
                            </tr>
                            <tr>
                            <br />
                            <td colspan="2" align="center"><br />
                            <input type="submit" value="Wyślij" />
                            </td>
                            </tr>
                            </table>
                            </form>  
                            
                            
                            </div>
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
