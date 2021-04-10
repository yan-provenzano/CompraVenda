<%-- 
    Document   : cadastro_vendas
    Created on : 15/03/2021, 16:33:05
    Author     : Yan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CompraVenda - By Isaac & Yan</title>
        <link rel="stylesheet" href="../assets/fonts/kill.css">
        <link rel="stylesheet" href="../assets/fonts/css/style.css">
    </head>
    <body>    

<jsp:include page="navbar.jsp" />

        <div class="container">

        <h1 style="margin: 30px; color: black">Cadastro de vendas</h1>
        <form class="needs-validation" id="form-register" method="POST" action="/cadastro_vendas">          
            <div class="form-group"  style="margin: 30px">
                <label form="form-register">Digite seu nome:</label>
                <input type="number" minlength="3" maxlength="50" name="quantidade_venda">
            </div>
            <div class="form-group"  style="margin: 30px">
                <label form="form-register">Digite seu cpf:</label>
                <input type="text" minlength="8" maxlength="10" name="data_venda">
            </div>
            <div class="form-group"  style="margin: 30px">
                <label form="form-register">Digite seu endereco:</label>
                <input type="number" minlength="3" maxlength="50" name="valor_venda">
            </div>
            <div class="form-group"  style="margin: 30px">
                <label form="form-register">Digite seu bairro:</label>
                <input type="number" minlength="1" maxlength="50" name="id_cliente">
            </div>
            <div class="form-group"  style="margin: 30px">
                <label form="form-register">Digite seu cidade:</label>
                <input type="number" minlength="1" maxlength="50" name="id_produto">
            </div>
            <div class="form-group"  style="margin: 30px">
                <label form="form-register">Digite seu UF:</label>
                <input type="text" minlength="1" maxlength="2" name="id_vendedor">
            </div>
            

            <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" type="submit"  style="margin: 30px">Enviar</button>
        </form>

        </div>
          <jsp:include page="footer.jsp" />

    </body>

</html>