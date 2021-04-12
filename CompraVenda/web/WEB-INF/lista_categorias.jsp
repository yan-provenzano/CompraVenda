<%-- 
    Document   : Lista Clientes
    Created on : 15/03/2021, 13:28:00
    Author     : Isaac
--%>

<%@page import="model.Categorias"%>
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
            <div class="row justify-content-center">
                <div class="col-auto">
                    <table class="table table-striped table-responsive">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Categoria</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% List<Categorias> categorias = (List<Categorias>) request.getAttribute("lista_categorias"); 
                            for (Categorias a : categorias) {
                            %>
                            <tr>
                                <td><%=a.getId()%></td>
                                <td><%=a.getNome_Categoria()%></td>
                            </tr>
                            <% }%>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row justify-content-center">
                <a class="btn btn-dark col-auto" href="/cadastro_categoria" role="button">Cadastrar nova categoria</a>
            </div>
        </div>
        <footer class="mt-auto">
            <jsp:include page="footer.jsp" />
        </footer>
    </body>
</html>
