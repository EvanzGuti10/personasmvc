<%@page import="com.emergentes.modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%
    //recuperando la lsita del servlet de MainController.java
    ArrayList<Persona> lista = (ArrayList<Persona>) session.getAttribute("listaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Personas</h1>
        <a href="MainController?op=nuevo">Agregar Nuevos</a>
        <h2>Slider1</h2>
        <h2>Slider2</h2>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Edad</th>
                <th></th>
                <th></th>
            </tr>

            <%
                if (lista != null) {

                    for (Persona item : lista) {
            %>

            <tr>
                <td> <%= item.getId()%> </td>
                <td> <%= item.getNombres()%> </td>
                <td> <%= item.getApellidos()%> </td>
                <td> <%= item.getEdad()%> </td>
                <td><a href="MainController?op=editar&id=<%= item.getId()%>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId()%>">Eliminar</a></td>
            </tr>

            <%                    }
                }
            %>

        </table>
    </body>
</html>
