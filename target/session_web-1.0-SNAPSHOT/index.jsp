<%@page import="com.emergentes.aplicacion.Pendiente"%>
<%@page import="java.util.ArrayList"%>

<%
    if(session.getAttribute("lista") == null){
        ArrayList<Pendiente> listaAux = new ArrayList<Pendiente>();
        session.setAttribute("lista", listaAux);
    }  
    ArrayList<Pendiente> lista = (ArrayList<Pendiente>)session.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#B2CBD0">
    <center>
        <h1>Gestor de tareas</h1>
        <p>Nombre: Brayan Quispe Alanoca</p>
        <form action="MainServlet" method="POST">
            <table>
                <tr>
                    <td><input type="submit" value="Nuevo"></td>
                </tr>
                <tr>
                    <th>Id</th>
                    <th><input type="text" name="id"></th>
                </tr>
                <tr>
                    <th>Tarea</th>
                    <th><input type="text" name="tarea"></th>
                </tr>
            </table>
        </form>
        <table border="1" cellspacing="0" cellpadding="20">
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Completado</th>
                <th colspan="2"></th>
            </tr>
            <tr>
                <%
                    if(lista != null){
                        for(Pendiente p: lista){
                %>
                <td><%= p.getId() %></td>
                <td><%= p.getTarea() %></td>
                <td><a href="MainServlet?op=check&id=<%= p.getId() %>"><input type="checkbox" name="" <%= (p.isCompletado())? "checked":""%>>check</a></td>
                <td>
                    <a href="Editar.jsp?op=editar&id=<%= p.getId() %>">editar</a>
                    <a href="MainServlet?op=eliminar&id=<%= p.getId() %>">eliminar</a>
                </td>
            </tr>
            <%
                }
            }
            %>
        </table>
    </center>                             
    </body>
</html>
