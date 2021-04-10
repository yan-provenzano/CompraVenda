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
        <link rel="stylesheet" href="../../assets/fonts/css/style.css">
        <link rel="stylesheet" type="text/css" href="../../assets/fonts/css/bootstrap-grid.css">
        

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
 
            
<table class="table">
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
      <a href="#" class="btn btn-primary btn-lg disabled" role="button" aria-disabled="true">
      <td><a href="/vendedor/editar_venda?id=<%=a.getId()%>" class="btn btn-primary">Editar</button><a href="/vendedor/excluir_venda?id=<%=a.getId()%>" class="btn btn-primary">Excluir</button></td>  
    </tr>
                <% }%>
      </tbody>

</table>
        <jsp:include page="footer.jsp" />
    </body>
</html>