<?php

    extract($_POST);
    extract($_FILES);
    $senhaUser = md5($senha);
    require('../../db/connect.php');
  
    $busca = mysqli_query($con, "SELECT * FROM `adm` WHERE `cpfAdm` = '$cpf'");
    session_start();
    
    if($busca->num_rows ==1){
        $user = mysqli_fetch_array($busca);
        if($senhaUser === $user['senhaAdm']){

            $_SESSION['login'] = true;
            $_SESSION['nome'] = $user['nomeAdm'];
            $_SESSION['idAdm'] = $user['idAdm'];
            $target = "location:../telaAdm.php";
        }else{
            
        }

    }else{
        $busca = mysqli_query($con, "SELECT * FROM `vendedor` WHERE `cpfVendedor` = '$cpf'");
           @ session_start();
             $user = mysqli_fetch_array($busca);
            if($senhaUser === $user['senhaVendedor']){

                $_SESSION['login'] = true;
                $_SESSION['nome'] = $user['nomeVendedor'];
                $_SESSION['idVendedor'] = $user['idVendedor'];
                $target = "location:../telaAdm.php";
            }else{
                echo "erro aq";
            }
    }
    $_SESSION['msg'] = $msg;
    // echo $msg;
    // var_dump($_POST);
    header($target);
?>