<%@page import="com.fpmislata.entidadBancaria.EntidadBancariaDAO"%>
<%@page import="com.fpmislata.entidadBancaria.TipoEntidadBancaria"%>
<%@page import="com.fpmislata.entidadBancaria.EntidadBancaria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%
    Date hoy = new Date();
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAO();
    EntidadBancaria entidadBancaria = entidadBancariaDAO.read(1);
    
        String nombre = request.getParameter("nombre");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <h2><%=entidadBancaria%></h2>
    </head>
    <body>
        <%= nombre %>
        <form>
            <input id="busqueda" type="button" />
        </form>
    </body>
</html>
