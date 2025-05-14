<?php
require('../../db/connect.php');
@session_start();

extract($_POST);

// Verifica se o cliente já existe pelo CPF
$queryVerifica = "SELECT idCliente FROM cliente WHERE cpfCliente = '$cpf'";
$resultado = mysqli_query($con, $queryVerifica);

if (mysqli_num_rows($resultado) > 0) {
    // Cliente já existe, pega o id
    $cliente = mysqli_fetch_assoc($resultado);
    $idCliente = $cliente['idCliente'];
} else {
    // Cliente não existe, insere
    $queryCliente = "INSERT INTO cliente (nomeCliente, cpfCliente, emailCliente, telefoneCliente)
                     VALUES ('$nome', '$cpf', '$email', '$telefone')";

    if (mysqli_query($con, $queryCliente)) {
        $idCliente = mysqli_insert_id($con);
    } else {
        die("Erro ao inserir na tabela cliente: " . mysqli_error($con));
    }
}

// Verifica se já existe negociação entre o cliente e o carro
$queryCheck = "SELECT * FROM negociacao WHERE idCliente = '$idCliente' AND idCarro = '$idCarro'";
$resultCheck = mysqli_query($con, $queryCheck);

if (mysqli_num_rows($resultCheck) > 0) {
    $_SESSION['msgSolic'] = "Você já solicitou contato para esse carro. Aguarde o retorno do vendedor.";
    header("location:../pagVitrineCarro.php?cod=$idCarro");
    exit;
}

// Insere a negociação
$dataHoje = date('Y-m-d');
$status = "pendente";

$queryNegociacao = "INSERT INTO negociacao (idCliente, idCarro, dtaSolic, statusNegoc)
                    VALUES ('$idCliente', '$idCarro', '$dataHoje', '$status')";

if (mysqli_query($con, $queryNegociacao)) {
    $_SESSION['msgSolic'] = "Solicitação Enviada! Aguarde o contato do nosso vendedor";
    header("location:../pagVitrineCarro.php?cod=$idCarro");
} else {
    echo "Erro ao inserir na tabela negociacao: " . mysqli_error($con);
}
?>
