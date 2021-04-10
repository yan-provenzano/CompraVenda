<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Usuario" %>
<%@ page import="enums.TipoUsuario" %>

<link rel="stylesheet" type="text/css" href="../../assets/fonts/css/bootstrap-grid.css">
<link href="../assets/fonts/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="../assets/fonts/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<header>
    
    <!-- A grey horizontal navbar that becomes vertical on small screens -->
<nav class="navbar navbar-expand-sm navbar-custom">
  <div class="container">
     <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="#">Link 1</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Link 2</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Link 3</a>
    </li>
  </ul>

</nav>
    <%-- <% Usuario user = (Usuario) request.getSession().getAttribute("user");
        if (user == null) { %>
        <%-- <div id="logo">

        <img src="../assets/img/logo.png" alt="">
    </div> --%>

    <%-- <nav class="navbar navbar-expand-lg navbar-black bg-black static-top">
  <div class="container">
    <a class="navbar-brand" href="#">
          <img src="../assets/img/logo.png" alt=""/>
        </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Services</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contact</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
        <% }%>--%>

        <%-- <% } else {%>
        <div id="logo">

            <img src="../../assets/img/logo.png" alt="">
        </div>

        <div id="btn-menu">
            <div class="barra"></div>                
            <div class="barra"></div>                
            <div class="barra"></div>
        </div>

        <nav id="menu">
            <ul>
                <li><a href="../produtos">Produtos</a></li>
                </li>
                <%  TipoUsuario tipo = user.getTipoUsuario();
                if (tipo.equals(TipoUsuario.ADMIN)) {%>            
                <%} else if (tipo.equals(TipoUsuario.VENDEDOR)) { %>
                <li><a href="/lista_cliente">Clientes</a></li>
                <li><a href="/cadastro_cliente">Cadastrar Cliente</a></li>
                <li><a href="/cadastro_vendas">Cadastrar Venda</a></li>
                <li><a href="/lista_vendas">Vendas</a></li>

                <%} else if (tipo.equals(TipoUsuario.COMPRADOR)) { %>            
                <%} %>
                <li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>

            </ul>
        </nav>
        <% }%> --%>
</header>


