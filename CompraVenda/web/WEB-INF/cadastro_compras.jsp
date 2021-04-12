<%-- 
    Document   : cadastro_compras
    Created on : 15/03/2021, 16:33:05
    Author     : Isaac
--%>
<%@page import="model.Usuario"%>
<%@page import="model.Produtos"%>
<%@page import="java.util.List"%>
<%@page import="model.Fornecedores"%>
<%@page import="dao.FornecedoresDAO"%>
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

        <div class="container">
            <br>
           <div class="col d-flex justify-content-center"><div class="card" style="display: inline-block;">

                    <div class="container">
                        <form class="needs-validation"  id="form-register" method="POST" action="/cadastro_compras">
                            <div class="text-center"><h2>Cadastro de Compras</h2></div>
                            <!--Nome-->
                            <div class="form-group">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="firstName" class="col control-label">Quantidade:</label>
                                        <input type="number" required="required"    name="quantidade_compra" placeholder="Quantidade de Produtos" class="form-control" autofocus>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="saleDate">Data de Compra:</label>
                                        <input type="date"  required = "required" name="data_compra" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <!--CPF-->
                            <div class="form-group">
                                <label for="sale_value">Valor da compra:</label>
                                <input type="number" required="required" name="valor_compra" class="form-control" step="0.01" autofocus>
                            </div>
                            <!--Estado-->
                            <div class="form-group">
                                <label for="idFornecedores">Fornecedor:</label>
                                <select name="id_fornecedor" required="required" class="form-control">
                                    <option selected>Escolher...</option>
                                    <% List<Fornecedores> fornecedores = (List<Fornecedores>) request.getAttribute("listAll");
                                        for (Fornecedores a : fornecedores) {
                                    %>
                                    <option value="<%=a.getId()%>"><%=a.getRazao_Social()%></option>
                                    <% }%>
                                </select> 
                            </div>
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
                            <div class="form-group">
                                <label for="idComprador">Comprador:</label>
                                <select name="id_comprador" required="required" class="form-control">
                                    <option selected>Escolher...</option>
                                    <% List<Usuario> compradores = (List<Usuario>) request.getAttribute("compradores");
                                        for (Usuario a : compradores) {
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