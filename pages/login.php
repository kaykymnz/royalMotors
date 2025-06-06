<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/main.css">
    <link rel="icon" type="image/png" href="../images/icons/iconPag.png">
    <title> Apolo Veiculos | Login </title>
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
                <div class="imgForm"><img src="../images/logoApolo.png" alt=""></div>
                
                <div class="inputForm">
                <p>CPF</p>
                <input type="number" placeholder="Apenas Números" name="cpf" required minlength="11" maxlength="11">
                </div>
                <div class="inputForm">
                <p>Senha</p>
                <input type="password" placeholder="Insira sua senha" name="senha" required minlength="8">
                </div>
                <p>Caso tenha problemas com o Login, contate seu <strong>Administrador</strong>.</p>
                <div class="inputForm">
                <input type="submit" value="Entrar">
                </div>
                <p>Faça login como <strong>Administrador</strong> ou <strong>Vendedor.</strong> </p>
                
        </form>
        <div class="imgLadoForm">
            <img src="../images/imgTelaLogin.png" alt="">
        </div>
    </div>

</body>
</html>