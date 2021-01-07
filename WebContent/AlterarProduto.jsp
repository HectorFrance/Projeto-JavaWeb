<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="Model.Produto" %>
<!DOCTYPE html>
<<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/Nomalize.css"/>
    <link rel="stylesheet" href="CSS/Estilo.css"/>
    <link rel="stylesheet" href="CSS/estilop.css"/>
    <title>Alterar Produto</title>

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
        <div class="linha cad">
            <form action="AlterarItem" method="post">
            <%
             Produto p = (Produto)request.getAttribute("produto");
            int id=p.id;
            request.setAttribute("idAS", p.id);
             %>
                <div id="telacadProd">
                    <h4>Alterar Protudo</h4>
                    <label for="nome">Nome</label>
                    <input type="text" name="nome" id="nome" value=<%out.print(p.nome);%>>
                    <label for="desc">Descrição</label>
                    <input type="text" name="desc" id="desc" value=<%out.print(p.desc);%>>
                    <label for="quant">Qtd.Estoque</label>
                    <input type="text" name="quant" id="quant" value=<%out.print(p.quant);%>>
                    <label for="prec">Preço</label>
                    <input type="text" name="prec" id="prec" value=<%out.print(p.preco);%>>
                    <label for="descont">Desconto</label>
                    <input type="text" name="descont" id="descont" value=<%out.print(p.descont);%>>
                    <button type="submit" name="id" value=<%out.print(p.id);%>>Alterar</button>
                    <button type="button"><a href="Tabela.jsp">Cancelar</a></button>
                </div>
            </form>
        </div>
    </section>
</div>
</body>
</html>