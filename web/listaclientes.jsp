<%-- 
    Document   : listaclientes
    Created on : 11-nov-2020, 18:52:15
    Author     : faguirre
--%>
<!--
    Sección de directivas de página
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Importa el controlador de Cliente -->
<%@page import="com.aonyi.persistencia.controlador.ControladorCliente"%>
<%@page import="java.util.List" %>
<%@page import="com.aonyi.persistencia.modelo.Cliente" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Clientes</title>
    </head>
    <body>
        <h1>Lista de Clientes</h1>
        <%  // Sección de scriptlet
            ControladorCliente control = new ControladorCliente();
            List<Cliente> listaClientes = control.getListaClientes();
        %>
        <table border = 2> 
            <th>ID</th>
            <th>NOMBRE</th>
            <th>APELLIDO</th>
        <%
            for (Cliente c : listaClientes) {
            out.println("<tr>");
            out.println("<td>" + c.getId()+ "</td>");
            out.println("<td>" + c.getNombre() + "</td>");
            out.println("<td>" + c.getApellido() + "</td>");            
            out.println("</tr>");
            
        }
        %>
        </table>
    </body>
</html>
