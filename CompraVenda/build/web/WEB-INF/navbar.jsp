<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Usuario" %>
<%@ page import="enums.TipoUsuario" %>

<link rel="stylesheet" type="text/css" href="../../assets/fonts/css/bootstrap-grid.css">
<link href="../assets/fonts/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="../assets/fonts/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<header>
    <% Usuario user = (Usuario) request.getSession().getAttribute("user");
        if (user == null) { %>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="../assets/img/logo.png" alt=""/>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/login">Entrar</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <% } else {%>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
        <div class="container">
            <a class="navbar-brand" href="/produtos"">
                <img src="../assets/img/logo.png" alt=""/>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <%  TipoUsuario tipo = user.getTipoUsuario();
                        if (tipo.equals(TipoUsuario.ADMIN)) {%>
                    <li class="nav-item ml-auto justify-content-end">
                        <a class="nav-link" href="/lista_administradores">Administradores</a>
                    </li>
                    <li class="nav-item ml-auto justify-content-end">
                        <a class="nav-link" href="/lista_compradores">Compradores</a>
                    </li>
                    <li class="nav-item ml-auto justify-content-end">
                        <a class="nav-link" href="/lista_vendedores">Vendedores</a>
                    </li>
                    <li class="nav-item dropdown ml-auto justify-content-end">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Relatórios
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="/relatorio_estoque">Relatório de Estoque</a>
                            <a class="dropdown-item" href="/relatorio_vendas">Relatório de Vendas</a>
                        </div>



                    </li>
                    <%} else if (tipo.equals(TipoUsuario.VENDEDOR)) { %>
                    <li class="nav-item dropdown ml-auto justify-content-end">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Clientes
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="/lista_cliente">Lista de Clientes</a>
                            <a class="dropdown-item" href="/cadastro_cliente">Cadastrar Cliente</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown ml-auto justify-content-end">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Vendas
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="/lista_vendas">Lista de Vendas</a>
                            <a class="dropdown-item" href="/cadastro_vendas">Cadastrar Venda</a>
                        </div>
                    </li>
                    <%} else if (tipo.equals(TipoUsuario.COMPRADOR)) { %> 
                    <li class="nav-item ml-auto justify-content-end">
                        <a class="nav-link" href="/lista_compras">Compras</a>
                    </li>
                    <li class="nav-item ml-auto justify-content-end">
                        <a class="nav-link" href="/lista_categorias">Categorias</a>
                    </li>
                    <li class="nav-item ml-auto justify-content-end">
                        <a class="nav-link" href="/lista_produtos">Produtos</a>
                    </li>
                    <li class="nav-item ml-auto justify-content-end">
                        <a class="nav-link" href="/lista_fornecedores">Fornecedores</a>
                    </li>
                    <%} %>

                    <li class="nav-item ml-auto justify-content-end">
                        <a class="nav-link" href="/logout">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <% }%>
</header>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
