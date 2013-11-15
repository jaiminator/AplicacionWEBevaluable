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
    </head>
    <body>
    <center><h2>La entidad bancaria es:</h2></center>
    <center><table style="border: 2px solid black">
            <tr>
                <td><%= entidadBancaria.getIdEntidad() %></td>
                <td><%= entidadBancaria.getNombre() %></td>
                <td><%= entidadBancaria.getCodigoEntidad() %></td>
                <td><%= entidadBancaria.getCif() %></td>
            </tr>
            <tr>
                <td></td>
            </tr>
        </table></center>
        
    </body>
</html>
