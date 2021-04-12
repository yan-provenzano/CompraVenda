<%-- 
    Document   : Compras
    Created on : 15/03/2021, 18:14:20
    Author     : Isaac
--%>

<%@page import="model.Compras"%>
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
                            <th scope="col">Cod. Compra</th>
                            <th scope="col">Quantidade</th>
                            <th scope="col">Data</th>
                            <th scope="col">Valor</th>
                            <th scope="col">Cod. Cliente</th>
                            <th scope="col">Cod. Produto</th>
                            <th scope="col">Cod. Vendedor</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% List<Compras> vendas = (List<Compras>) request.getAttribute("compras");
                            for (Compras a : vendas) {
                        %>
                        <tr>
                            <td><%=a.getId()%></td>
                            <td><%=a.getQuantidade_Compra()%></td>
                            <td><%=a.getDate()%></td>
                            <td><%=a.getValor_Compra()%></td>
                            <td><%=a.getId_Fornecedor()%></td>
                            <td><%=a.getId_Produto()%></td>
                            <td><%=a.getId_Comprador()%></td>    
                            <td><div class="btn-group"><a href="/comprador/editar_compra?id=<%=a.getId()%>" class="btn btn-primary">Editar</button><a href="/comprador/excluir_compra?id=<%=a.getId()%>" class="btn btn-danger">Excluir</button></div></td>  
                        </tr>
                        <% }%>
                    </tbody>
                </table>
            </div>
            <div class="row">
                <div class="col-12 d-flex justify-content-center">
                    <a class="btn btn-primary" href="/cadastro_compras" role="button">Cadastrar nova compra</a>
                </div>                
            </div>
</div>
<footer class="mt-auto">
    <jsp:include page="footer.jsp" />
</footer>
</body>
</html>