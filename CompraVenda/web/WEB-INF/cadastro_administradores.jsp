<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

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

        <div class="container">
            <br>
            <div class="col d-flex justify-content-center"><div class="card" style="display: inline-block;">

                    <div class="container">
                        <form class="needs-validation"  id="form-register" method="POST" action="/cadastro_administrador">
                            <div class="text-center"><h2>Cadastro de Administrador</h2></div>
                            <!--Nome-->
                            <div class="form-group">
                                <label for="firstName" class="col control-label">CPF:</label>
                                <input type="text" required="required" name="cpf" minlength="3" maxlength="11" placeholder="XXX.XXX.XXX-XX" class="form-control" autofocus>
                            </div>
                            <!--CPF-->
                            <div class="form-group">
                                <label for="cpf">Nome:</label>
                                <input type="text" required="required" minlength="11" maxlength="14" name="nome" class="form-control" autofocus>
                            </div>
                            <!--Bloco de endereço-->
                            <div class="form-group">
                                <label for="inputAddress">Senha:</label>
                                <input type="text" required="required" class="form-control" minlength="3" maxlength="50" name="senha" autofocus>
                            </div>
                           
                            <!--Botão-->
                            <div class="form-group">
                                    <button class="btn btn-dark btn-block" data-toggle="modal" type="submit">Cadastrar Administrador</button>
                            </div>

                        </form> <!-- /form -->
                    </div> <!-- ./container -->
                </div></div>

        </div>

        <jsp:include page="footer.jsp" />

    </body>

</html>
