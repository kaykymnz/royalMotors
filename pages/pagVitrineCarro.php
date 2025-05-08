<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/main.css">
    <title>Document</title>
</head>
<body>
    <?php 
        include("componentes/navbar.php");  
        require('../db/connect.php'); 

        extract($_GET);

                        @session_start();
                        $carros = mysqli_query($con, "Select * from `carros` WHERE `idCarro` = '$cod'");
                        $carro = mysqli_fetch_array($carros);    
    ?>
    <div class="mainCarro">
        
           <?php echo "<img src=../images/carrosVenda/$carro[imgPrincipalCarro] alt= >"; ?>
        
        <div class="tituloCarro">    
            <div class="tituloAno">
                <?php echo "<div>
                                <p> <h1>$carro[modeloCarro]  $carro[anoCarro] </h1><h5>$carro[marcaCarro] </h5> </p>
                                
                            </div>
                            <img src=../images/logoApolo.png alt=>
                            "; ?>
            </div>
            <div class="infsCarro">
                <?php echo "<p>$carro[motorCarro]</p>
                            <p>$carro[categoriaCarro]</p>
                            <p>$carro[kmCarro]km</p>
                            <p> R$"; echo number_format($carro['valorVendaCarro'], 2, ',', '.'). "</p>
                            <p>em até 128x</p>" ?>
            </div>
        </div>
        
    </div>
    <div class="fotosSecundarias">
        <?php echo "<img src=../images/carrosVenda/$carro[imgPrincipalCarro] alt= >
                    <img src=../images/carrosVenda/$carro[imgCarro2] alt= >
                    <img src=../images/carrosVenda/$carro[imgCarro3] alt= >
                    <img src=../images/carrosVenda/$carro[imgCarro4] alt= >"; 
        ?>
    </div>
    <div class="tituloContato">
        <?php echo "<div class=tituloDesc>
                        <h3>$carro[marcaCarro] $carro[modeloCarro] $carro[anoCarro] $carro[motorCarro]</h3>
                        <p>$carro[descCarro]</p>
                    </div>"; ?>
         <p> <input type="button" value="Entrar em contato com vendedor"></p>
    </div>
</body>
</html>