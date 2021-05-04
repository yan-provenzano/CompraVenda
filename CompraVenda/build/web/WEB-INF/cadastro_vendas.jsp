<%-- 
    Document   : cadastro_vendas
    Created on : 15/03/2021, 16:33:05
    Author     : Yan
--%>
<%@page import="model.Usuario"%>
<%@page import="model.Produtos"%>
<%@page import="java.util.List"%>
<%@page import="model.Cliente"%>
<%@page import="dao.ProdutosDAO"%>
<%@page import="dao.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CompraVenda - By Isaac & Yan</title>
        <link rel="stylesheet" type="text/css" href="../../assets/fonts/css/bootstrap-grid.css">
        <link href="../assets/fonts/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../assets/fonts/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    </head>
    <body>    

        <jsp:include page="navbar.jsp" />

    <div class="container" style="min-height:100vh">
            <br>
            <div class="col d-flex justify-content-center"><div class="card" style="display: inline-block;">

                    <div class="container">
                        <form class="needs-validation"  id="form-register" method="POST" action="/cadastro_vendas">
                            <div class="text-center"><h2>Cadastro de Vendas</h2></div>
                            <div class="form-group">
                                <label for="idProduto">Produto:</label>
                                <select name="id_produto" required="required" class="form-control">
                                    <option selected>Escolher...</option>
                                    <% List<Produtos> produtos = (List<Produtos>) request.getAttribute("produtos");
                                        for (Produtos a : produtos) {
                                    %>
                                    <option value="<%=a.getId()%>"><%=a.getNome_Produto()%></option>
                                    <% }%>
                                </select>
                            </div>
                            <!--Nome-->
                            <div class="form-group">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="firstName" class="col control-label">Quantidade:</label>
                                        <input type="number" required="required"    name="quantidade_venda" placeholder="Quantidade de Produtos" class="form-control" autofocus>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="saleDate">Data de Venda:</label>
                                        <input type="date"  required = "required" name="data_venda" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <!--CPF-->
                            <div class="form-group">
                                <label for="sale_value">Valor da venda:</label>
                                <input type="number" required="required" name="valor_venda" class="form-control" step="0.01" autofocus>
                            </div>
                            <!--Estado-->
                            <div class="form-group">
                                <label for="idCliente">Cliente:</label>
                                <select name="id_cliente" required="required" class="form-control">
                                    <option selected>Escolher...</option>
                                    <% List<Cliente> clientes = (List<Cliente>) request.getAttribute("listAll");
                                        for (Cliente a : clientes) {
                                    %>
                                    <option value="<%=a.getId()%>"><%=a.getNome()%></option>
                                    <% }%>
                                </select> 
                            </div>
                            <div class="form-group">
                                <label for="idVendedor">Vendedor:</label>
                                <select name="id_vendedor" required="required" class="form-control">
                                    <option selected>Escolher...</option>
                                    <% List<Usuario> vendedores = (List<Usuario>) request.getAttribute("vendedores");
                                        for (Usuario a : vendedores) {
                                    %>
                                    <option value="<%=a.getId()%>"><%=a.getNome()%></option>
                                    <% }%>
                                </select>
                            </div>
                            <!--Botão-->
                            <div class="form-group">
                                <button class="btn btn-dark btn-block" data-toggle="modal" data-target="#exampleModal" type="submit">Cadastrar</button>
                            </div>

                        </form> <!-- /form -->
                    </div> <!-- ./container -->
                </div></div>

        </div>

        <jsp:include page="footer.jsp" />

    </body>

</html>