<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/main.css">
    <link rel="icon" type="image/png" href="../images/icons/iconPag.png">
    <title> Apolo Veiculos | Cadastro Produtos </title>
</head>
<body>
    <?php
        require('acts/sec.php');
        include('componentes/navAdmVend.php');

        if(isset($_SESSION['idAdm'])){
            include('componentes/dashboardAdm.php');
        }else if(isset($_SESSION['idVendedor'])){
            include('componentes/dashboardVend.php');
        }
        include('componentes/footer.php')
    ?>
    <!-- <p><a href="acts/logoff.php">Sair</a></p>
    <p><a href="login.php">Login</a></p> -->
</body>
</html>