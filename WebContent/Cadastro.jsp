<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/Nomalize.css"/>
    <link rel="stylesheet" href="CSS/Estilo.css"/>
    <title>Cadastro</title>
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
            <form action="">
                <div id="telacad1">
                    <h4>Criar Conta</h4>
                    <label for="nome">Nome</label>
                    <input type="text" name="nome" id="nome" placeholder="Digite Seu Nome">
                    <label for="email">E-mail</label>
                    <input type="text" name="email" id="email" placeholder="Digite Seu E-mail">
                    <label for="senha">Senha</label>
                    <input type="text" name="senha" id="senha" placeholder="Digite Sua senha">
                    <label for="confSenha">Confirmação da Senha</label>
                    <input type="text" name="confSenha" id="confSenha" placeholder="Confirme Sua Senha">
                    <input type="button" value="Próximo" onclick="cadProx()" >
                </div>
                <div id="telacad2">
                    <h4>Criar Conta</h4>
                    <label for="logradouro">Logradouro</label>
                    <input type="text" name="logradouro" id="logradouro" placeholder="Digite Seu Logradouro">
                    <label for="complemento">Complemento</label>
                    <input type="text" name="complemento" id="complemento" placeholder="Digite Seu Complemento">
                    <label for="cidade">Cidade</label>
                    <input type="text" name="cidade" id="cidade" placeholder="Digite Sua Cidade">
                    <label for="uf">UF</label>
                    <select name="UF" placeholder="UF" id="uf">
                        <option value="" selected>UF</option>
                        <option value="0"><a>PB</a></option>
                        <option value="0"><a>PE</a></option>
                        <option value="0"><a>RN</a></option>
                        <option value="0"><a>RJ</a></option>
                        <option value="0"><a>SP</a></option>
                    </select>
                    <button id="fcad"><a href="Index.html">Cadastar</a></button>
                    <button id="fcad"><a href="Index.html">Cadastar</a></button>
                </div>
            </form>
        </div>
    </section>
</div>
</body>
</html>