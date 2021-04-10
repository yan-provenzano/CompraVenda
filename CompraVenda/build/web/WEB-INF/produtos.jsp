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


        <div class="container">
            <%--<div class="row">
                <% List<Produtos> produtos = (List<Produtos>) request.getAttribute("produtos");
                    for (Produtos a : produtos) {
                %>

                      <h1>Produto:  <%=a.getNome_Produto()%></h1>

                <% }%> 
        </div> --%>
        
        <div class="row">
                <% List<Produtos> produtos = (List<Produtos>) request.getAttribute("produtos");
                    for (Produtos a : produtos) {
                %>

                <div class="card" style="width: 18rem; margin:20px; word-break: break-all; ">
                    <div class="card-body" style="border: solid 1px black">
                        <h1 class="card-title" style="border-bottom: solid 1px black; padding:20px; color:black"><%=a.getNome_Produto()%></h1>
                        <p class="card-text" style="border-bottom: solid 1px black; padding: 5px; margin-top: -5px;"><b>Categoria:</b> <%=a.getDescricao()%></p>
                        <p class="card-text" style="padding:10px; margin-top: -5px;"> <b>Preço:</b> R$ <%=a.getPreco_Venda()%></p>
                        <p class="card-text" style="padding:10px; margin-top: -5px;"> <b>Qtd. Disponíveis:</b> <%=a.getQuantidade_Disponivel()%></p>
                    </div>

                </div>
                <% }%>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
