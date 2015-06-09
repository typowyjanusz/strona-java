<%
    session.removeAttribute("sessionName");
    session.invalidate();
    response.sendRedirect("index.jsp");
%>