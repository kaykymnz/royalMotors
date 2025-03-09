<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/main.css">
    <link rel="icon" type="image/png" href="../images/icons/iconPag.png">
    <title> Royal Motors | Login </title>
</head>
<body>
    <?php 
        // include('componentes/navbar.php')
        @session_start();
        if(@isset($_SESSION['login']) || @$_SESSION['login'] == true ){
            header("location:telaAdm.php");
        }
    ?>
    <div class="formLogin">
        
        <form action="acts/login.act.php" method="post" enctype="multipart/form-data">
                <div class="imgForm"><img src="../images/icons/iconCarroBranco.png" alt=""></div>
                
                <div class="inputForm">
                <p>CPF</p>
                <input type="number" placeholder="Apenas Números" name="cpf" required>
                </div>
                <div class="inputForm">
                <p>Senha</p>
                <input type="password" placeholder="" name="senha" required>
                </div>
                <p>Caso tenha problemas com o Login, contate seu <strong>Administrador</strong>.</p>
                <div class="inputForm">
                <input type="submit" value="Entrar">
                </div>
                <p>Faça login como <strong>Administrador</strong> ou <strong>Vendedor.</strong> </p>
                
        </form>
        <div class="imgLadoForm">
            <img src="../images/imgTelaLogin.jpg" alt="">
        </div>
    </div>

</body>
</html>