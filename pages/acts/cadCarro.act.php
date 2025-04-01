<?php
        require('../../db/connect.php');
        @session_start();
        // $cod = $_SESSION['cod'];
        // var_dump($_SESSION);

        extract($_FILES);
        extract($_POST);

        $imagens = [];
        $destino = "../../images/carrosVenda/";
        
        for ($i = 1; $i <= 4; $i++) {
            $imgNome = md5(time() . $_FILES["img$i"]['size']) . ".jpg";
            $imgCaminho = $destino . $imgNome;
            
            if (move_uploaded_file($_FILES["img$i"]['tmp_name'], $imgCaminho)) {
                $imagens[] = $imgCaminho;
            }
        }


        if(mysqli_query($con, "INSERT INTO `carros` (`idCarro`,`modeloCarro`,`marcaCarro`, `anoCarro`, `motorCarro`,`kmCarro`,`valorCustoCarro`, `valorVendaCarro`, `corCarro`, `categoriaCarro`, `qtdVendaCarro`, `dtaCadastroCarro`, `imgPrincipalCarro`, `imgCarro2`, `imgCarro3`, `imgCarro4`)
         VALUES (NULL, '$modeloCarro', '$marcaCarro', '$anoCarro', '$motorCarro', '$kmCarro', '$valorCustoCarro', '$valorVendaCarro','$corCarro', '$categoriaCarro', 0 , '$dataCadastroCarro', '$imgCarro1', '$imgCarro2', '$imgCarro3', '$imgCarro4');")){
        $msg = "Carro gravado com sucesso!";
        echo "<a href=../cadCarro.php>Cadastrar Outro </a><br>";
  }else{
        $msg = "Erro ao gravar";
        echo "<a href=./cadCarro.php>Tentar Novamente</a><br>";
       }
    
echo $msg;
$_SESSION['msg'] = $msg;
// header("location:produtos.php");



?>