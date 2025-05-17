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
@session_start();

// ✅ TRATAMENTO DO BOTÃO DE INICIAR NEGOCIAÇÃO
if (isset($_POST['iniciar']) && isset($_POST['idNegoc'])) {
    $idNegoc = $_POST['idNegoc'];
    $idVendedor = $_SESSION['idVendedor']; // Deve estar setado no login
    $dataAtual = date("Y-m-d");

    $query = "UPDATE negociacao 
              SET dtaInicioContato = '$dataAtual', 
                  idVendedor = '$idVendedor', 
                  statusNegoc = 'em andamento' 
              WHERE idNegoc = '$idNegoc'";

    if (mysqli_query($con, $query)) {
        echo "<script>
        alert('Negociação iniciada com sucesso!');
        window.location.href = window.location.pathname; // Redireciona sem repetir o POST
      </script>";
    } else {
        echo "<p>Erro ao iniciar negociação: " . mysqli_error($con) . "</p>";
    }
}
?>

<div class="container">
    <div class="tabs">
        <button class="tab-button active" onclick="openTab(event, 'dashboard')">Solicitações</button>
        <button class="tab-button" onclick="openTab(event, 'carros')">Em andamento</button>
        <button class="tab-button" onclick="openTab(event, 'comercial')">Finalizadas</button>
    </div>

    <div id="dashboard" class="tab-content show">
        <div class="conteudo">
            <?php 
                $solicitacoes = mysqli_query($con, "SELECT 
                                                        negociacao.idNegoc,
                                                        negociacao.dtaSolic,
                                                        negociacao.statusNegoc,
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

                echo "<table class='tabelaNegociacoes'>";
                echo "<thead>
                        <tr>
                            <th>ID</th>
                            <th>Nome</th>
                            <th>Carro</th>
                            <th>Email</th>
                            <th>Telefone</th>
                            <th>Ação</th>
                        </tr>
                      </thead>";
                echo "<tbody>";

                while($solicitacao = mysqli_fetch_array($solicitacoes)) {
                    echo "<tr>";
                    

                    
                    if ($solicitacao['statusNegoc'] === 'pendente') {
                            echo "<td>{$solicitacao['idNegoc']}</td>";
                            echo "<td>{$solicitacao['nomeCliente']}</td>";
                            echo "<td>{$solicitacao['marcaCarro']} {$solicitacao['modeloCarro']} {$solicitacao['anoCarro']}</td>";
                            echo "<td>{$solicitacao['emailCliente']}</td>";
                            echo "<td>{$solicitacao['telefoneCliente']}</td>";
                            echo "<td>";
                            echo "<form method='POST' class=btnInc>
                                    <input type='hidden' name='idNegoc' value='{$solicitacao['idNegoc']}'>
                                    <input type='submit' name='iniciar' value='Iniciar Negociação'>
                                </form>";
                            echo "</td>";
                    }

                    echo "</tr>";
                }

                echo "</tbody>";
                echo "</table>";                             
            ?>
        </div>
    </div>

    <div id="carros" class="tab-content">
        <div class="conteudo">
            <!-- Conteúdo da aba "Em andamento" -->

            <?php 
                $negociacoes = mysqli_query($con, "SELECT 
                                                        negociacao.idNegoc,
                                                        negociacao.dtaSolic,
                                                        negociacao.statusNegoc,
                                                        negociacao.dtaInicioContato,
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

                echo "<table class='tabelaNegociacoes'>";
                echo "<thead>
                        <tr>
                            <th>ID</th>
                            <th>Nome</th>
                            <th>Carro</th>
                            <th>Data Solicitação</th>
                            <th>Ínicio da Negociação</th>
                            <th>Valor Final</th>
                            <th></th>
                        </tr>
                      </thead>";
                echo "<tbody>";

                while($negociacao = mysqli_fetch_array($negociacoes)) {
                    echo "<tr>";
                    

                    
                    if ($negociacao['statusNegoc'] == 'em andamento') {
                            echo "<td>{$negociacao['idNegoc']}</td>";
                            echo "<td>{$negociacao['nomeCliente']}</td>";
                            echo "<td>{$negociacao['marcaCarro']} {$negociacao['modeloCarro']} {$negociacao['anoCarro']}</td>";
                            echo "<td>{$negociacao['dtaSolic']}</td>";
                            echo "<td>{$negociacao['dtaInicioContato']}</td>";
                            echo "<td><input type=text placeholder= 'Valor Vendido'</td>";
                            echo "<td>";
                            echo "<form method='POST' class=btnVendido>
                                    <input type='hidden' name='idNegoc' value='Vender'>
                                    <input type='submit' name='iniciar' value='Iniciar Negociação'>
                                </form>";
                            echo "</td>";
                            echo "<td>";
                            echo "<form method='POST' class=btnCancelado>
                                    <input type='hidden' name='idNegoc' value='Cancelar'>
                                    <input type='submit' name='iniciar' value='Iniciar Negociação'>
                                </form>";
                            echo "</td>";
                    }

                    echo "</tr>";
                }

                echo "</tbody>";
                echo "</table>";                             
            ?>

        </div>
    </div>

    <div id="comercial" class="tab-content">
        <div class="conteudo">
            <!-- Conteúdo da aba "Finalizadas" -->
        </div>
    </div>
</div> <!-- ✅ Fechamento correto da div.container -->
