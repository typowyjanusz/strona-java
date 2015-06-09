<%@page import="db.news"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="object" class="db.news"/>  
        <jsp:setProperty property="*" name="object"/>  
        <%
        String addNewsStatus=news.addNews(object);
        out.print(addNewsStatus);
        %>
        <br>
        <a href="/strona">Wróć do strony głównej</a>
    </body>
</html>
