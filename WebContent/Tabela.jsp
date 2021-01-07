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
    <link rel="stylesheet" href="CSS/Estilo.css"/>
    <script src="JS/Script.js"></script>
    <title>Carrinho</title>
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
        <div class="tabela linha">
            <table id="tbl">
                <thead>
                    <tr id="cabe">
                        <th id="NP">Nome do Produto</th>
                        <th id="D">Descrição</th>
                        <th id="QE">QTd.Estoque</th>
                        <th id="V">Valor</th>
                        <th id="DES">Desconto</th>
                        <th id="A">Ações</th>
                    </tr>
                </thead>
                <tbody id="corpo">
                <%
                CRUD bd = new CRUD();
                List<Produto> lista = bd.listarTudo();
                for(Produto p:lista){
                	
                %>
                    <tr>
                        <td><%out.print(p.nome);%></td>
                        <td><%out.print(p.desc);%></td>
                        <td><%out.print(p.quant); %></td>
                        <td><%out.print(p.preco);%></td>
                        <td><%out.print(p.descont); %></td>
                        <td><button><a target="_self" href="DeletaItem?id=<%=p.id%>"><img src="IMG/delete.png" class="icD"></a></button>
                            <button><a target="_self" href="AlterarItem?id=<%=p.id%>"><img src='IMG/editar.png' class='icD'></a></button></td>
                    </tr>
                        <%} %>             
                </tbody>
            </table>
        </div>
        <div class="linha fprod">
        <form action="ServletADDProd" method="post">
                <label for="nomep">Nome do produto</label>
                <input type="text" name="nomep" id="nomep" placeholder="Digite o nome do prodruto" class="formTable cadp">
                <label for="descp">Descrição</label>
                <textarea name="descp" id="descp" class="formTable cadp"></textarea>
                <label for="quantp" class="coluna col4">Quantidade</label>
                <label for="preco" class="coluna col4">Valor</label>
                <label for="desconto" class="coluna col3">Desconto</label>
                <input type="text" name="quantp" id="quantp" class="formTableQ cadp">
                <input type="text" name="preco" id="preco" class="formTableQ cadp">
                <input type="text" name="desconto" id="desconto" class="formTableQ cadp">
                <input type="submit" name="salvar" id="btnSalvar" value="Salvar" class="btn cadp">
                <button id="cancel" class="btn cadp" onclick="limparCampos()">Cancelar</button>
        </form>
        </div>
    </section>
</div>
</body>
</html>