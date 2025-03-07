<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/main.css">
    <title>Document</title>
</head>
<body>
    <!-- <script src="../scripts/menu.js"></script> -->
    <div class="ini">


    <?php
        include('componentes/navbar.php');
        // include('componentes/menuLateral.php');
    ?>
        
    <div class="bannerInicial">
        <img src="../images/BannerInicial.jpg" alt="">
    </div>
    <?php 
        include('componentes/inputPesquisa.php');
        include('componentes/destaques.php')
    ?>
    </div>
</body>
</html>