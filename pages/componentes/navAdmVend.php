<div class="navAdmVend">
    <img src="../images/logo.png" alt="">
    <div class="dirNavAdm">
        
        <div class="nomeFuncao">
                <div><?php echo $_SESSION['nome'] ;?></div>
                <div>
                    <?php if(isset($_SESSION['idAdm'])){
                    echo "Administrador";
                }else if(isset($_SESSION['idVendedor'])){
                    echo "Vendedor";
                }?>
                </div>
                <p><a href="acts/logoff.php">Sair</a></p>
        </div>
        <img src="../images/icons/adm.png" alt="">
    </div>
</div>