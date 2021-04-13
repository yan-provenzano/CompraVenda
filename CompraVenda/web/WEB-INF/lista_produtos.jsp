<%-- 
    Document   : Lista Produtos para Comprador
    Created on : 15/03/2021, 13:28:00
    Author     : Isaac
--%>

<%@page import="model.Produtos"%>
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
                <table class="table table-striped table-responsive">
                    <thead>
                        <tr>
                            <th scope="col">Produto</th>
                            <th scope="col">Descricao</th>
                            <th scope="col">Preço Compra</th>
                            <th scope="col">Preço Venda</th>
                            <th scope="col">Quantidade</th>
                            <th scope="col">Liberado pra venda</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% List<Produtos> produtos = (List<Produtos>) request.getAttribute("lista_produtos");
                            for (Produtos a : produtos) {
                        %>
                        <tr>
                            <td><%=a.getNome_Produto()%></td>
                            <td><%=a.getDescricao()%></td>
                            <td>R$<%=a.getPreco_Compra()%></td>
                            <td>R$<%=a.getPreco_Venda()%></td>
                            <td><%=a.getQuantidade_Disponivel()%></td>
                            <td><input type="checkbox" name="stable" disabled <%
                                if ("S".equals(a.getLiberado_Venda())) {
                                    out.print("checked=\"checked\"");
                                } %>/>
                            </td>
                            <td>
                                <div class="btn-group">
                                    <a class="btn btn-dark" role="button"  href="/comprador/editar_produto?id=<%=a.getId()%>" >Editar</a>
                                </div>
                            </td>  
                        </tr>
                        <% }%>
                    </tbody>
                </table>
            </div>
        </div>
        <footer class="mt-auto">
            <jsp:include page="footer.jsp" />
        </footer>
    </body>
</html>
