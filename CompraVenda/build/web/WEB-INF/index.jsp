<%-- 
    Document   : index
    Created on : 13/03/2021, 16:36:25
    Author     : Isaac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CompraVenda - By Isaac & Yan</title>
        <link rel="stylesheet" href="../assets/fonts/kill.css">
        <link rel="stylesheet" href="../assets/jquery.bxslider.css">
        <link rel="stylesheet" href="../assets/fonts/css/style.css">
        <script src="../assets/jquery.min.js"></script>
        <script src="../assets/jquery.bxslider.min.js"></script>

        <script>
            $(document).ready(function () {

                //ao clicar no btn-menu
                $("#btn-menu").click(function () {
                    $("#menu").slideToggle(500); //mostra/esconde o menu

                    $("#btn-menu").toggleClass("x"); //add/remove a classe "x"

                });

                $("#fechar").click(function () {
                    $("#opacidade").fadeOut(500);
                });



                $('#banner').bxSlider({
                    mode: 'horizontal',
                    randomStart: true,
                    auto: true,
                    pause: 4000,
                    autoHover: true
                });

            });
        </script>

    </head>
    <body>        
        <jsp:include page="navbar.jsp" />

       <jsp:include page="footer.jsp" />

    </body>
</html>