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
                        <form class="needs-validation"  id="form-register" method="POST" action="/cadastro_cliente">
                            <div class="text-center"><h2>Cadastro de Fornecedor</h2></div>
                            <!--Nome-->
                            <div class="form-group">
                                <label for="firstName" class="col control-label">Razão Social:</label>
                                <input type="text" required="required" name="razao_social" minlength="3" maxlength="50"placeholder="Razão Social" class="form-control" autofocus>
                            </div>
                            <!--CPF-->
                            <div class="form-group">
                                <label for="cpf">CNPJ:</label>
                                <input type="text" required="required" minlength="11" maxlength="14" name="cnpj" placeholder="XX.XXX.XXX/XXXX-XX" class="form-control" autofocus>
                            </div>
                            <!--Bloco de endereço-->
                            <div class="form-group">
                                <label for="inputAddress">Endereço</label>
                                <input type="text" required="required" class="form-control" minlength="3" maxlength="50" name="endereco" placeholder="Rua dos Bobos, nº 0" autofocus>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="inputBairro">Bairro</label>
                                    <input type="text" required="required" class="form-control" minlength="3" maxlength="50" name="bairro" autofocus>
                                </div>
                                <div class="form-group col-md-5">
                                    <label for="inputCity">Cidade</label>
                                    <input type="text" required="required" class="form-control" minlength="3" maxlength="50" name="cidade" autofocus>
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="inputCEP">CEP</label>
                                    <input type="text" required="required" placeholder="XXXXXXXX" class="form-control" minlength="8" maxlength="8" name="cep" autofocus>
                                </div>
                            </div>
                            <!--Estado-->
                            <div class="form-group">
                                <label for="inputEstado">Estado</label>
                                <select name="uf" required="required" class="form-control">
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
                                <label for="celular">Telefone:</label>
                                <input type="text" required="required"  minlength="3" maxlength="14" name="telefone" placeholder="(XX) XXXXX-XXXX" class="form-control" autofocus>
                            </div>
                            <!--Email-->
                            <div class="form-group">
                                <label for="email" class="col control-label">Email:</label>
                                <input type="email" required="required" minlength="3" maxlength="50" name="email" placeholder="fornecedor@exemplo.com" class="form-control" autofocus>
                            </div>
                            <!--Botão-->
                            <div class="form-group">
                                    <button class="btn btn-dark btn-block" data-toggle="modal" type="submit">Cadastrar Fornecedor</button>
                            </div>

                        </form> <!-- /form -->
                    </div> <!-- ./container -->
                </div></div>

        </div>

        <jsp:include page="footer.jsp" />

    </body>

</html>
