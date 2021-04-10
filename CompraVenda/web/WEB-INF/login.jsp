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
    <div>
        <form method="POST" action="login">
            <div class="form-group" style="margin: 30px;">
                <label for="cpf">Digite seu CPF *</label>
                <input class="form-control" type="text" name="cpf" type="text" required />
            </div>
            <!-- Senha -->
            <div class="form-group" style="margin: 30px">
                <label class=" form-margin-fix" for="Senha">Digite sua senha *</label>
                <input class="form-control  form-margin-fix" type="password"name="senha" required />
            </div>
            <!-- login -->
            <button class="btn btn-primary" type="submit">Entrar</button>
        </form>
    </div>
    <br><br><br><br><br><br> <br><br><br><br><br><br>
   <jsp:include page="footer.jsp" />
</body>

</html>