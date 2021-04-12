<%-- 
    Document   : PRODUTOS
    Created on : 15/03/2021, 13:28:00
    Author     : Yan
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
        <%-- <link rel="stylesheet" href="../../assets/fonts/kill.css">--%>
        <link rel="stylesheet" href="../../assets/fonts/css/style.css">
        <link rel="stylesheet" type="text/css" href="../../assets/fonts/css/bootstrap-grid.css">
        <link href="../assets/fonts/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../assets/fonts/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <jsp:include page="navbar.jsp" />


        <div class="container" style="min-height:100vh">
            <div class="row">
                <div class="d-flex justify-content-center container mt-5">
                    <div class="card-deck">
                        <% List<Produtos> produtos = (List<Produtos>) request.getAttribute("produtos");
                            for (Produtos a : produtos) {
                        %>
                        <div class="col-sm-12 col-md-6 col-lg-4 d-flex align-self-stretch">
                            <div class="card shadow-sm p-3 mb-5 bg-white"><i class="fa fa-apple"></i>
                                <div class="about-product text-center mt-2"><img src="../assets/img/exemplo.png" width="300">
                                    <div card-title>
                                        <h4><%=a.getNome_Produto()%></h4>
                                        <h6 class="mt-0 text-black-50"><%=a.getDescricao()%></h6>
                                    </div> 
                                    <div class="card-body">
                                        <div class="mt-auto">
                                            <div class="stats mt-2">
                                                <div class="d-flex justify-content-between p-price"><span>Liberado pra venda:</span><span>Sim</span></div>
                                                <div class="d-flex justify-content-between p-price"><span>Quantidade Disponível:</span><span><%=a.getQuantidade_Disponivel()%></span></div>
                                            </div>
                                            <div class="d-flex justify-content-between total font-weight-bold mt-4"><span>Preço:</span><span>R$ <%=a.getPreco_Venda()%></span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <% }%>
                    </div>
                </div>
            </div>
        </div>
        <footer class="mt-auto">
            <jsp:include page="footer.jsp" />
        </footer>
    </body>
</html>
