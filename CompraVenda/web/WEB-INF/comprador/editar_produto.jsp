<%-- 
    Document   : editar_produto
    Created on : 15/03/2021, 21:42:44
    Author     : Isaac
--%>

<%@page import="model.Produtos"%>
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

            <% Produtos c = (Produtos) request.getAttribute("produtos"); %>

            <form class="needs-validation" id="edicao-post-form" method="POST" action="/comprador/editar_produto">

                <% if (c != null) {%>
                <input type="hidden" name="id" value="<%=c.getId()%>">

                <% } %>
                <div class="form-group" style="margin-top:30px;">
                    <label>Produto: *</label>
                    <input type="text" class="form-control" required
                           value="<%if (c != null) {%><%=c.getNome_Produto()%><%}%>" name="nome_produto" disabled>
                </div>

                <div class="form-group" style="margin-top:30px;">
                    <label>Descrição: *</label>
                    <input type="text" class="form-control" required
                           value="<%if (c != null) {%><%=c.getDescricao()%><%}%>" name="descricao" disabled>
                </div>

                <div class="form-group" style="margin-top:30px;">
                    <label>Preço Compra: *</label>
                    <input type="text" class="form-control" required
                           value="<%if (c != null) {%><%=c.getPreco_Compra()%><%}%>" name="preco_compra" disabled>
                </div>

                <div class="form-group" style="margin-top:30px;">
                    <label>Preço Venda: *</label>
                    <input type="text" class="form-control" required
                           value="<%if (c != null) {%><%=c.getPreco_Venda()%><%}%>" name="preco_venda" disabled>
                </div>

                <div class="form-group" style="margin-top:30px;">
                    <label>Quantidade: *</label>
                    <input type="text" class="form-control" required
                           value="<%if (c != null) {%><%=c.getQuantidade_Disponivel()%><%}%>" name="quantidade_disponivel" disabled>
                </div>

                <div class="form-group" style="margin-top:30px;">
                    <label>Liberado para venda: *</label>
                    <select name="liberado_venda" required="required" class="form-control">
                        <option value="S" selected>Sim</option>
                        <option value="N" >Não</option>
                    </select>
                </div>

                <div class="form-group" style="margin-top:30px;">
                    <label>Id Categoria *</label>
                    <input type="text" class="form-control" required
                           value="<%if (c != null) {%><%=c.getId_Categoria()%><%}%>" name="id_categoria" disabled>
                </div>              

                <button type="submit" style="margin-top:20px;" class="btn btn-primary">Salvar</button>
            </form>
        </div>

        <jsp:include page="../footer.jsp" />
    </body>

</html>
