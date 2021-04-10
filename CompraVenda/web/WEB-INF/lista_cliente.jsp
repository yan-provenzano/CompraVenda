<%-- 
    Document   : Lista Clientes
    Created on : 15/03/2021, 13:28:00
    Author     : Isaac
--%>

<%@page import="model.Cliente"%>
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
      <th scope="col">Nome</th>
      <th scope="col">CPF</th>
      <th scope="col">Endereço</th>
      <th scope="col">Bairro</th>
      <th scope="col">Cidade</th>
      <th scope="col">UF</th>
      <th scope="col">CEP</th>
      <th scope="col">Telefone</th>
      <th scope="col">Email</th>
    </tr>
  </thead>
  <tbody>

                <% List<Cliente> clientes = (List<Cliente>) request.getAttribute("lista_cliente");
                    for (Cliente a : clientes) {
                %>
    <tr>
      <td><%=a.getNome()%></td>
      <td><%=a.getCpf()%></td>
      <td><%=a.getEndereco()%></td>
      <td><%=a.getBairro()%></td>
      <td><%=a.getCidade()%></td>
      <td><%=a.getUf()%></td>
      <td><%=a.getCep()%></td>
      <td><%=a.getTelefone()%></td>
      <td><%=a.getEmail()%></td>   
      <td><a href="/vendedor/editar_cliente?id=<%=a.getId()%>" class="btn btn-primary">Editar</button><a href="/vendedor/excluir_cliente?id=<%=a.getId()%>" class="btn btn-primary">Excluir</button></td>  
    </tr>
                <% }%>
      </tbody>

</table>
        <jsp:include page="footer.jsp" />
    </body>
</html>
