<?php 

                        extract($_GET);

                        require('../db/connect.php');
                        @session_start();
                        $carros = mysqli_query($con, "Select * from `carros` WHERE `marcaCarro` = '$marca'");
                            echo "<div class=carrosCards>";                        
                            while($carro=mysqli_fetch_array($carros)){
                                
                            echo "<div class=carroCard>
                                            <a href=pagVitrineCarro.php?cod=$carro[idCarro]>
                                            <p ><img src=../images/carrosVenda/$carro[imgPrincipalCarro]></p>
                                            <p class=tituloCarro>$carro[marcaCarro] $carro[modeloCarro]</p>
                                            <p class=motorCarro>$carro[motorCarro]</p>
                                            <p class=anoCarro>$carro[anoCarro]</p>
                                            <p class=kmCarro>$carro[kmCarro] km</p>
                                            <p class=valorVenda>R$ "; echo number_format($carro['valorVendaCarro'], 2, ',', '.')."</p>
                                            <p class=btnVerDetalhes> Ver Detalhes <p/p
                                            </a>
                                 </div>";
                        }
                                echo "</div>"
                        ?>