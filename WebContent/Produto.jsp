<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="DAO.CRUD" %>
 <%@page import="Model.Produto" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/Nomalize.css"/>
    <link rel="stylesheet" href="CSS/Estilo.css"/>
    <script src="JS/Script.js"></script>
    <title>Produto</title>
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
                Olá Visitante
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
    <section>
        <div class="linha produto">
            <img src="IMG/xbox.png" class="coluna col4">
            <div class="coluna col7 desc">
            <%
            Produto p = (Produto)request.getAttribute("produto");
            int prec = Integer.parseInt(p.preco);
            int d = 250-prec;
            %>
                <h4><%out.print(p.nome);%></h4>
                <p class="po negrito marg">DE</p><p class="po deco">: 250,00</p>
                <br>
                <p class="pa negrito marg">POR</p><p class="pa">: <%out.print(p.preco);%></p>
                <br>
                <p class="ec negrito">Você Economiza</p><p class="ec">: <%out.print(d); %>,00</p>
                <br>
                <p><%out.print(p.desc);%></p>
            </div>
        </div>
    </section>
</div>
</body>
</html>