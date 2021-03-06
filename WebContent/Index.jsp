<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.util.List" %>
 <%@page import="DAO.CRUD" %>
 <%@page import="Model.Produto" %>
 <%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/Nomalize.css"/>
    <link rel="stylesheet" href="CSS/Estilo.css" />
    <script src="JS/Script.js"></script>
    <title>Home</title>
</head>
<body>
<div class="wrap">
    <header class="header linha2">
        <div class="menu ">
            <h1 class="logo coluna col1"><a href="Index.jsp"><img src="IMG/logo.jfif" title="" alt=""></a></h1>
            <h2 class="nomeSite coluna col2">e-comerce</h2>
            <input type="text" name="nome" class="coluna col4 barra"/>
           <a class="coluna col1 usr"><img src="IMG/user.png"></a>
            <p class="coluna col2 log">
                Ol� Visitante
                <br/>
                <a href="Login.jsp">Entrar<a> | <a href="Cadastro.jsp">Cadastrar</a>
            </p>
            <a class="coluna col1 car" href="Tabela.jsp"><img src="IMG/car.png"></a>
        </div>
        <div class="submenu linha2">
            <h3 class="col12 detalhes">
                <ul>
                <li>
                    <select name="departamentos" placeholder="Departamentos" class="dep">
                    <option value="" selected>Departamentos</option>
                    <option value="0"><a>departamento 1</a></option>
                    <option value="0"><a>departamento 1</a></option>
                    <option value="0"><a>departamento 1</a></option>
                    <option value="0"><a>departamento 1</a></option>
                    <option value="0"><a>departamento 1</a></option>
                    </select>
                </li>
                <li><a>Destaque 1</a></li>
                <li><a>Destaque 1</a></li>
                <li><a>Destaque 1</a></li>
                <li><a>Destaque 1</a></li>
                <li><a>Destaque 1</a></li>
                </ul>
            </h3>
        </div>
    </header>
    <section class="sec">
        <div class="linha produtos">
            <ul class=" listaP">
            <%
                CRUD bd = new CRUD();
                List<Produto> lista = bd.listarTudo();
                for(Produto p:lista){
                	
                %>
                <li><a target="_self" href="ServletPassarProduto?id=<%=p.id%>"><img src="IMG/xbox.png">
                    <h4><%out.print(p.nome);%></h4>
                    <p class="descPP"><%out.print(p.desc);%></p>
                    <p><%out.print(p.preco);%></p>
                </a></li>
                <%} %>  
            </ul>
        </div>
    </section>
</div>
</body>
</html>