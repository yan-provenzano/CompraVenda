<%-- 
    Document   : editar_cliente
    Created on : 15/03/2021, 21:42:44
    Author     : Yan
--%>

<%@page import="model.Cliente"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CompraVenda</title>
        <link rel="stylesheet" href="../../assets/fonts/kill.css">
        <link rel="stylesheet" href="../../assets/fonts/css/style.css">
        <link rel="stylesheet" type="text/css" href="../../assets/fonts/css/bootstrap-grid.css">


    </head>
    <body>   

        <jsp:include page="../navbar.jsp" />

        <div class="container">

            <% Cliente c = (Cliente) request.getAttribute("cliente"); %>

            <form class="needs-validation" id="edicao-post-form" method="POST" action="/vendedor/editar_cliente">

                <% if (c != null) {%>
                <input type="hidden" name="id" value="<%=c.getId()%>">

                <% } %>
                <div class="form-group" style="margin-top:30px;">
                    <label>Nome: *</label>
                    <input type="text" class="form-control" required
                           value="<%if (c != null) {%><%=c.getNome()%><%}%>" name="nome">
                </div>

                <div class="form-group" style="margin-top:30px;">
                    <label>Nome: *</label>
                    <input type="text" class="form-control" required
                           value="<%if (c != null) {%><%=c.getCpf()%><%}%>" name="cpf">
                </div>

                <div class="form-group" style="margin-top:30px;">
                    <label>Nome: *</label>
                    <input type="text" class="form-control" required
                           value="<%if (c != null) {%><%=c.getEndereco()%><%}%>" name="endereco">
                </div>

                <div class="form-group" style="margin-top:30px;">
                    <label>Nome: *</label>
                    <input type="text" class="form-control" required
                           value="<%if (c != null) {%><%=c.getBairro()%><%}%>" name="bairro">
                </div>

                <div class="form-group" style="margin-top:30px;">
                    <label>Nome: *</label>
                    <input type="text" class="form-control" required
                           value="<%if (c != null) {%><%=c.getCidade()%><%}%>" name="cidade">
                </div>

                <div class="form-group" style="margin-top:30px;">
                    <label>Nome: *</label>
                    <input type="text" class="form-control" required
                           value="<%if (c != null) {%><%=c.getUf()%><%}%>" name="uf">
                </div>

                <div class="form-group" style="margin-top:30px;">
                    <label>Nome: *</label>
                    <input type="text" class="form-control" required
                           value="<%if (c != null) {%><%=c.getCep()%><%}%>" name="cep">
                </div>

                <div class="form-group" style="margin-top:30px;">
                    <label>Nome: *</label>
                    <input type="text" class="form-control" required
                           value="<%if (c != null) {%><%=c.getTelefone()%><%}%>" name="telefone">
                </div>

                <div class="form-group" style="margin-top:30px;">
                    <label>Nome: *</label>
                    <input type="text" class="form-control" required
                           value="<%if (c != null) {%><%=c.getEmail()%><%}%>" name="email">
                </div>


                <button type="submit" style="margin-top:20px;" class="btn btn-primary">Salvar</button>
            </form>
        </div>

        <jsp:include page="../footer.jsp" />
    </body>

</html>
