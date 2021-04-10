<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CompraVenda - By Isaac & Yan</title>
        <link rel="stylesheet" href="../assets/fonts/css/style.css">

    </head>
    <body>    

        <jsp:include page="navbar.jsp" />

        <div class="container">

            <h1 style="margin: 30px; color: black">Cadastro de clientes</h1>
            <div class="card" style="display: inline-block;">
                <form class="needs-validation" id="form-register" method="POST" action="/cadastro_cliente">
                    <div class="row">
                        <div class="col-2">
                            <div class="form-group"  style="margin: 30px">
                                <label form="form-register">Digite seu nome:</label>
                                <input type="" minlength="3" maxlength="50" name="nome">
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="form-group"  style="margin: 30px">
                                <label form="form-register">Digite seu cpf:</label>
                                <input type="text" minlength="11" maxlength="16" name="cpf">
                            </div>
                        </div>
                        <div class="col-2">     
                            <div class="form-group"  style="margin: 30px">
                                <label form="form-register">Digite seu endereco:</label>
                                <input type="text" minlength="3" maxlength="50" name="endereco">
                            </div>
                        </div>
                    </div>

                    <div class="form-group"  style="margin: 30px">
                        <label form="form-register">Digite seu bairro:</label>
                        <input type="text" minlength="3" maxlength="50" name="bairro">
                    </div>
                    <div class="form-group"  style="margin: 30px">
                        <label form="form-register">Digite seu cidade:</label>
                        <input type="text" minlength="3" maxlength="50" name="cidade">
                    </div>
                    <div class="form-group"  style="margin: 30px">
                        <label form="form-register">Digite seu UF:</label>
                        <input type="text" minlength="2" maxlength="2" name="uf">
                    </div>
                    <div class="form-group"  style="margin: 30px">
                        <label form="form-register">Digite seu cep:</label>
                        <input type="text" minlength="3" maxlength="8" name="cep">
                    </div>
                    <div class="form-group"  style="margin: 30px">
                        <label form="form-register">Digite seu telefone:</label>
                        <input type="text" minlength="3" maxlength="14" name="telefone">
                    </div>
                    <div class="form-group"  style="margin: 30px">
                        <label form="form-register">Digite seu email:</label>
                        <input type="text" minlength="3" maxlength="50" name="email">
                    </div>


                    <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" type="submit"  style="margin: 30px">Enviar</button>
                </form>
            </div>

        </div>

        <jsp:include page="footer.jsp" />

    </body>

</html>