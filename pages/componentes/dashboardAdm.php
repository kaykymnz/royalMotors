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


<?php
    require('../db/connect.php');

    // ✅ Vendas da Semana
    $sqlSemana = "SELECT COUNT(*) AS vendas_semana
                FROM negociacao
                WHERE statusNegoc = 'vendido'
                AND YEARWEEK(dtaConclusao, 1) = YEARWEEK(CURDATE(), 1)";
    $resSemana = mysqli_fetch_assoc(mysqli_query($con, $sqlSemana));

    // ✅ Vendas do Mês
    $sqlMes = "SELECT COUNT(*) AS vendas_mes
            FROM negociacao
            WHERE statusNegoc = 'vendido'
            AND MONTH(dtaConclusao) = MONTH(CURDATE())
            AND YEAR(dtaConclusao) = YEAR(CURDATE())";
    $resMes = mysqli_fetch_assoc(mysqli_query($con, $sqlMes));

    // ✅ Vendas do Semestre
    $sqlSemestre = "SELECT COUNT(*) AS vendas_semestre
                    FROM negociacao
                    WHERE statusNegoc = 'vendido'
                    AND YEAR(dtaConclusao) = YEAR(CURDATE())
                    AND (
                        (MONTH(CURDATE()) <= 6 AND MONTH(dtaConclusao) BETWEEN 1 AND 6)
                        OR
                        (MONTH(CURDATE()) > 6 AND MONTH(dtaConclusao) BETWEEN 7 AND 12)
                    )";
    $resSemestre = mysqli_fetch_assoc(mysqli_query($con, $sqlSemestre));

    // ✅ Vendas do Ano
    $sqlAno = "SELECT COUNT(*) AS vendas_ano
            FROM negociacao
            WHERE statusNegoc = 'vendido'
            AND YEAR(dtaConclusao) = YEAR(CURDATE())";
    $resAno = mysqli_fetch_assoc(mysqli_query($con, $sqlAno));

    // ✅ Carros mais vendidos
    function carroMaisVendido($con, $periodoSQL) {
        $sql = "SELECT c.marcaCarro, c.modeloCarro, COUNT(*) as total_vendidos
                FROM negociacao n
                JOIN carros c ON n.idCarro = c.idCarro
                WHERE n.statusNegoc = 'vendido' AND $periodoSQL
                GROUP BY c.marcaCarro, c.modeloCarro
                ORDER BY total_vendidos DESC
                LIMIT 1";
        $res = mysqli_query($con, $sql);
        return mysqli_fetch_assoc($res);
    }

    $maisSemana = carroMaisVendido($con, "YEARWEEK(n.dtaConclusao, 1) = YEARWEEK(CURDATE(), 1)");
    $maisMes = carroMaisVendido($con, "MONTH(n.dtaConclusao) = MONTH(CURDATE()) AND YEAR(n.dtaConclusao) = YEAR(CURDATE())");
    $maisSemestre = carroMaisVendido($con, "YEAR(n.dtaConclusao) = YEAR(CURDATE()) AND ((MONTH(CURDATE()) <= 6 AND MONTH(n.dtaConclusao) BETWEEN 1 AND 6) OR (MONTH(CURDATE()) > 6 AND MONTH(n.dtaConclusao) BETWEEN 7 AND 12))");
    $maisAno = carroMaisVendido($con, "YEAR(n.dtaConclusao) = YEAR(CURDATE())");
?>




<div class="container">
        <div class="tabs">
            <button class="tab-button active" onclick="openTab(event, 'dashboard')">Dashboard</button>
            <button class="tab-button" onclick="openTab(event, 'carros')"> Carros </button>
            <!-- <button class="tab-button" onclick="openTab(event, 'comercial')"> Comercial </button> -->
        </div>
        <div id="dashboard" class="tab-content show">
            <div class="conteudo">





            <div class="vendas">
                <div class="abaEsqVendas">
                    <div>
                        <p>Vendas nesta Semana</p>
                        <h2><?php echo $resSemana['vendas_semana']; ?></h2>
                    </div>
                    <div>
                        <p>Vendas neste Mês</p>
                        <h2><?php echo $resMes['vendas_mes']; ?></h2>
                    </div>
                    <div>
                        <p>Vendas neste Semestre</p>
                        <h2><?php echo $resSemestre['vendas_semestre']; ?></h2>
                    </div>
                    <div>
                        <p>Vendas neste Ano</p>
                        <h2><?php echo $resAno['vendas_ano']; ?></h2>
                    </div>
                </div>
                <div class="linhaVendas"></div>
                <div class="abaDirVendas">
                    <div>
                        <p>Carro mais vendido nesta Semana</p>
                        <div><?php echo $maisSemana ? $maisSemana['marcaCarro'] . ' ' . $maisSemana['modeloCarro'] . '<p>' . $maisSemana['total_vendidos'] . ' Vendidos</p>' : '<p>Sem vendas</p>'; ?></div>
                    </div>
                    <div>
                        <p>Carro mais vendido neste Mês</p>
                        <div><?php echo $maisMes ? $maisMes['marcaCarro'] . ' ' . $maisMes['modeloCarro'] . '<p>' . $maisMes['total_vendidos'] . ' Vendidos</p>' : '<p>Sem vendas</p>'; ?></div>
                    </div>
                    <div>
                        <p>Carro mais vendido neste Semestre</p>
                        <div><?php echo $maisSemestre ? $maisSemestre['marcaCarro'] . ' ' . $maisSemestre['modeloCarro'] . '<p>' . $maisSemestre['total_vendidos'] . ' Vendidos</p>' : '<p>Sem vendas</p>'; ?></div>
                    </div>
                    <div>
                        <p>Carro mais vendido neste Ano</p>
                        <div><?php echo $maisAno ? $maisAno['marcaCarro'] . ' ' . $maisAno['modeloCarro'] . '<p>' . $maisAno['total_vendidos'] . ' Vendidos</p>' : '<p>Sem vendas</p>'; ?></div>
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
                            
                            $classeCarro = 'indefinido';
                                if($carro['statusCarro']=='vendido'){
                                    $classeStt = 'statusCarroV';
                                }
                                if($carro['statusCarro']=='disponivel'){
                                    $classeStt = 'statusCarroD';

                                }else{
                                    // $carro['statusCarro'] = $classeStt;
                                }
                            $editar = "indefinido";
                           echo "
                                    <div class='carroCard'>
                                        <p class=$classeStt> {$carro['statusCarro']}</p>
                                        <p><a href='pagVitrineCarro.php?cod={$carro['idCarro']}'><img src='../images/carrosVenda/{$carro['imgPrincipalCarro']}'></a></p>
                                        <p class='tituloCarro'><a href='pagVitrineCarro.php?cod={$carro['idCarro']}'> {$carro['marcaCarro']} {$carro['modeloCarro']}</a></p>
                                        <p class='anoCarro'><a href='pagVitrineCarro.php?cod={$carro['idCarro']}'> {$carro['anoCarro']}</a></p>
                                        <p class='valorCustoTxt'><a href='pagVitrineCarro.php?cod={$carro['idCarro']}'> Custo: </a></p>
                                        <p class='valorCusto'><a href='pagVitrineCarro.php?cod={$carro['idCarro']}'> R$ ".number_format($carro['valorCustoCarro'], 2, ',', '.')."</a></p>
                                        <p class='valorVendaTxt'><a href='pagVitrineCarro.php?cod={$carro['idCarro']}'>Valor de Venda:</a></p>
                                        <p class='valorVenda'><a href='pagVitrineCarro.php?cod={$carro['idCarro']}'> R$ ".number_format($carro['valorVendaCarro'], 2, ',', '.')."</a></p>

                                        <div class='dropdown'>
                                            <h1 class='dropdown-toggle' style='cursor:pointer;'>...</h1>
                                            <div class='dropdown-content'>
                                                <a href=editarForm.php?cod=$carro[idCarro]&editar=editarCarro>Editar Carro</a>
                                                <a href=editarForm.php?cod=$carro[idCarro]&editar=editarStatus>Editar Status</a>
                                                <a href='excluirCarro.php?cod={$carro['idCarro']}'>Excluir</a>
                                            </div>
                                        </div>
                                    </div>
                                    ";
                        }
                            
                        ?>
                    
                </div>
            </div>
        </div>



        <!-- <div id="comercial" class="tab-content">
            <div class="conteudo">
                <h2>Comercial</h2>
            </div>
        </div> -->





    </div>




