<%-- 
    Document   : vendas
    Created on : 15/03/2021, 18:14:20
    Author     : Yan
--%>

<%@page import="model.Vendas"%>
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

        <%--<div class="row">
            <% List<Produtos> produtos = (List<Produtos>) request.getAttribute("produtos");
                for (Produtos a : produtos) {
            %>

                      <h1>Produto:  <%=a.getNome_Produto()%></h1>

                <% }%> 
        </div> --%>
        <div class="container" style="min-height:100vh">
            <div class="row">           
                <table class="table table-striped table-responsive mx-auto w-auto">
                    <thead>
                        <tr>
                            <th scope="col">Cod. Venda</th>
                            <th scope="col">Quantidade</th>
                            <th scope="col">Data</th>
                            <th scope="col">Valor</th>
                            <th scope="col">Cod. Cliente</th>
                            <th scope="col">Cod. Produto</th>
                            <th scope="col">Cod. Vendedor</th>
                        </tr>
                    </thead>
                    <% List<Vendas> vendas = (List<Vendas>) request.getAttribute("vendas");
                        for (Vendas a : vendas) {
                    %>
                    <tr>
                        <td><%=a.getId()%></td>
                        <td><%=a.getQuantidade_Venda()%></td>
                        <td><%=a.getDate()%></td>
                        <td><%=a.getValor_Venda()%></td>
                        <td><%=a.getId_Cliente()%></td>
                        <td><%=a.getId_Produto()%></td>
                        <td><%=a.getId_Vendedor()%></td>    
                        <td><div class="btn-group"><a href="/vendedor/editar_venda?id=<%=a.getId()%>" class="btn btn-primary">Editar</button><a href="/vendedor/excluir_venda?id=<%=a.getId()%>" class="btn btn-danger">Excluir</button></div></td>  
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