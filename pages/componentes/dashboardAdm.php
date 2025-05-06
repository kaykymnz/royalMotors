<div class="container">
        <div class="tabs">
            <button class="tab-button active" onclick="openTab(event, 'dashboard')">Dashboard</button>
            <button class="tab-button" onclick="openTab(event, 'carros')">Carros</button>
            <button class="tab-button" onclick="openTab(event, 'comercial')">Comercial</button>
        </div>
        <div id="dashboard" class="tab-content show">
            <div class="conteudo">





                <div class="vendas">
                    <div class="abaEsqVendas">
                        <div>
                            <p>Vendas nesta Semana</p>
                            <h2>30</h2>
                        </div>
                        <div>
                            <p>Vendas neste Mês</p>
                            <h2>40</h2>
                        </div>
                        <div>
                            <p>Vendas nesta Semestre</p>
                            <h2>130</h2>
                        </div>
                        <div>
                            <p>Vendas neste Ano</p>
                            <h2>504</h2>
                        </div>
                    </div>
                    <div class="linhaVendas">

                    </div>
                    <div class="abaDirVendas">
                         <div>
                            <p>Carro mais vendido nesta Semana</p>
                            <div>Fiat Grand Siena <p>4 Vendidos</p></div>
                        </div>
                        <div>
                            <p>Carro mais vendido neste Mês</p>
                            <div>Fiat Argo <p>20 Vendidos</p></div>
                        </div>
                        <div>
                            <p>Carro mais vendido neste Semestre</p>
                            <div>Mitsubishi Lancer <p>40 Vendidos</p></div>
                        </div>
                        <div>
                            <p>Carro mais vendido neste Ano</p>
                            <div>Mitsubishi Lancer <p>47 Vendidos</p></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>





        <div id="carros" class="tab-content">
            <div class="conteudo">
                <div class="conteudoCarros">
                    <div class="pesquisarEstoque">
                        <img src="../images/icons/lupa.png" alt="">
                        <input type="text" placeholder="Procure os carros do estoque">
                    </div>
                    <div class="btnsEstoqueCarro">
                        <a href="cadCarro.php"><input type="button" value="Incluir Carro"></a>
                        <img src="../images/icons/ordenar.png" alt="erro">
                    </div>
                </div>
                </a>
                <div class="carrosEstoque">
                        <?php 
                        require('../db/connect.php');
                        @session_start();
                        $carros = mysqli_query($con, "Select * from `carros` ORDER BY `idCarro` DESC");
                                                    
                            while($carro=mysqli_fetch_array($carros)){
                                
                            echo "  
                                
                                    <div class=carroCard>
                                            <p ><a href=pagVitrineCarro.php?cod=$carro[idCarro]><img src=../images/carrosVenda/$carro[imgPrincipalCarro]></a></p>
                                            <p class=tituloCarro> <a href=pagVitrineCarro.php?cod=$carro[idCarro]> $carro[marcaCarro] $carro[modeloCarro]</a></p>
                                            <p class=anoCarro> <a href=pagVitrineCarro.php?cod=$carro[idCarro]> $carro[anoCarro]</a></p>
                                            <p class=valorCustoTxt> <a href=pagVitrineCarro.php?cod=$carro[idCarro]> Custo: </a></p>
                                            <p class=valorCusto > <a href=pagVitrineCarro.php?cod=$carro[idCarro]> R$ "; echo number_format($carro['valorCustoCarro'], 2, ',', '.')."</a></p>
                                            <p class=valorVendaTxt > <a href=pagVitrineCarro.php?cod=$carro[idCarro]> Venda:</a></p>
                                            <p class=valorVenda> <a href=pagVitrineCarro.php?cod=$carro[idCarro]> R$ "; echo number_format($carro['valorVendaCarro'], 2, ',', '.')."</a></p>
                                            
                                    </div>
                            ";
                        }
                            
                        ?>
                    
                </div>
            </div>
        </div>










        <div id="comercial" class="tab-content">
            <div class="conteudo">
                <h2>Comercial</h2>
            </div>
        </div>





    </div>


    <script>
        function openTab(evt, tabName) {
            let i, tabcontent, tabbuttons;
            tabcontent = document.getElementsByClassName("tab-content");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            tabbuttons = document.getElementsByClassName("tab-button");
            for (i = 0; i < tabbuttons.length; i++) {
                tabbuttons[i].classList.remove("active");
            }
            document.getElementById(tabName).style.display = "block";
            evt.currentTarget.classList.add("active");
        }
    </script>

