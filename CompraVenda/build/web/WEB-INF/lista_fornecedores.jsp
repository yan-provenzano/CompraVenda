<%-- 
    Document   : Lista Clientes
    Created on : 15/03/2021, 13:28:00
    Author     : Isaac
--%>

<%@page import="model.Fornecedores"%>
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
                             <th scope="col">Razão Social</th>
                             <th scope="col">CNPJ</th>
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
                        <% List<Fornecedores> fornecedores = (List<Fornecedores>) request.getAttribute("lista_fornecedores");
                            for (Fornecedores a : fornecedores) {
                        %>
                        <tr>
                            <td><%=a.getRazao_Social()%></td>
                            <td><%=a.getCnpj()%></td>
                            <td><%=a.getEndereco()%></td>
                            <td><%=a.getBairro()%></td>
                            <td><%=a.getCidade()%></td>
                            <td><%=a.getUf()%></td>
                            <td><%=a.getCep()%></td>
                            <td><%=a.getTelefone()%></td>
                            <td><%=a.getEmail()%></td>   
                        </tr>
                        <% }%>
                    </tbody>
                </table>
            </div>
            <div class="row">
                <a class="btn btn-dark" href="/cadastro_fornecedor" role="button">Cadastrar novo fornecedor</a>
            </div>
        </div>
        <footer class="mt-auto">
            <jsp:include page="footer.jsp" />
        </footer>
    </body>
</html>
