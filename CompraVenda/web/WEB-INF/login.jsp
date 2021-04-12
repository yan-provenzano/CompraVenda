<%-- 
    Document   : login
    Created on : 14/03/2021, 17:29:12
    Author     : Isaac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CompraVenda - By Isaac & Yan</title>
        <link rel="stylesheet" href="../assets/fonts/kill.css">
        <link rel="stylesheet" href="../assets/fonts/css/style.css">
    </head>
    <body>    

        <jsp:include page="navbar.jsp" />
        
        <div cointainer style="min-height:100vh">

        <form class="form-horizontal"  method="POST" action="login" role="form">
            </br>
            <div class="text-center"><h2>Acesse a área restrita</h2></div>
            </br>
            <!--Login-->
            <div class="form-group">
                <div class="form-row">
                    <div class="form-group col-md-4"></div>
                    <div class="form-group col-md-4">
                        <label for="login">Digite seu CPF</label>
                        <input type="text" name="cpf" placeholder="username" class="form-control" autofocus>
                    </div>
                    <div class="form-group col-md-4"></div>
                </div>
            </div>
            <!--Senha-->
            <div class="form-group">
                <div class="form-row">
                    <div class="form-group col-md-4"></div>
                    <div class="form-group col-md-4">
                        <label for="password" class="control-label">Senha:</label>
                        <input type="password" name="senha" required placeholder="Password" class="form-control">
                    </div>
                    <div class="form-group col-md-4"></div>
                </div>
            </div>
            <!--Botão-->
            <div class="form-group">
                <div class="form-row">
                    <div class="form-group col-md-4"></div>
                    <div class="form-group col-md-4">
                        <button type="submit" class="btn btn-dark btn-block btn-xs">Entrar</button>
                    </div>
                    <div class="form-group col-md-4"></div>
                </div>
            </div>
        </form> <!-- /form -->
    </div> <!-- ./container -->
    <!--    <div>
            <form method="POST" action="login">
                <div class="form-group" style="margin: 30px;">
                    <label for="cpf">Digite seu CPF *</label>
                    <input class="form-control" type="text" name="cpf" type="text" required />
                </div>
                 Senha 
                <div class="form-group" style="margin: 30px">
                    <label class=" form-margin-fix" for="Senha">Digite sua senha *</label>
                    <input class="form-control  form-margin-fix" type="password"name="senha" required />
                </div>
                 login 
                <button class="btn btn-primary" type="submit">Entrar</button>
            </form>
        </div>-->

        <footer class="mt-auto">
            <jsp:include page="footer.jsp" />
        </footer>
</body>

</html>