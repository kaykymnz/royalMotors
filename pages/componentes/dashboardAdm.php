<!-- <div class="telaDashboardAdm">
    <div class="dashboardAdm">
        <div class="dashboardAbas">
            <p>DashBoard</p>
            <p>Comercial</p>
            <p>Estoque</p>
        </div>
    </div>

</div> -->






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
                <h2>Carros</h2>
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

