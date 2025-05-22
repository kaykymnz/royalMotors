<div id="modalContato" class="overlay">
  <div class="modal">
    <button class="close-btn" onclick="fecharModal()">✖</button>
    <h2>Entre em Contato com o Vendedor</h2>
    <h3>Insira suas informações para que possamos designar o melhor vendedor para você!</h3>
    <div class="infsCarroModal">
      <?php echo "
      
      <div class=esqModal><img src=../images/carrosVenda/$carro[imgPrincipalCarro] alt= ></div>
      <div class=dirModal>
        <div class=tituloModal>
            <p> <h1>$carro[modeloCarro] $carro[anoCarro] </h1> <h4>$carro[marcaCarro] </h4> </p>     
        </div>
        <div class=detalhesModal>
            <p>$carro[motorCarro]</p>
            <p>$carro[categoriaCarro]</p>
            <p>$carro[kmCarro]km</p>
            <p> R$"; echo number_format($carro['valorVendaCarro'], 2, ',', '.'). "</p>
            <p>em até 128x</p>
        </div>
      </div>
      
      "; ?>  
    </div>
     
    <form action="acts/solicitacaoContato.act.php" method="POST" enctype="multipart/form-data">

      <input type="hidden" name="idCarro" value="<?php echo $carro['idCarro']; ?>">
      
      <label for="nome">Nome Completo:</label>
      <input type="text" id="nome" name="nome" required>

      <label for="cpf">CPF</label>
      <input type="text" id="cpf" name="cpf" maxlength="14" required>

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required>

      <label for="telefone">Telefone:</label>
      <input type="text" id="telefone" name="telefone" maxlength="15" required>

      <label for="mensagem">Mensagem:</label>
      <textarea id="mensagem" name="mensagem" rows="4">Olá! Tenho interesse no <?php echo "$carro[marcaCarro] $carro[modeloCarro] $carro[anoCarro]"; ?></textarea>

      <button type="submit">Enviar</button>
    </form>
  </div>
</div>

<script>
  document.getElementById("abrirModal").addEventListener("click", function () {
    document.getElementById("modalContato").style.display = "flex";
  });

  function fecharModal() {
    document.getElementById("modalContato").style.display = "none";
  }


  const telefoneInput = document.getElementById("telefone");



  //aqui começa a mascara para os inputs

telefoneInput.addEventListener("input", function () {
  let valor = telefoneInput.value;

  // Remove tudo que não for número
  valor = valor.replace(/\D/g, "");

  // Aplica máscara: (XX) XXXXX-XXXX ou (XX) XXXX-XXXX
  if (valor.length <= 10) {
    valor = valor.replace(/^(\d{2})(\d{4})(\d{0,4})/, "($1) $2-$3");
  } else {
    valor = valor.replace(/^(\d{2})(\d{5})(\d{0,4})/, "($1) $2-$3");
  }

  telefoneInput.value = valor;
});



const cpfInput = document.getElementById("cpf");

cpfInput.addEventListener("input", function () {
  let valor = cpfInput.value;

  // Remove tudo que não for número
  valor = valor.replace(/\D/g, "");

  // Aplica máscara: 000.000.000-00
  valor = valor.replace(/^(\d{3})(\d)/, "$1.$2");
  valor = valor.replace(/^(\d{3})\.(\d{3})(\d)/, "$1.$2.$3");
  valor = valor.replace(/\.(\d{3})(\d)/, ".$1-$2");

  cpfInput.value = valor;
});


  // Função para validar o CPF
  function validarCPF(cpf) {
    cpf = cpf.replace(/\D/g, '');

    if (cpf.length !== 11) return false;

    if (/^(000|111|222|333|444|555|666|777|888|999)\d{7}$/.test(cpf)) return false;

    let soma = 0;
    for (let i = 0; i < 9; i++) {
      soma += parseInt(cpf.charAt(i)) * (10 - i);
    }
    let resto = (soma * 10) % 11;
    if (resto === 10 || resto === 11) resto = 0;
    if (resto !== parseInt(cpf.charAt(9))) return false;

    soma = 0;
    for (let i = 0; i < 10; i++) {
      soma += parseInt(cpf.charAt(i)) * (11 - i);
    }
    resto = (soma * 10) % 11;
    if (resto === 10 || resto === 11) resto = 0;
    if (resto !== parseInt(cpf.charAt(10))) return false;

    return true;
  }

  // Previne o envio do formulário se o CPF não for válido
  document.querySelector("form").addEventListener("submit", function (event) {
    const cpf = cpfInput.value;

    if (!validarCPF(cpf)) {
      alert("Por favor, insira um CPF válido.");
      event.preventDefault(); // Impede o envio do formulário
    }
  });
</script>