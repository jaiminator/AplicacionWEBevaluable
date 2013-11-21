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
                <td style="border: 2px solid black">ID</td>
                <td style="border: 2px solid black">Nombre</td>
                <td style="border: 2px solid black">Entidad</td>
                <td style="border: 2px solid black">CIF</td>
            </tr>
            
            <tr>
                <td style="border: 1px solid black"><%= entidadBancaria.getIdEntidad() %></td>
                <td style="border: 1px solid black"><%= entidadBancaria.getNombre() %></td>
                <td style="border: 1px solid black"><%= entidadBancaria.getCodigoEntidad() %></td>
                <td style="border: 1px solid black"><%= entidadBancaria.getCif() %></td>
            </tr>
            
            <tr>
                <td style="border: 1px solid black"><%= entidadBancaria.getIdEntidad() %></td>
                <td style="border: 1px solid black"><%= entidadBancaria.getNombre() %></td>
                <td style="border: 1px solid black"><%= entidadBancaria.getCodigoEntidad() %></td>
                <td style="border: 1px solid black"><%= entidadBancaria.getCif() %></td>
            </tr>
        </table></center>
        
    </body>
</html>
