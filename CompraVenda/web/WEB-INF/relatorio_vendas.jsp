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
       
                <div class="col d-flex justify-content-center"><div class="card" style="display: inline-block;">
         </br>
                </br>
                </br>
                </br>
                        <div class="container">
                            <form class="needs-validation"  id="form-register" method="POST" action="/relatorio_vendas">
                                <div class="text-center mx-auto w-auto"><h1>RELATÓRIO DE VENDAS DIÁRIO</h1></div>
                                <!--Nome-->
                                <div class="form-group">
                                    <div class="form-row">

                                        <div class="form-group col-md-6">
                                            <label for="saleDate">Data de Venda:</label>
                                            <input type="date"  required = "required" name="data_venda" class="form-control">
                                        </div>
                                    </div>
                                </div>

                                <!--Botão-->
                                <div class="form-group">
                                <button class="btn btn-dark btn-block" data-toggle="modal" data-target="#exampleModal" type="submit">Cadastrar</button>
                                </div>

                            </form> <!-- /form -->
                        </div> <!-- ./container -->
                    </div></div>
                <!--                <% List<Vendas> vendaDiaria = (List<Vendas>) request.getAttribute("vendas");
                    for (Vendas b : vendaDiaria) {
                    }
                %>
                <div class="col-md-3  mx-auto w-auto"></div>
                <div class="form-group  mx-auto w-auto col-md-6">
                    <label for="saleDate">Exibir relatório do dia:</label>
                    <input type="date"  required = "required" name="data_venda" class="form-control">
                </div>
                <div class="col-md-3  mx-auto w-auto"></div>

                <div class="btn-group  mx-auto w-auto">
                    <a class="btn btn-dark" role="button"  href="/administrador/relatorio_diario_vendas?data_venda=<%="data_venda"%>" >Editar</a>
                </div>-->
            </div>
            <div class="row">           
                </br>
                </br>
                </br>
                </br>
                </br>
                </br>

                <table class="table table-striped table-responsive mx-auto w-auto">
                    <h1 class="mx-auto w-auto">RELATÓRIO DE VENDAS TOTAIS</h1>
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
                    <tbody>
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