<?php
        require('../../db/connect.php');
        @session_start();
        // $cod = $_SESSION['cod'];
        // var_dump($_SESSION);

        extract($_FILES);
        extract($_POST);


        $imgCarro1 = md5(time().$img1['size']). ".jpg";
        $imgCarro1M = "../../images/carrosVenda/".md5(time().$img1['size']). ".jpg";
        move_uploaded_file($img1['tmp_name'],$imgCarro1M);

        $imgCarro2 = md5(time().$img2['size']). ".jpg";
        $imgCarro2M = "../../images/carrosVenda/".md5(time().$img2['size']). ".jpg";
        move_uploaded_file($img2['tmp_name'],$imgCarro2M);

        $imgCarro3 = md5(time().$img3['size']). ".jpg";
        $imgCarro3M = "../../images/carrosVenda/".md5(time().$img3['size']). ".jpg";
        move_uploaded_file($img3['tmp_name'],$imgCarro3M);

        $imgCarro4 = md5(time().$img3['size']). ".jpg";
        $imgCarro4M = "../../images/carrosVenda/".md5(time().$img4['size']). ".jpg";
        move_uploaded_file($img4['tmp_name'],$imgCarro4M);


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