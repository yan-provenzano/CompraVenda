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
                        <form class="needs-validation"  id="form-register" method="POST" action="/cadastro_categoria">
                            <div class="text-center"><h2>Cadastro de Categoria</h2></div>
                            <!--Nome da categoria-->
                            <div class="form-group">
                                <label for="firstName" class="col control-label">Categoria:</label>
                                <input type="text" required="required" name="nome_categoria" minlength="3" maxlength="50"placeholder="Nome da categoria" class="form-control" autofocus>
                            </div>
                           <!--Botão-->
                            <div class="form-group">
                                    <button class="btn btn-dark btn-block" href="/lista_categorias" data-toggle="modal" type="submit">Cadastrar Categoria</button>
                            </div>

                        </form> <!-- /form -->
                    </div> <!-- ./container -->
                </div></div>

        </div>

        <jsp:include page="footer.jsp" />

    </body>

</html>
