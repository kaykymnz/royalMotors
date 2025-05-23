<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/main.css">
    <link rel="icon" type="image/png" href="../images/icons/iconPag.png">
    <title>Apolo Veiculos |  Veículo</title>
</head>

<body>
    <?php 
        include("componentes/navbar.php");  
        require('../db/connect.php'); 

        extract($_GET);

                        @session_start();
                        $carros = mysqli_query($con, "Select * from `carros` WHERE `idCarro` = '$cod'");
                        $carro = mysqli_fetch_array($carros);  
                        
                        if (isset($_SESSION['msgSolic'])) {
                            echo "<h1 class=msgAvisoSolic>". $_SESSION['msgSolic']. "</h1>" ;
                            unset($_SESSION['msgSolic']); // limpa após exibir, se quiser
                        }
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
                        <p>"; echo nl2br($carro['descCarro']). " </p>
                    </div>"; ?>
         <p> <input type="button" value="Entrar em contato com vendedor" id="abrirModal"></p>
    </div>
    <?php include('componentes/footer.php');
          include('componentes/formModal.php') ?>


<div id="imgModal" class="modal-img">
  <span class="close-modal">&times;</span>
  <div class="modal-content">
    <button class="nav-btn prev">&#10094;</button>
    <img id="imgAtual" src="" alt="Imagem ampliada">
    <button class="nav-btn next">&#10095;</button>
  </div>
  <div class="thumbnail-container" id="thumbnails"></div>
</div>


<script>
document.addEventListener("DOMContentLoaded", () => {
    const imagens = [
        "<?php echo '../images/carrosVenda/' . $carro['imgPrincipalCarro']; ?>",
        "<?php echo '../images/carrosVenda/' . $carro['imgCarro2']; ?>",
        "<?php echo '../images/carrosVenda/' . $carro['imgCarro3']; ?>",
        "<?php echo '../images/carrosVenda/' . $carro['imgCarro4']; ?>"
    ];

    const modal = document.getElementById("imgModal");
    const imgAtual = document.getElementById("imgAtual");
    const thumbnails = document.getElementById("thumbnails");
    const closeModal = document.querySelector(".close-modal");
    const btnPrev = document.querySelector(".prev");
    const btnNext = document.querySelector(".next");

    let indexAtual = 0;

    // Cria miniaturas
    imagens.forEach((src, index) => {
        const thumb = document.createElement("img");
        thumb.src = src;
        thumb.dataset.index = index;
        thumbnails.appendChild(thumb);

        thumb.addEventListener("click", () => {
            indexAtual = index;
            atualizarImagem();
        });
    });

    function atualizarImagem() {
        imgAtual.src = imagens[indexAtual];
        document.querySelectorAll("#thumbnails img").forEach((img, i) => {
            img.classList.toggle("active", i === indexAtual);
        });
    }

    // Abrir modal ao clicar em imagem do carro
    document.querySelectorAll(".mainCarro img, .fotosSecundarias img").forEach(img => {
        img.addEventListener("click", () => {
            const srcClicada = img.src;
            indexAtual = imagens.findIndex(src => srcClicada.includes(src.split('/').pop()));
            if (indexAtual === -1) indexAtual = 0;
            atualizarImagem();
            modal.style.display = "flex";
        });
    });

    // Navegação
    btnPrev.addEventListener("click", () => {
        indexAtual = (indexAtual - 1 + imagens.length) % imagens.length;
        atualizarImagem();
    });

    btnNext.addEventListener("click", () => {
        indexAtual = (indexAtual + 1) % imagens.length;
        atualizarImagem();
    });

    // Fechar modal
    closeModal.addEventListener("click", () => modal.style.display = "none");
});
</script>
</body>
</html>