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
<?php require('../db/connect.php'); ?>
<div class="container">
        <div class="tabs">
            <button class="tab-button active" onclick="openTab(event, 'dashboard')">Solicitações</button>
            <button class="tab-button" onclick="openTab(event, 'carros')"> Em andamento </button>
            <button class="tab-button" onclick="openTab(event, 'comercial')"> Finalizadas </button>
        </div>
        <div id="dashboard" class="tab-content show">
            <div class="conteudo">
                <?php 
                    @session_start();


                    $solicitacoes = mysqli_query($con, "SELECT 
                                                            negociacao.idNegoc,
                                                            negociacao.dtaSolic,
                                                            cliente.nomeCliente,
                                                            cliente.emailCliente,
                                                            cliente.telefoneCliente,
                                                            carros.modeloCarro,
                                                            carros.anoCarro,
                                                            carros.marcaCarro
                                                        FROM 
                                                            negociacao
                                                        INNER JOIN 
                                                            cliente ON negociacao.idCliente = cliente.idCliente
                                                        INNER JOIN 
                                                            carros ON negociacao.idCarro = carros.idCarro");
                    
                            // echo "<div class=colunasDash><h2>id<h2>nome";
                            echo "<table class='tabelaNegociacoes'>";
                            echo "<thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nome</th>
                                        <th>Carro</th>
                                        <th>Email</th>
                                        <th>Telefone</th>
                                        
                                    </tr>
                                  </thead>";
                            echo "<tbody>";
                            
                            while($solicitacao = mysqli_fetch_array($solicitacoes)) {
                                echo "<tr>";
                                echo "<td>{$solicitacao['idNegoc']}</td>";
                                echo "<td>{$solicitacao['nomeCliente']}</td>";
                                echo "<td>{$solicitacao['marcaCarro']} {$solicitacao['modeloCarro']} {$solicitacao['anoCarro']}</td>";
                                echo "<td>{$solicitacao['emailCliente']}</td>";
                                echo "<td>{$solicitacao['telefoneCliente']}</td>";
                                echo "<td><input type=button value=\"Iniciar Negociação\"></td>";
                                echo "</tr>";
                            }
                            
                            echo "</tbody>";
                            echo "</table>";                             

                ?>
            </div>
        </div>





        <div id="carros" class="tab-content">
            <div class="conteudo">
                
            </div>
        </div>



        <div id="comercial" class="tab-content">
            <div class="conteudo">
                <h2>Comercial</h2>
            </div>
        </div>





    </div>




