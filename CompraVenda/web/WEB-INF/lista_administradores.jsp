<%-- 
    Document   : Administradores
    Created on : 15/03/2021, 18:14:20
    Author     : Isaac
--%>

<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CompraVenda - By Isaac & Yan</title>
        <link rel="stylesheet" type="text/css" href="../../assets/fonts/css/bootstrap-grid.css">
        <link href="../assets/fonts/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../assets/fonts/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>



    </head>
    <body>
        <jsp:include page="navbar.jsp" />

        <div class="container" style="min-height:100vh">
            <div class="row">           
                <table class="table table-striped table-responsive mx-auto w-auto">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">CPF</th>
                            <th scope="col">Nome</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% List<Usuario> usuarios = (List<Usuario>) request.getAttribute("administradores");
                            for (Usuario a : usuarios) {
                        %>
                        <tr>
                            <td><%=a.getId()%></td>
                            <td><%=a.getCpf() %></td>
                            <td><%=a.getNome() %></td>  
                        </tr>
                        <% }%>
                    </tbody>
                </table>
            </div>
            <div class="row d-flex justify-content-center align-content-center">
                <a class="btn btn-dark" href="/cadastro_administradores" role="button">Cadastrar Administrador</a>
            </div>
        </div>
        
    <footer class="mt-auto">
        <jsp:include page="footer.jsp" />
    </footer>
    </body>
    </html>