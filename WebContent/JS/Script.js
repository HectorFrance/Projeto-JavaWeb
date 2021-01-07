function cadProx(){
    document.getElementById("telacad1").style.visibility = "hidden";
    document.getElementById("telacad2").style.visibility = "visible";
};
function cadVolt(){
    document.getElementById("telacad2").style.visibility = "hidden";
    document.getElementById("telacad1").style.visibility = "visible";
};
function adcionarP(){
    var prod = {
        nome: document.getElementById("nomep").value,
        desc: document.getElementById("descp").value,
        quant: document.getElementById("quantp").value,
        preco: document.getElementById("preco").value,
        descont: document.getElementById("desconto").value
    };
    adTable(prod);
    limparCampos();
    zeberar()
};

function limparCampos(){
    document.getElementById("nomep").value = "";
    document.getElementById("descp").value = "";
    document.getElementById("quantp").value = "";
    document.getElementById("preco").value = "";
    document.getElementById("desconto").value = "";
    zeberar()
};

function adTable(prod){
    var linha = document.createElement("tr");
    var nome = document.createElement("td");
    var desc = document.createElement("td");
    var quantp = document.createElement("td");
    var preco = document.createElement("td");
    var descont = document.createElement("td");
    var acao = document.createElement("td");
    var corpot = document.getElementById("corpo");

    nome.textContent = prod.nome;
    desc.textContent =prod.desc;
    quantp.textContent =prod.quant;
    preco.textContent =prod.preco;
    descont.textContent =prod.descont;
    acao.innerHTML = "<td><button onclick='removeLinha(this)'><img src='IMG/delete.png' class='icD'></button>  <button onclick='editar(this)'><img src='IMG/editar.png' class='icD'></button></td>";

    linha.appendChild(nome);
    linha.appendChild(desc);
    linha.appendChild(quantp);
    linha.appendChild(preco);
    linha.appendChild(descont);
    linha.appendChild(acao);

    corpot.appendChild(linha);
};

function zeberar(){
    var zebrar = document.querySelectorAll(".tabela tbody tr");
    for(var i = 0;i < zebrar.length; i+=1){
        zebrar[i].className = "";
    }
    for(var i = 0;i < zebrar.length; i+=2){
        zebrar[i].className = "zebrada";
    } 
}

window.onload=function(){
    var zebrar = document.querySelectorAll(".tabela tbody tr");
    for(var i = 0;i < zebrar.length; i+=2){
        zebrar[i].className = "zebrada";
    }
}

function removeLinha(linha) {
    var i=linha.parentNode.parentNode.rowIndex;
    document.getElementById('tbl').deleteRow(i);
    zeberar();
  }
  function editar(linha){
    var i=linha.parentNode.parentNode;
    i.className= "selecionado";
    console.log(i);
    i = i.getElementsByTagName("td");
    console.log(i);
    document.getElementById("nomep").value = i[0].innerHTML;
    document.getElementById("descp").value = i[1].innerHTML;
    document.getElementById("quantp").value = i[2].innerHTML;
    document.getElementById("preco").value = i[3].innerHTML;
    document.getElementById("desconto").value = i[4].innerHTML;
    removeLinha(linha);
  }