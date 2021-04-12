<%-- 
    Document   : editar_cliente
    Created on : 15/03/2021, 21:42:44
    Author     : Isaac
--%>

<%@page import="model.Compras"%>
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
        <% Compras v = (Compras) request.getAttribute("compras"); %>

        <form class="needs-validation" id="edicao-post-form" method="POST" action="/comprador/editar_compra">

            <% if (v != null) {%>
            <input type="hidden" name="id" value="<%=v.getId()%>">

            <% } %>
            <div class="form-group" style="margin-top:30px;">
                <label>Quantidade: *</label>
                <input type="text" class="form-control" required
                       value="<%if (v != null) {%><%=v.getQuantidade_Compra()%><%}%>" name="quantidade_compra">
            </div>

            <div class="form-group" style="margin-top:30px;">
                <label>Data: *</label>
                <input type="text" class="form-control" required
                       value="<%if (v != null) {%><%=v.getDate()%><%}%>" name="data_compra">
            </div>

            <div class="form-group" style="margin-top:30px;">
                <label>Valor: *</label>
                <input type="text" class="form-control" required
                       value="<%if (v != null) {%><%=v.getValor_Compra()%><%}%>" name="valor_compra">
            </div>

            <div class="form-group" style="margin-top:30px;">
                <label>Cod. Fornecedor: *</label>
                <input type="text" class="form-control" required
                       value="<%if (v != null) {%><%=v.getId_Fornecedor()%><%}%>" name="id_fornecedor">
            </div>

            <div class="form-group" style="margin-top:30px;">
                <label>Cod. Produto: *</label>
                <input type="text" class="form-control" required
                       value="<%if (v != null) {%><%=v.getId_Produto()%><%}%>" name="id_produto">
            </div>

            <div class="form-group" style="margin-top:30px;">
                <label>Cod. Comprador: *</label>
                <input type="text" class="form-control" required
                       value="<%if (v != null) {%><%=v.getId_Comprador()%><%}%>" name="id_comprador">
            </div>


            <button type="submit" style="margin-top:20px;" class="btn btn-primary">Salvar</button>
        </form>

        <jsp:include page="../footer.jsp" />
    </body>

</html>
