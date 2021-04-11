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

            <h1 style="margin: 30px; color: black">Cadastro de clientes</h1>
            <div class="card" style="display: inline-block;">
                        
        <div class="container">
        <form class="form-horizontal" role="form">
            <div class="text-center"><h2>Registre-se agora</h2></div>
            <!--Nome-->
            <div class="form-group">
                <label for="firstName" class="col control-label">Nome:</label>
                <input type="text" id="firstName" placeholder="Nome Completo" class="form-control" autofocus>
            </div>
            <!--Data de Nascimento-->
            <div class="form-group">
                <label for="birthDate">Data de Nascimento:</label>
                <input type="date" id="birthDate" class="form-control">
            </div>
            <!--CPF-->
            <div class="form-group">
                <label for="cpf">CPF:</label>
                <input type="text" id="cpf" placeholder="XXX.XXX.XXX-XX" class="form-control" autofocus>
            </div>
            <!--Bloco de endereço-->
            <div class="form-group">
                <label for="inputAddress">Endereço</label>
                <input type="text" class="form-control" id="inputAddress" placeholder="Rua dos Bobos, nº 0" autofocus>
            </div>
            <div class="form-group">
                <label for="inputAddress2">Endereço 2</label>
                <input type="text" class="form-control" id="inputAddress2" placeholder="Apartamento, hotel, casa, etc." autofocus>
            </div>
            <div class="form-row">
                <div class="form-group col-md-5">
                    <label for="inputCity">Cidade</label>
                    <input type="text" class="form-control" id="inputCity" autofocus>
                </div>
                <div class="form-group col-md-4">
                    <label for="inputBairro">Bairro</label>
                    <input type="text" class="form-control" id="bairro" autofocus>
                </div>
                <div class="form-group col-md-3">
                    <label for="inputCEP">CEP</label>
                    <input type="text" placeholder="XXXXX-XXX" class="form-control" id="inputCEP" autofocus>
                </div>
            </div>
            <!--Estado-->
            <div class="form-group">
                <label for="inputEstado">Estado</label>
                <select id="inputEstado" class="form-control">
                    <option selected>Escolher...</option>
                    <option value="RJ">Rio de Janeiro</option>
                    <option value="AC">Acre</option>
                    <option value="AL">Alagoas</option>
                    <option value="AP">Amapá</option>
                    <option value="AM">Amazonas</option>
                    <option value="BA">Bahia</option>
                    <option value="CE">Ceará</option>
                    <option value="DF">Distrito Federal</option>
                    <option value="ES">Espírito Santo</option>
                    <option value="GO">Goiás</option>
                    <option value="MA">Maranhão</option>
                    <option value="MT">Mato Grosso</option>
                    <option value="MS">Mato Grosso do Sul</option>
                    <option value="MG">Minas Gerais</option>
                    <option value="PA">Pará</option>
                    <option value="PB">Paraíba</option>
                    <option value="PR">Paraná</option>
                    <option value="PE">Pernambuco</option>
                    <option value="PI">Piauí</option>
                    <option value="RN">Rio Grande do Norte</option>
                    <option value="RS">Rio Grande do Sul</option>
                    <option value="RO">Rondônia</option>
                    <option value="RR">Roraima</option>
                    <option value="SC">Santa Catarina</option>
                    <option value="SP">São Paulo</option>
                    <option value="SE">Sergipe</option>
                    <option value="TO">Tocantins</option>
                </select>
            </div>
            <!--Celular-->
            <div class="form-group">
                <label for="celular">Celular:</label>
                <input type="text" id="Celular" placeholder="(XX) XXXXX-XXXX" class="form-control" autofocus>
            </div>
            <!--Email-->
            <div class="form-group">
                <label for="email" class="col control-label">Email:</label>
                <input type="email" id="email" placeholder="nome@exemplo.com" class="form-control" autofocus>
            </div>
            <!--Login-->
            <div class="form-group">
                <label for="login">Login:</label>
                <input type="text" id="login" placeholder="username" class="form-control" autofocus>
            </div>
            <!--Senha-->
            <div class="form-group">
                <label for="password" class="control-label">Senha:</label>
                <input type="password" id="password" placeholder="Password" class="form-control">
            </div>
            <!--Botão-->
            <div class="form-group">
                    <button type="submit" class="btn btn-dark btn-block">Enviar</button>
                    <div class="text-center"><p>Já é registrado? <a class="text-dark" href="login.html"><u>Faça o login.</u></a></p></div>
            </div>

        </form> <!-- /form -->
    </div> <!-- ./container -->
                <%--<form class="needs-validation" id="form-register" method="POST" action="/cadastro_cliente">
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
                </form>--%>
            </div>

        </div>

        <jsp:include page="footer.jsp" />

    </body>

</html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
